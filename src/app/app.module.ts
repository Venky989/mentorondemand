import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';
import { MentorSignupComponent } from './Signup/mentor-signup/mentor-signup.component';
import { TraineeSignupComponent } from './Signup/trainee-signup/trainee-signup.component';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { LoginComponent } from './login/login/login.component';
import { AddSkillsComponent } from './add-skills/add-skills.component';
import { SkillFormComponent } from './skill-form/skill-form.component';
import { PageComponent } from './page/page.component';
import { SearchComponent } from './search/search.component';
import { SkillInfoComponent } from './skill-info/skill-info.component';
import { MentorViewComponent } from './mentor-view/mentor-view.component';
import { TrainingViewComponent } from './training-view/training-view.component';
import { TrainingCompletedViewComponent } from './training-completed-view/training-completed-view.component';
import { MentorCompletedViewComponent } from './mentor-completed-view/mentor-completed-view.component';
import { MentorHomeComponent } from './mentor-home/mentor-home.component';

const appRoutes: Routes = [ 

];
@NgModule({
  declarations: [
    AppComponent,
    MentorSignupComponent,
    TraineeSignupComponent,
    HomeComponent,
    LoginComponent,
    AddSkillsComponent,
    SkillFormComponent,
    PageComponent,
    SearchComponent,
    SkillInfoComponent,
    MentorViewComponent,
    TrainingViewComponent,
    TrainingCompletedViewComponent,
    MentorCompletedViewComponent,
    MentorHomeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    ReactiveFormsModule,
    RouterModule.forRoot(
      appRoutes,
      { enableTracing: true } 
    ),
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
