import { Component } from '@angular/core';
import { HeaderComponent } from './core/components/header/header.component';
import { BodyComponent } from './core/components/body/body.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [HeaderComponent, BodyComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'frontend-glioma-segmentation';
}
