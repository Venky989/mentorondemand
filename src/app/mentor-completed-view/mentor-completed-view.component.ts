import { Component, OnInit } from '@angular/core';
import { MentorService } from '../Services/mentor.service';
import { StatusService } from '../Services/status.service';

@Component({
  selector: 'app-mentor-completed-view',
  templateUrl: './mentor-completed-view.component.html',
  styleUrls: ['./mentor-completed-view.component.css']
})
export class MentorCompletedViewComponent implements OnInit {

  constructor(private mentorservice:MentorService,private approvalService:StatusService) { }

  trainees: any;
  empty:boolean = false;
  userApproved = false;
  error: String = '';
  size: number = 0;

  ngOnInit() {
  this.redirecting();
  
  }


  isEmpty(){
    if(this.size==0)
    return true;
    else
    return false;
  }

  redirecting() {
    this.approvalService.getAllCompletedMentorList().subscribe(
      (data) => {
        console.log(data);
        this.trainees =data;  
        this.size=this.trainees.size;
        // if(this.trainees.)
        // this.empty=false; 
        // else
        // this.empty=true;    

      }
    );
  }

}
