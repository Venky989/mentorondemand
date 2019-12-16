import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Training } from '../Model/Training';
import { AuthServiceService } from './auth-service.service';

@Injectable({
  providedIn: 'root'
})
export class MentorService {

  username:string;
  token:any;
  constructor(private http: HttpClient) { }

  book(mentorId:number,traineeId:number,techId:number){
    console.log(mentorId+" "+traineeId+" "+techId);
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', 'Bearer ' + this.token);
    console.log(mentorId+" "+traineeId+" "+techId);
    return this.http.post(environment.trainingUrl + "/proposal/"+mentorId+"/"+traineeId+"/"+techId,{ headers });
  }



}
