import { Component, OnInit, Input } from '@angular/core';
import { mentorSkills } from '../Model/MentorSkills';
import { Technology } from '../Model/Technology';
import { TechnologyService } from '../Services/technology.service';
import { MentorService } from '../Services/mentor.service';
import { AuthServiceService } from '../Services/auth-service.service';

@Component({
  selector: 'app-skill-info',
  templateUrl: './skill-info.component.html',
  styleUrls: ['./skill-info.component.css']
})
export class SkillInfoComponent implements OnInit {

  @Input() mentorList:mentorSkills[]
  error: string = '';
  skill:Technology[];
  constructor(private techService:TechnologyService,private mentorService:MentorService,private authService:AuthServiceService) { }

  ngOnInit() {
    this.techService.getAllTechnologies().subscribe((data)=>{
      console.log(data);
      this.skill=data;
          })
    this.techService.searchAll().subscribe((data)=>{
      this.mentorList=data;
    })
    console.log(this.mentorList);
  }

  book(mentorId:number,traineeId:number,techId:number){
    console.log(mentorId,traineeId,techId)
    this.mentorService.book(mentorId,traineeId,techId).subscribe((data)=>{
      alert('Booked successfully')
    }, error => {
      alert('Booking Already Exists');
      this.error = error.error.message;
      /*for global exception handler*/
      if (error.error.errors != null) {
      
        this.error = error.error.errors;
      }
    })
  }


}
