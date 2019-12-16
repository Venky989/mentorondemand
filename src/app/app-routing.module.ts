import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MentorSignupComponent } from './Signup/mentor-signup/mentor-signup.component';
import { TraineeSignupComponent } from './Signup/trainee-signup/trainee-signup.component';
import { PageComponent } from './page/page.component';
import { LoginComponent } from './login/login/login.component';
import { AddSkillsComponent } from './add-skills/add-skills.component';
import { SkillFormComponent } from './skill-form/skill-form.component';
import { SearchComponent } from './search/search.component';
import { MentorViewComponent } from './mentor-view/mentor-view.component';
import { TrainingViewComponent } from './training-view/training-view.component';
import { TrainingCompletedViewComponent } from './training-completed-view/training-completed-view.component';
import { MentorCompletedViewComponent } from './mentor-completed-view/mentor-completed-view.component';
import { MentorHomeComponent } from './mentor-home/mentor-home.component';


const routes: Routes = [
  
  { path: 'mentorSignup', component: MentorSignupComponent},
  // { path: 'mentor', component: MentorViewComponent},
  { path: 'traineeSignup', component: TraineeSignupComponent},
  { path: 'search', component: SearchComponent},
  { path: 'page', component: PageComponent},
  {path:'login',component:LoginComponent},
  {path:'addSkill/:userID',component:AddSkillsComponent},
  {path:'skillForm/:skillName/:userID',component:SkillFormComponent},
  {path:'training',component:TrainingViewComponent},
  {path:'trainingCompleted',component:TrainingCompletedViewComponent},
  {path:'mentorInprogress',component:MentorViewComponent},
  {path:'mentortrainingCompleted',component:MentorCompletedViewComponent},
  {path:'mentorHome',component:MentorHomeComponent}


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
