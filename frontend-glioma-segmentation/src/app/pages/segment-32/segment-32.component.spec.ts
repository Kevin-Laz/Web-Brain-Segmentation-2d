import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Segment32Component } from './segment-32.component';

describe('Segment32Component', () => {
  let component: Segment32Component;
  let fixture: ComponentFixture<Segment32Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Segment32Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Segment32Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
