package com.cognizant.trainingservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.trainingservice.model.Mentor;
import com.cognizant.trainingservice.model.Trainee;

@Repository
public interface TraineeRepository extends JpaRepository<Trainee, String>{

	@Query("FROM Trainee t WHERE t.userID=?1")
	public Trainee findByUserID(String userID);
	
	@Query("FROM Trainee t WHERE t.id=?1")
	public Trainee findByTraineeId(Long id);
}
