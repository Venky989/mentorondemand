import { Injectable } from '@angular/core';
import { mentor } from '../Model/Mentor';
import { HttpClient } from '@angular/common/http'
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { mentorSkills } from '../Model/MentorSkills';
import { Trainee } from '../Model/Trainee';

@Injectable({
  providedIn: 'root'
})
export class SignUpServiceService {

  // userRole: string;
  // userName: string;
  constructor(private http: HttpClient) { }

  addMentor(mentorList: mentor): Observable<mentor> {
    console.log(mentorList);
    return this.http.post<mentor>(environment.authUrl + "/signup/mentor", mentorList);
    //return null;
  }

  addTechnologies(mentorSkills:mentorSkills,userID: string,skillName:string): Observable<mentorSkills> {
    console.log(mentorSkills);
    console.log(userID);
    console.log(skillName);
    return this.http.post<mentorSkills>(environment.authUrl + "/signup/mentor/"+userID+"/"+skillName,mentorSkills);
    //return null;
  }

  addTrainee(traineeList: Trainee): Observable<Trainee> {
    console.log(traineeList);
    return this.http.post<mentor>(environment.authUrl + "/signup/trainee", traineeList);
    //return null;
  }


}