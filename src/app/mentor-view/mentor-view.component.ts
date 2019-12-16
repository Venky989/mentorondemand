import { Component, OnInit } from '@angular/core';
import { Trainee } from '../Model/Trainee';
import { MentorService } from '../Services/mentor.service';
import { AuthServiceService } from '../Services/auth-service.service';
import { StatusService } from '../Services/status.service';
import { Training } from '../Model/Training';

@Component({
  selector: 'app-mentor-view',
  templateUrl: './mentor-view.component.html',
  styleUrls: ['./mentor-view.component.css']
})
export class MentorViewComponent implements OnInit {
  trainees: any;
  empty:boolean = false;
  userApproved = false;
  error: String = '';
  size: number = 0;
  constructor(private mentorservice:MentorService,private approvalService:StatusService) { }

  ngOnInit() {
    this.redirecting();
  }

  isEmpty(){
    console.log(this.size)
    if(this.size)
    return false;
    else
    return true;
  }

  redirecting() {
    this.approvalService.getAllInprogressMentorList().subscribe(
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

  accept(traineeId: number) {

    this.approvalService.giveApproval(traineeId).subscribe(
      (data) =>
      {
        this.redirecting();
        alert(" Request Accepted !! ");
      }
    );
  
  }

  completed(traineeId: number) {

    this.approvalService.completed(traineeId).subscribe(
      (data) =>
      {
        this.redirecting();
        alert(" Request Accepted !! ");
      }
    );
  
  }

  decline(traineeId: number) {

    this.approvalService.declineApproval(traineeId).subscribe(
      (data) =>
      {
        this.redirecting();
        alert(" Request Declined !! ");
      }
    );

  }

    //   this.approvalService.giveUnApproval(userName).subscribe(() => {
    //     this.error = '';
    //     this.redirecting();
    //   },
    //     error => {
    //       this.error = error.error.message;
    //       if (error.error.errors != null) {
    //         this.error = error.error.errors[0];
    //       }
    //     });

  // decline(userName: string) {

  //   this.approvalService.giveUnApproval(userName).subscribe(() => {
  //     this.error = '';
  //     this.redirecting();
  //   },
  //     error => {
  //       this.error = error.error.message;
  //       if (error.error.errors != null) {
  //         this.error = error.error.errors[0];
  //       }
  //     });

  // }

}
