import { Component } from '@angular/core';

@Component({
  selector: 'app-upload',
  imports: [],
  templateUrl: './upload.component.html',
  styleUrl: './upload.component.scss'
})
export class UploadComponent {

  selectedFile: File | null = null;
  previewUrl: string | null = null;
  procesamiento: boolean = false;

  onFileSelected(event:Event): void{
    const input = event.target as HTMLInputElement;
    if(!input.files || input.files.length ===0 ){
      return;
    }
    const file = input.files[0];
    this.selectedFile = file;
    const allowedImageTypes = ['image/png', 'image/jpeg'];
    if (allowedImageTypes.includes(file.type)) {
      const reader = new FileReader();
      reader.onload = () => {
        this.previewUrl = reader.result as string;
      };
      reader.readAsDataURL(file);
    } else {
      this.previewUrl = 'file-dcm.png';
    }

    console.log('Archivo seleccionado:', file.name);
  }

  onDragOver(event: DragEvent): void {
  event.preventDefault();
  event.stopPropagation();
}

  onDrop(event: DragEvent): void {
    event.preventDefault();
    event.stopPropagation();

    if (!event.dataTransfer || !event.dataTransfer.files || event.dataTransfer.files.length === 0) {
      return;
    }

    const file = event.dataTransfer.files[0];
    this.selectedFile = file;

    const allowedImageTypes = ['image/png', 'image/jpeg'];
    if (allowedImageTypes.includes(file.type)) {
      const reader = new FileReader();
      reader.onload = () => {
        this.previewUrl = reader.result as string;
      };
      reader.readAsDataURL(file);
    } else {
      this.previewUrl = 'file-dcm.png';
    }

    console.log('Archivo arrastrado:', file.name);
  }


  iniciarSegmentacion(): void {
    if (!this.selectedFile || this.procesamiento) return;

    const formData = new FormData();
    formData.append('file', this.selectedFile);

    fetch('http://localhost:8000/procesar-dcm', {
      method: 'POST',
      body: formData
    })
    .then(response => response.blob())
    .then(blob => {
      const reader = new FileReader();
      reader.onload = () => {
        this.previewUrl = reader.result as string;
      };
      reader.readAsDataURL(blob);
      this.procesamiento = true;
    })
    .catch(error => {
      console.error('Error al segmentar la imagen:', error);
    });
  }
}
