package com.cognizant.authenticationservice.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.authenticationservice.exception.SkillAlreadyAddedException;
import com.cognizant.authenticationservice.exception.UserAlreadyExistsException;
import com.cognizant.authenticationservice.model.Mentor;
import com.cognizant.authenticationservice.model.MentorSkills;
import com.cognizant.authenticationservice.model.Trainee;
import com.cognizant.authenticationservice.repository.MentorRepository;
import com.cognizant.authenticationservice.repository.MentorSkillsRepository;
import com.cognizant.authenticationservice.security.AppUserDetailsService;
import com.cognizant.authenticationservice.service.UserService;

@RestController
@RequestMapping("/signup")
public class UserController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);

	@Autowired
	AppUserDetailsService appUserDetailsService;

	@Autowired
	MentorRepository mentorRepository;

	@Autowired
	MentorSkillsRepository mentorSkillsRepository;

	@Autowired
	UserService userService;

	@PostMapping("/mentor")
	public String signupMentor(@RequestBody Mentor mentor) throws UserAlreadyExistsException {
		return appUserDetailsService.signupMentor(mentor);

	}

	@PostMapping("/trainee")
	public String signupTrainee(@RequestBody Trainee trainee) throws UserAlreadyExistsException {
		return appUserDetailsService.signupTrainee(trainee);

	}

	@PostMapping("/mentor/{name}/{skillName}")
	public void addSkills(@RequestBody MentorSkills mentorSkills, @PathVariable("name") String name,
			@PathVariable("skillName") String skillName) throws UserAlreadyExistsException, SkillAlreadyAddedException {
		System.err.println("entereddddddddddd");
		System.err.println("mentorskills" + mentorSkills);

		System.err.println("name" + name);

		System.err.println("skillname" + skillName);

		userService.addSkills(mentorSkills, name, skillName);

	}

	@GetMapping("/mentors")
	public List<Mentor> getMentors() {
		return mentorRepository.findAll();
	}

	@GetMapping("/mentorskill")
	public List<MentorSkills> getMentorSkills() {
		return mentorSkillsRepository.findAll();
	}
}
