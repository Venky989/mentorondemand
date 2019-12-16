import { Component, OnInit } from '@angular/core';
import { StatusService } from '../Services/status.service';
import { MentorService } from '../Services/mentor.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-training-view',
  templateUrl: './training-view.component.html',
  styleUrls: ['./training-view.component.css']
})
export class TrainingViewComponent implements OnInit {

  trainees: any;
  empty:boolean = false;
  userApproved = false;
  error: String = '';
  size: number = 0;
  constructor(private mentorservice:MentorService,private approvalService:StatusService,private route:ActivatedRoute) { }
  
  //  status=this.route.snapshot.paramMap.get('status');
  isEmpty(){
    return this.empty;
  }



  ngOnInit() {
     this.redirecting();
  }
 
  

  redirecting() {

    this.approvalService.getAllInprogressTraineeList().subscribe(
      (data) => {
        console.log(data);
        this.trainees =data; 
        
        if(this.trainees==null)
        this.empty=false; 
        else
        this.empty=true;      
      

      }
    );
  }

  paynow(traineeId: number) {

    this.approvalService.payNow(traineeId).subscribe(
      (data) =>
      {
        this.redirecting();
        alert(" Request Accepted !! ");
      }
    );
  
  }

}
