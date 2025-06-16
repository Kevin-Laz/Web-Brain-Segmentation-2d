import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    path: '',
    loadComponent: () => import('./pages/upload/upload.component').then(m => m.UploadComponent)
  },
  {
    path: 'brain-mask',
    loadComponent: () => import('./pages/brain-mask/brain-mask.component').then(m => m.BrainMaskComponent)
  },
  {
    path: 'segment-120',
    loadComponent: () => import('./pages/segment-120/segment-120.component').then(m => m.Segment120Component)
  },
  {
    path: 'segment-32',
    loadComponent: () => import('./pages/segment-32/segment-32.component').then(m => m.Segment32Component)
  },
  {
    path: 'results',
    loadComponent: () => import('./pages/results/results.component').then(m => m.ResultsComponent)
  }
];
