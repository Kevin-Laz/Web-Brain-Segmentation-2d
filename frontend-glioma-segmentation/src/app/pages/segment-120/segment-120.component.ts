import { Component, CUSTOM_ELEMENTS_SCHEMA, ElementRef, ViewChild } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { quantum } from 'ldrs';
import { BrainSegmentationService } from '../../services/brain-segmentation.service';

type Modalidad = 't1c' | 't2f';
quantum.register();

@Component({
  selector: 'app-segment-120',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './segment-120.component.html',
  styleUrl: './segment-120.component.scss',
  schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class Segment120Component {
  @ViewChild('inputRef_t1c') inputUpload!: ElementRef<HTMLInputElement>;

  // Archivos subidos
  files: Record<Modalidad, File | null> = {
    t1c: null,
    t2f: null
  };

  // Vista previa (por ahora dummy)
  previewUrls: Record<Modalidad, string | null> = {
    t1c: 'file-dcm.png',
    t2f: 'file-dcm.png'
  };

  fusionedUrl: string | null = null;
  loading = false;

  sliceIndex: number = 0;
  patientId: string = 'unknown';

  constructor(private brainService: BrainSegmentationService) {}

  // Cargar archivos desde input
  onFilesSelected(event: Event) {
    const input = event.target as HTMLInputElement;
    if (!input.files || input.files.length !== 2) return;

    const sorted = Array.from(input.files).sort((a, b) => a.name.localeCompare(b.name));
    this.files.t1c = sorted[0];
    this.files.t2f = sorted[1];
    this.previewUrls.t1c = 'file-dcm.png';
    this.previewUrls.t2f = 'file-dcm.png';
    this.fusionedUrl = null;
  }

  // Intercambiar los archivos entre T1c y T2-FLAIR
  swapModalities() {
    const tempFile = this.files.t1c;
    this.files.t1c = this.files.t2f;
    this.files.t2f = tempFile;

    const tempPreview = this.previewUrls.t1c;
    this.previewUrls.t1c = this.previewUrls.t2f;
    this.previewUrls.t2f = tempPreview;
  }

  // Drag and drop
  onDrop(event: DragEvent, _mod: Modalidad) {
    event.preventDefault();
    event.stopPropagation();
    const files = event.dataTransfer?.files;
    if (files && files.length === 2) {
      this.assignFiles(files);
    }
  }

  onDragOver(event: DragEvent) {
    event.preventDefault();
    event.stopPropagation();
  }

  triggerInput() {
    this.inputUpload.nativeElement.click();
  }

  assignFiles(fileList: FileList | null) {
    if (!fileList || fileList.length !== 2) return;

    const sortedFiles = Array.from(fileList).sort((a, b) => a.name.localeCompare(b.name));
    this.files.t1c = sortedFiles[0];
    this.files.t2f = sortedFiles[1];

    this.previewUrls.t1c = 'file-dcm.png';
    this.previewUrls.t2f = 'file-dcm.png';
    this.fusionedUrl = null;
  }

  fusionar() {
    if (!this.files.t1c || !this.files.t2f) return;

    this.loading = true;
    this.fusionedUrl = null;

    this.brainService.fusionarGliomaFusionado(
      this.files.t1c,
      this.files.t2f,
      this.sliceIndex,
      this.patientId
    ).subscribe({
      next: (blob: Blob) => {
        const reader = new FileReader();
        reader.onload = () => {
          this.fusionedUrl = reader.result as string;
          this.loading = false;
        };
        reader.readAsDataURL(blob);
      },
      error: (err) => {
        console.error('Error al fusionar:', err);
        this.loading = false;
      }
    });
  }
}
