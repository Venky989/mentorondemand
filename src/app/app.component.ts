import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthServiceService } from './Services/auth-service.service';
import { StatusService } from './Services/status.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'MentorOnDemand';
  isLoggedIn: boolean = false;
  constructor(private router:Router,private authService:AuthServiceService,private statusService:StatusService) {  }
  ngOnInit() {
    this.loggedIn();
     this.router.navigate(['search']);

}




loggedIn(): boolean {
  if (this.authService.loggedIn) {
    this.isLoggedIn = true;
    // console.log("_________________");
    // console.log(this.isLoggedIn);
    return true
  }
  else {
    this.isLoggedIn = false;
    return false;
  }
}

}

