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

  // URLs base64 resultantes
  t1cUrl: string | null = null;
  t2fUrl: string | null = null;
  fusionedUrl: string | null = null;

  // Archivos subidos
  files: Record<Modalidad, File | null> = {
    t1c: null,
    t2f: null
  };

  loading = false;
  sliceIndex: number = 0;
  patientId: string = 'unknown';
  nuevoPaciente: boolean = false;
  isSwapping: boolean = false;



  constructor(private brainService: BrainSegmentationService) {}

  onFilesSelected(event: Event) {
    const input = event.target as HTMLInputElement;
    if (!input.files || input.files.length === 0) return;

    const incomingFiles = Array.from(input.files);

    for (const file of incomingFiles) {
      const lowerName = file.name.toLowerCase();
      if (lowerName.includes('t1') && !this.files.t1c) {
        this.files.t1c = file;
      } else if ((lowerName.includes('t2') || lowerName.includes('flair')) && !this.files.t2f) {
        this.files.t2f = file;
      } else if (!this.files.t1c) {
        this.files.t1c = file;
      } else if (!this.files.t2f) {
        this.files.t2f = file;
      }
    }

    this.clearResult();
  }


  swapModalities() {
    this.isSwapping = true;
    const tempFile = this.files.t1c;
    this.files.t1c = this.files.t2f;
    this.files.t2f = tempFile;
    setTimeout(() => {
      this.isSwapping = false;
    }, 600);
  }


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
    this.clearResult();
  }

  clearResult() {
    this.t1cUrl = null;
    this.t2fUrl = null;
    this.fusionedUrl = null;
  }

  removeFile(mod: Modalidad) {
    this.files[mod] = null;
    this.clearResult();
  }

  reset() {
    this.files = { t1c: null, t2f: null };
    this.t1cUrl = null;
    this.t2fUrl = null;
    this.fusionedUrl = null;
    this.loading = false;
    this.sliceIndex = 0;
    this.patientId = 'unknown';
    this.nuevoPaciente = false;
  }



  fusionar() {
    if (!this.files.t1c || !this.files.t2f) return;
    const finalPatientId = this.nuevoPaciente ? 'unknown' : this.patientId;


    this.loading = true;
    this.clearResult();

    this.brainService.fusionarGliomaFusionado(
      this.files.t1c,
      this.files.t2f,
      this.sliceIndex,
      finalPatientId
    ).subscribe({
      next: (res) => {
        this.t1cUrl = res.t1c_original;
        this.t2fUrl = res.t2f_original;
        this.fusionedUrl = res.segmentacion_fusionada;
        this.loading = false;
      },
      error: (err) => {
        console.error('Error al fusionar:', err);
        this.loading = false;
      }
    });
  }
}
