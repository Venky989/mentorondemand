package com.cognizant.searchservice.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.searchservice.model.MentorSkills;
import com.cognizant.searchservice.repository.MentorSkillsRepository;

@Service
public class SearchService {

	@Autowired
	MentorSkillsRepository mentorSkillsRepository;

	@Transactional
	public List<MentorSkills> getAll() {
		return mentorSkillsRepository.findAll();

	}

}
