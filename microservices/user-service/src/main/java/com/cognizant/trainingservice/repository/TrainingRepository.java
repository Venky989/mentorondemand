package com.cognizant.trainingservice.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.trainingservice.model.Training;

@Repository
public interface TrainingRepository  extends JpaRepository<Training, String>{

	
	@Query(value="Select * FROM training t WHERE t.tg_status='PENDING' AND t.tg_me_id=?1 ",nativeQuery=true)
	public List<Training> getPendingList(Long id);
	

	@Query(value="FROM Training t WHERE t.proposalStatus ='ACCEPTED' AND t.id=?1 ")
	public List<Training> getAcceptedList(Long id);

	@Query(value="From Training t where t.id=?1")
	public Training findAllById(Long trainingId);
	
	@Query(value="Select * FROM training t WHERE t.tg_me_id=?1",nativeQuery=true)
	public List<Training> findTraineeByMentor(Long mentorId);

	@Query(value="Select * FROM training t WHERE t.tg_tr_id=?1",nativeQuery=true)
	public List<Training> findTraineeByTrainee(Long traineeId);
	
	@Query(value="select * from training t where t.tg_status not like 'COMPLETED' and t.tg_tr_id=?1",nativeQuery=true)
	public List<Training> getTraineeInCompleteList(Long traineeId);
	
	@Query(value="select * from training t where t.tg_status like 'COMPLETED' and t.tg_tr_id=?1 ",nativeQuery=true)
	public List<Training> getTraineeCompleteList(Long traineeId);
	
	@Query(value="select * from training t where t.tg_status not like 'COMPLETED' and t.tg_me_id=?1",nativeQuery=true)
	public List<Training> getMentorInCompleteList(Long traineeId);
	
	@Query(value="select * from training t where t.tg_status like 'COMPLETED' and t.tg_me_id=?1 ORDER BY tg_submittime",nativeQuery=true)
	public List<Training> getMentorCompleteList(Long traineeId);
	
	@Query(value="select * from training t where t.tg_me_id=?1 and t.tg_tr_id=?2 and t.tg_te_id=?3",nativeQuery=true)
	public Training isAlreadyBooked(Long mentorId, Long traineeId, Long techId);
	

	

}
