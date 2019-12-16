package com.cognizant.authenticationservice.service;

import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.authenticationservice.controller.UserController;
import com.cognizant.authenticationservice.exception.SkillAlreadyAddedException;
import com.cognizant.authenticationservice.exception.UserAlreadyExistsException;
import com.cognizant.authenticationservice.model.Mentor;
import com.cognizant.authenticationservice.model.MentorSkills;
import com.cognizant.authenticationservice.model.Technology;
import com.cognizant.authenticationservice.repository.MentorRepository;
import com.cognizant.authenticationservice.repository.MentorSkillsRepository;
import com.cognizant.authenticationservice.repository.TechnologyRepository;

@Service
public class UserService {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	TechnologyRepository technologyRepository;
	@Autowired
	MentorRepository mentorRepository;
	@Autowired
	MentorSkillsRepository mentorSkillsRepository;
	
	public void addSkills(MentorSkills mentorSkills,String mentorName,String skillName) throws UserAlreadyExistsException, SkillAlreadyAddedException {
		Technology skills=technologyRepository.findBySkillName(skillName);
		Mentor mentor=mentorRepository.findByUserID(mentorName);
		Long mentorId=mentorRepository.findByUserID(mentorName).getId();
		Long skillId=technologyRepository.findBySkillName(skillName).getId();
		MentorSkills check = mentorSkillsRepository.isSkillAlreadyAdded(mentorId, skillId);
		if(check == null) {
		mentorSkills.setMentorId(mentor);
		mentorSkills.setSkillId(skills);
		Set<MentorSkills> list=mentor.getMentorSkillsList();
		LOGGER.info("*Before adding skills "+list);
		list.add(mentorSkills);
		LOGGER.info("*After adding skills "+list);
		mentor.setMentorSkillList(list);
		 mentorRepository.save(mentor);
		 mentorSkillsRepository.save(mentorSkills);

		}
		else {
			throw new SkillAlreadyAddedException();
		}

}}
