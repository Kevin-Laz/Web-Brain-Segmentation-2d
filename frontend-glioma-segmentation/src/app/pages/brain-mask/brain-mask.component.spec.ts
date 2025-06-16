import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BrainMaskComponent } from './brain-mask.component';

describe('BrainMaskComponent', () => {
  let component: BrainMaskComponent;
  let fixture: ComponentFixture<BrainMaskComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [BrainMaskComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(BrainMaskComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
