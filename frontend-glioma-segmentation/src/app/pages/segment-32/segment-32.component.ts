import { Component, CUSTOM_ELEMENTS_SCHEMA, ElementRef, ViewChild } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { DomSanitizer } from '@angular/platform-browser';
import { BrainSegmentationService } from '../../services/brain-segmentation.service';
import { NgStyle } from '@angular/common';

@Component({
  selector: 'app-segment-32',
  standalone: true,
  imports: [FormsModule, NgStyle],
  templateUrl: './segment-32.component.html',
  styleUrl: './segment-32.component.scss',
  schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class Segment32Component {
  @ViewChild('inputRef') inputUpload!: ElementRef<HTMLInputElement>;

  file: File | null = null;
  filename = '';
  preprocessedUrl: string | null = null;
  croppedUrl: string | null = null;
  segmentedUrl: string | null = null;

  sliceIndex: number = 0;
  nuevoPaciente: boolean = true;
  patientId: string = 'unknown';

  loading = false;
  modalidad: 't1c' | 't2f' = 't1c';

  selectedX: number | null = null;
  selectedY: number | null = null;

  constructor(
    private brainService: BrainSegmentationService,
    private sanitizer: DomSanitizer
  ) {}

  triggerInput() {
    this.inputUpload.nativeElement.click();
  }

  onFileSelected(event: Event) {
    const input = event.target as HTMLInputElement;
    if (input.files && input.files.length > 0) {
      this.file = input.files[0];
      this.filename = this.file.name;

      // Obtener patientId del nombre si no es nuevo paciente
      this.patientId = this.filename.split('.')[0] || 'unknown';

      this.preprocessedUrl = null;
      this.croppedUrl = null;
      this.segmentedUrl = null;
    }
  }

  procesar() {
    if (!this.file) return;

    this.loading = true;
    this.brainService.procesarDICOM(this.file, this.modalidad).subscribe({
      next: (blob) => {
        const url = URL.createObjectURL(blob);
        this.preprocessedUrl = url;
        this.loading = false;
      },
      error: (err) => {
        console.error('Error al procesar:', err);
        this.loading = false;
      }
    });
  }

  onImageClick(event: MouseEvent) {
    if (!this.filename) return;

    const target = event.target as HTMLImageElement;
    const rect = target.getBoundingClientRect();

    const clickX = event.clientX - rect.left;
    const clickY = event.clientY - rect.top;

    // Mostrar cuadro visual (sobre imagen en pantalla escalada)
    this.selectedX = clickX;
    this.selectedY = clickY;

    // Calcular coordenadas reales para recorte
    const scaleX = 120 / target.width;
    const scaleY = 120 / target.height;

    const centerX = Math.floor(clickX * scaleX);
    const centerY = Math.floor(clickY * scaleY);

    this.recortarYSegmentar(centerX, centerY);
}


  recortarYSegmentar(centerX: number, centerY: number) {
    if (!this.file) return;

    this.loading = true;

    this.brainService.recortarRegion32(this.filename, centerX, centerY).subscribe({
      next: (blob) => {
        const croppedFile = new File([blob], 'region32.png', { type: 'image/png' });
        const url = URL.createObjectURL(blob);
        this.croppedUrl = url;

        const finalPatientId = this.nuevoPaciente ? 'unknown' : this.patientId;

        this.brainService.segmentarRegion32ConInfo(croppedFile, this.modalidad, this.sliceIndex, finalPatientId).subscribe({
          next: (segBlob) => {
            const segUrl = URL.createObjectURL(segBlob);
            this.segmentedUrl = segUrl;
            this.loading = false;
          },
          error: (err) => {
            console.error('Error en segmentación:', err);
            this.loading = false;
          }
        });
      },
      error: (err) => {
        console.error('Error al recortar:', err);
        this.loading = false;
      }
    });
  }

  reset() {
    this.file = null;
    this.filename = '';
    this.preprocessedUrl = null;
    this.croppedUrl = null;
    this.segmentedUrl = null;
    this.loading = false;
    this.sliceIndex = 0;
    this.patientId = 'unknown';
    this.nuevoPaciente = true;
  }
}
