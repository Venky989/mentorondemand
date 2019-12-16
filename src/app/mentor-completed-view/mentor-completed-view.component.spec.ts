import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MentorCompletedViewComponent } from './mentor-completed-view.component';

describe('MentorCompletedViewComponent', () => {
  let component: MentorCompletedViewComponent;
  let fixture: ComponentFixture<MentorCompletedViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MentorCompletedViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MentorCompletedViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
