import { Component, OnInit } from '@angular/core';
import { mentor } from '../Model/Mentor';
import { Technology } from '../Model/Technology';
import { mentorSkills } from '../Model/MentorSkills';
import { TechnologyService } from '../Services/technology.service';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {

  //skill:Technology[];
  mentorSkills:mentorSkills[];
  nameSearch:string;
  filteredlist:Technology[];
  mentorList:mentorSkills[];
  constructor(private techService:TechnologyService) { }

  ngOnInit() {
    
    this.techService.searchAll().subscribe((data)=>{
      this.mentorSkills=data;
      this.mentorList=data;
    })
  }
  search(){
    console.log(this.nameSearch)
    if(this.nameSearch=="")
    this.ngOnInit();
      this.mentorList = this.mentorSkills.filter(l => (l.skillId.skillName.toLowerCase().match(this.nameSearch.toLocaleLowerCase())))
    }
    

}
