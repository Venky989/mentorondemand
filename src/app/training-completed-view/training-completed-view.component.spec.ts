import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TrainingCompletedViewComponent } from './training-completed-view.component';

describe('TrainingCompletedViewComponent', () => {
  let component: TrainingCompletedViewComponent;
  let fixture: ComponentFixture<TrainingCompletedViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TrainingCompletedViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TrainingCompletedViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
