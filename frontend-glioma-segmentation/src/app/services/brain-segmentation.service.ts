import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BrainSegmentationService {

  private apiUrl = 'http://localhost:8000';

  constructor(private http: HttpClient) { }

  procesarDICOM(file: File, modalidad: string = 't1c'): Observable<Blob> {
    const formData = new FormData();
    formData.append('file', file);
    const params = new HttpParams().set('modalidad', modalidad);
    return this.http.post(`${this.apiUrl}/procesar-dcm`, formData, { params, responseType: 'blob' });
  }

  segmentarGlioma(file: File, modalidad: string, slice: number, patientId: string): Observable<Blob> {
    const formData = new FormData();
    formData.append('file', file);

    const params = new HttpParams()
      .set('modalidad', modalidad)
      .set('slice_index', slice.toString())
      .set('patient_id', patientId);

    return this.http.post(`${this.apiUrl}/segmentar-glioma`, formData, {
      params,
      responseType: 'blob'
    });
  }

  fusionarGliomaFusionado(
    fileT1c: File,
    fileT2f: File,
    slice: number = 0,
    patientId: string = 'unknown'
  ): Observable<{
    t1c_original: string;
    t2f_original: string;
    segmentacion_fusionada: string;
  }> {
    const formData = new FormData();
    formData.append('file_t1c', fileT1c);
    formData.append('file_t2f', fileT2f);
    formData.append('slice_index', slice.toString());
    formData.append('patient_id', patientId);

    return this.http.post<{
      t1c_original: string;
      t2f_original: string;
      segmentacion_fusionada: string;
    }>(`${this.apiUrl}/fusionar-glioma`, formData);
  }

recortarRegion32(filename: string, centerX: number, centerY: number): Observable<Blob> {
  const formData = new FormData();
  formData.append('filename', filename);
  formData.append('center_x', centerX.toString());
  formData.append('center_y', centerY.toString());

  return this.http.post(`${this.apiUrl}/recortar-region-32x32`, formData, { responseType: 'blob' });
}

segmentarRegion32(file: File, modalidad: string): Observable<Blob> {
  const formData = new FormData();
  formData.append('file', file);
  formData.append('modalidad', modalidad);

  return this.http.post(`${this.apiUrl}/segmentar-32x32`, formData, { responseType: 'blob' });
}

segmentarRegion32ConInfo(
    file: File,
    modalidad: string,
    sliceIndex: number,
    patientId: string
  ): Observable<Blob> {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('modalidad', modalidad);
    formData.append('slice_index', sliceIndex.toString());
    formData.append('patient_id', patientId);

    return this.http.post(`${this.apiUrl}/segmentar-32x32`, formData, { responseType: 'blob' });
  }

}
