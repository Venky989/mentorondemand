package com.cognizant.trainingservice.service;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.trainingservice.exception.BookingAlreadyExistsException;
import com.cognizant.trainingservice.model.Training;
import com.cognizant.trainingservice.repository.MentorRepository;
import com.cognizant.trainingservice.repository.TechnologyRepository;
import com.cognizant.trainingservice.repository.TraineeRepository;
import com.cognizant.trainingservice.repository.TrainingRepository;

@Service
public class TrainingService {

	@Autowired
	TrainingRepository trainingRepository;

	@Autowired
	MentorRepository mentorRepository;

	@Autowired
	TraineeRepository traineeRepository;

	@Autowired
	TechnologyRepository technologyRepository;

	@Transactional
	public void setProposalStatus(Long mentorId, Long traineeId, Long techId) throws BookingAlreadyExistsException {
		Training training = new Training();
		Training check = trainingRepository.isAlreadyBooked(mentorId, traineeId, techId);
		if (check == null) {

			training.setMentorId(mentorRepository.findByMentorId(mentorId));
			training.setTraineeId(traineeRepository.findByTraineeId(traineeId));
			training.setTechId(technologyRepository.findByTechnologyId(techId));
			training.setProposalStatus("PENDING");
			trainingRepository.save(training);
		} else {
			throw new BookingAlreadyExistsException();
		}
	}

	@Transactional
	public List<Training> getPendingList(String mentorName) {
		Long id = mentorRepository.findByUserID(mentorName).getId();
		return trainingRepository.getPendingList(id);
	}

	@Transactional
	public List<Training> getAllTrainingList(String mentorName) {

		Long mentorId = mentorRepository.findByUserID(mentorName).getId();
		return trainingRepository.findTraineeByMentor(mentorId);
	}

	@Transactional
	public List<Training> getAllTraineeTrainingList(String traineeName) {
		Long traineeId = traineeRepository.findByUserID(traineeName).getId();
		return trainingRepository.findTraineeByTrainee(traineeId);
	}

	@Transactional
	public List<Training> getTraineeIncompleteList(String traineeName) {
		Long traineeId = traineeRepository.findByUserID(traineeName).getId();
		return trainingRepository.getTraineeInCompleteList(traineeId);
	}

	@Transactional
	public List<Training> getTraineecompleteList(String traineeName) {
		Long traineeId = traineeRepository.findByUserID(traineeName).getId();
		return trainingRepository.getTraineeCompleteList(traineeId);
	}

	@Transactional
	public List<Training> getMentorIncompleteList(String mentorName) {
		Long mentorId = mentorRepository.findByUserID(mentorName).getId();
		return trainingRepository.getMentorInCompleteList(mentorId);
	}

	@Transactional
	public List<Training> getMentorcompleteList(String mentorName) {
		Long mentorId = mentorRepository.findByUserID(mentorName).getId();
		return trainingRepository.getMentorCompleteList(mentorId);
	}

	@Transactional
	public void AcceptedList(Long trainingId) {
		Training training = this.trainingRepository.findAllById(trainingId);
		training.setProposalStatus("APPROVED");
		this.trainingRepository.save(training);
	}

	public void declineRequest(Long trainingId) {
		Training training = this.trainingRepository.findAllById(trainingId);

		this.trainingRepository.delete(training);

	}

	public void completedList(Long trainingId) {
		Training training = this.trainingRepository.findAllById(trainingId);
		training.setProposalStatus("COMPLETED");
		Date date = new Date();
		training.setSubmitTime(date);
		System.err.println(date);
		this.trainingRepository.save(training);

	}

	public void payList(Long trainingId) {
		Training training = this.trainingRepository.findAllById(trainingId);
		training.setProposalStatus("APPROVEDPAID");
		this.trainingRepository.save(training);

	}

}
