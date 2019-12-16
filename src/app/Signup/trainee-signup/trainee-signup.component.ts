import { Component, OnInit } from '@angular/core';
import { FormControl, Validators, FormGroup, FormBuilder } from '@angular/forms';
import { Trainee } from 'src/app/Model/Trainee';
import { SignUpServiceService } from 'src/app/Services/sign-up-service.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-trainee-signup',
  templateUrl: './trainee-signup.component.html',
  styleUrls: ['./trainee-signup.component.css']
})
export class TraineeSignupComponent implements OnInit {

  signUpForm: FormGroup;
  trainee:Trainee;
  error: string = '';

  constructor(private formBuilder: FormBuilder, private signService: SignUpServiceService,private router:Router) { }

  ngOnInit() {
    this.signUpForm = this.formBuilder.group({
      userID: ['', [
        Validators.required,
        this.isUsernameTaken
      ]],
      firstName: ['', [
        Validators.required
      ]],
      lastName: ['', [
        Validators.required
      ]],
      contactNo: ['', [
        Validators.required
      ]],
      email: ['', [
        Validators.required
      ]],
      password: ['', [
        Validators.required
      ]],
      confirmPassword: ['', [
        Validators.required,
        this.matchConfirmPassword.bind(this)
      ]]
    })
  }
  get userID() {
    return this.signUpForm.get('userID');
  }
  get firstName() {
    return this.signUpForm.get('firstName');
  }
  get lastName() {
    return this.signUpForm.get('lastName');
  }
  get contactNo() {
    return this.signUpForm.get('contactNo');
  }
  get email() {
    return this.signUpForm.get('email');
  }
  get password() {
    return this.signUpForm.get('password');
  }
  get confirmPassword() {
    return this.signUpForm.get('confirmPassword');
  }

  matchConfirmPassword(formControl: FormControl): { [s: string]: boolean } {
    if (this.signUpForm) {
      if (formControl.value && formControl.value.length > 0 && formControl.value !== this.signUpForm.get('password').value) {
        return { 'nomatch': true };
      }
    }
    return null;
  }
  isUsernameTaken(formControl: FormControl): { [s: string]: boolean } {
    if (formControl.value === 'admin') {
      return { 'userNameTaken': true };
    } else {
      return null;
    }
  }
  submit(traineeDetails:Trainee){
    console.log(traineeDetails);
    this.signService.addTrainee(traineeDetails).subscribe((data)=>{
      alert('signed up successfully!!!');
      this.router.navigate(['login']);
    }, error => {
      this.error = error.error.message;
      /*for global exception handler*/
      if (error.error.errors != null) {
        this.error = error.error.errors;
      }
    }
    );
  }



  
}
