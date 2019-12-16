import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { mentorSkills } from '../Model/MentorSkills';
import { Validators, FormGroup, FormBuilder } from '@angular/forms';
import { SignUpServiceService } from '../Services/sign-up-service.service';

@Component({
  selector: 'app-skill-form',
  templateUrl: './skill-form.component.html',
  styleUrls: ['./skill-form.component.css']
})
export class SkillFormComponent implements OnInit {
  error: string = '';
  constructor(private route:ActivatedRoute,private formBuilder: FormBuilder,private signupService:SignUpServiceService) { }

  mentorskills:mentorSkills;
  editForm:FormGroup;
  userID:string;
  skillName:string;
  ngOnInit() {
    this.userID = this.route.snapshot.paramMap.get('userID');
    console.log(this.userID);
     this.skillName=this.route.snapshot.paramMap.get('skillName');
    console.log(this.skillName);


    this.editForm = this.formBuilder.group({
      rating: ['', [
        Validators.required,
      ]],
      experience: ['', [
        Validators.required
      ]],
      trainings: ['', [
        Validators.required
      ]],
      facilities: ['', [
        Validators.required
      ]],
    })
  }
  get rating() {
    return this.editForm.get('rating');
  }
  get experience() {
    return this.editForm.get('experience');
  }
  get training() {
    return this.editForm.get('training');
  }
  get facilities() {
    return this.editForm.get('facilities');
  }
  

  submit(mentorSkill:mentorSkills){
    console.log(mentorSkill);
    this.signupService.addTechnologies(mentorSkill,this.userID,this.skillName).subscribe(
      (data) =>{
        alert('Technology Added successfully');
      },error => {
        alert('Technology Already Added');
        this.error = error.error.message;
        /*for global exception handler*/
        if (error.error.errors != null) {
          this.error = error.error.errors;
        }
      }
    );

  }
}
