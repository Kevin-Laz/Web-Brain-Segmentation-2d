import { Component, CUSTOM_ELEMENTS_SCHEMA, ElementRef, QueryList, ViewChild, ViewChildren } from '@angular/core';
import { BrainSegmentationService } from '../../services/brain-segmentation.service';
import { FormsModule } from '@angular/forms';
import { quantum } from 'ldrs';

type Modalidad = 't1c' | 't2f';
quantum.register();

@Component({
  selector: 'app-upload',
  imports: [FormsModule],
  templateUrl: './upload.component.html',
  styleUrl: './upload.component.scss',
  schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class UploadComponent {
  sliceIndex: number = 0;
  nuevoPaciente: boolean = true;
  private idActual: string = "unknown";
  modalities: ('t1c' | 't2f')[] = ['t1c','t2f'];
  files: Record<Modalidad, File|null> = { t1c: null, t2f: null };
  @ViewChild('inputRef_t1c') inputT1c!: ElementRef<HTMLInputElement>;
  @ViewChild('inputRef_t2f') inputT2f!: ElementRef<HTMLInputElement>;

  labelImg: Record<Modalidad, string> = { t1c: 'Original', t2f: 'Original' };
  previewUrls: Record<Modalidad, string|null>   = { t1c: null, t2f: null };
  processedUrls: Record<Modalidad, string|null> = { t1c: null, t2f: null };
  segmentedUrls: Record<Modalidad, string|null> = { t1c: null, t2f: null };

  // flags de carga
  processing: Record<Modalidad, boolean> = { t1c: false, t2f: false };
  segmenting: Record<Modalidad, boolean> = { t1c: false, t2f: false };

  constructor(private brainService: BrainSegmentationService) {}


  triggerFileInput(mod: Modalidad) {
    if (mod === 't1c') this.inputT1c.nativeElement.click();
    if (mod === 't2f') this.inputT2f.nativeElement.click();
  }

  onFileSelected(event: Event, mod: Modalidad): void {
    const input = event.target as HTMLInputElement;
    if (!input.files?.length) return;
    this.setFile(input.files[0], mod);
  }

  onDragOver(event: DragEvent): void {
    event.preventDefault(); event.stopPropagation();
  }

  onDrop(event: DragEvent, mod: Modalidad): void {
    event.preventDefault(); event.stopPropagation();
    if (!event.dataTransfer?.files?.length) return;
    this.setFile(event.dataTransfer.files[0], mod);
  }

  private setFile(file: File, mod: Modalidad) {
    this.files[mod] = file;
    this.labelImg[mod] = 'Original';
    // preview genérico
    const allowed = ['image/png','image/jpeg'];
    if (allowed.includes(file.type)) {
      const reader = new FileReader();
      reader.onload = () => this.previewUrls[mod] = reader.result as string;
      reader.readAsDataURL(file);
    } else {
      this.previewUrls[mod] = 'file-dcm.png';
    }
    // limpiar previos
    this.processedUrls[mod] = null;
    this.segmentedUrls[mod] = null;
  }

  preprocess(mod: Modalidad) {
    const file = this.files[mod];
    if (!file || this.processing[mod]) return;

    this.processing[mod] = true;
    this.brainService.procesarDICOM(file, mod).subscribe({
      next: blob => {
        const reader = new FileReader();
        reader.onload = () => {
          this.processedUrls[mod] = reader.result as string;
          this.processing[mod] = false;
        };
        this.labelImg[mod] = 'Preprocesado';
        reader.readAsDataURL(blob);
      },
      error: err => {
        console.error('Error procesar-dcm', err);
        this.processing[mod] = false;
      }
    });
  }

  segment(mod: Modalidad) {
    const file = this.files[mod];
    if (!file || this.segmenting[mod]) return;

    if (!this.processedUrls[mod]) {
      this.blinkPreprocessButton(mod);
      return;
    }

    if (this.nuevoPaciente) {
      this.idActual = `id_${Date.now()}_${Math.floor(Math.random() * 1000)}`;
    }

    this.segmenting[mod] = true;
    this.brainService.segmentarGlioma(file, mod, this.sliceIndex, this.idActual).subscribe({
      next: blob => {
        const reader = new FileReader();
        reader.onload = () => {
          this.segmentedUrls[mod] = reader.result as string;
          this.segmenting[mod] = false;
        };
        reader.readAsDataURL(blob);
      },
      error: err => {
        console.error('Error segmentar-glioma', err);
        this.segmenting[mod] = false;
      }
    });
  }

  removeFile(mod: Modalidad) {
    this.files[mod] = null;
    this.previewUrls[mod] = null;
    this.processedUrls[mod] = null;
    this.segmentedUrls[mod] = null;
  }

  blinkPreprocessButton(mod: Modalidad) {
    const btn = document.getElementById(`preprocess-btn-${mod}`);
    if (btn) {
      btn.classList.add('blink-border');
      setTimeout(() => btn.classList.remove('blink-border'), 2000);
    }
  }


}
