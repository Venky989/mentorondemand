package com.cognizant.authenticationservice.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.authenticationservice.model.MentorSkills;
import com.cognizant.authenticationservice.model.Technology;

@Repository
public interface MentorSkillsRepository extends JpaRepository<MentorSkills, Long> {
	
	@Query("FROM MentorSkills ms WHERE ms.mentorId=?1")
	public List<MentorSkills> getBySkillID(Long id);
	
	@Query(value="select * from mentor_skill m where m.ms_me_id =?1 and m.ms_sk_id=?2",nativeQuery=true)
	public MentorSkills isSkillAlreadyAdded(Long mentorId, Long skillId);
}
