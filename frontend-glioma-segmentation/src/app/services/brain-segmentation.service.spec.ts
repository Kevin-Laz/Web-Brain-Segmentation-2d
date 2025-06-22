import { TestBed } from '@angular/core/testing';

import { BrainSegmentationService } from './brain-segmentation.service';

describe('BrainSegmentationService', () => {
  let service: BrainSegmentationService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(BrainSegmentationService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
