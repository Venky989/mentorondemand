package com.cognizant.trainingservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.TransactionSuspensionNotSupportedException;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cognizant.trainingservice.exception.BookingAlreadyExistsException;
import com.cognizant.trainingservice.model.Training;
import com.cognizant.trainingservice.repository.TraineeRepository;
import com.cognizant.trainingservice.service.TrainingService;

@RestController
@RequestMapping("/proposal")
public class TrainingController {

	@Autowired
	TrainingService trainingService;
	@Autowired
	TraineeRepository traineeRepository;

	@PostMapping("/{mentorId}/{traineeName}/{techId}")
	public void setProposalStatus(@PathVariable("mentorId") String mentor, @PathVariable("traineeName") String trainee,
			@PathVariable("techId") String tech) throws BookingAlreadyExistsException {
		System.out.println(" " + mentor + " " + trainee + " " + tech);
		Long mentorId = new Long(mentor);
		Long traineeId = traineeRepository.findByUserID(trainee).getId();
		Long techId = new Long(tech);
		trainingService.setProposalStatus(mentorId, traineeId, techId);
	}

	@GetMapping("/pending/{mentorName}")
	public List<Training> getPendingList(@PathVariable("mentorName") String mentorName) {
		return trainingService.getPendingList(mentorName);
	}

	@GetMapping("/all/{mentorName}")
	public List<Training> getAllTrainingList(@PathVariable("mentorName") String mentorName) {
		return trainingService.getAllTrainingList(mentorName);
	}
	
	@GetMapping("/trainee/{traineeName}")
	public List<Training> getAllTraineeTrainingList(@PathVariable("traineeName") String traineeName) {
		return trainingService.getAllTraineeTrainingList(traineeName);
	}

	@PutMapping("/accept/{traineeId}")
	public void getAcceptedList(@PathVariable("traineeId") String traineeId) {
		Long id = new Long(traineeId);
		trainingService.AcceptedList(id);
	}
	
	@PutMapping("/pay/{traineeId}")
	public void getPayList(@PathVariable("traineeId") String traineeId) {
		Long id = new Long(traineeId);
		trainingService.payList(id);
	}
	
	@PutMapping("/completed/{traineeId}")
	public void getCompletedList(@PathVariable("traineeId") String traineeId) {
		Long id = new Long(traineeId);
		trainingService.completedList(id);
	}

	@DeleteMapping("/decline/{traineeId}")
	public void declineRequest(@PathVariable("traineeId") String traineeId) {
		Long id = new Long(traineeId);
		trainingService.declineRequest(id);
	}
	
	@GetMapping("/trainee/complete/{traineeName}")
	public List<Training> getTraineecompleteList(@PathVariable("traineeName") String traineeName) {
		return trainingService.getTraineecompleteList(traineeName);
	}
	

	@GetMapping("/trainee/incomplete/{traineeName}")
	public List<Training> getTraineeIncompleteList(@PathVariable("traineeName") String traineeName) {
		System.out.println("entering-------------");
		return trainingService.getTraineeIncompleteList(traineeName);
	}
	
	@GetMapping("/mentor/complete/{mentorName}")
	public List<Training> getMentorcompleteList(@PathVariable("mentorName") String mentorName) {
		System.out.println("entering --");
		return trainingService.getMentorcompleteList(mentorName);
	}
	
	@GetMapping("/mentor/incomplete/{mentorName}")
	public List<Training> getMentorIncompleteList(@PathVariable("mentorName") String mentorName) {
		return trainingService.getMentorIncompleteList(mentorName);
	}

}
