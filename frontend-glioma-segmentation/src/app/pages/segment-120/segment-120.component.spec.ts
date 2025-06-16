import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Segment120Component } from './segment-120.component';

describe('Segment120Component', () => {
  let component: Segment120Component;
  let fixture: ComponentFixture<Segment120Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Segment120Component]
    })
    .compileComponents();

    fixture = TestBed.createComponent(Segment120Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
