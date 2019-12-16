package com.cognizant.trainingservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.trainingservice.model.Mentor;
import com.cognizant.trainingservice.model.Technology;

@Repository
public interface TechnologyRepository extends JpaRepository<Technology, String>{

	@Query("FROM Technology s WHERE s.skillName=?1")
	public Technology findBySkillName(String name);
	
	@Query("FROM Technology t WHERE t.id=?1")
	public Technology findByTechnologyId(Long id);
	
	
}
