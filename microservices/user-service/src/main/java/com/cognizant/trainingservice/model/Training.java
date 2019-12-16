package com.cognizant.trainingservice.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "training")
public class Training {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "tg_id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "tg_me_id")
	private Mentor mentorId;

	@ManyToOne
	@JoinColumn(name = "tg_tr_id")
	private Trainee traineeId;

	@ManyToOne
	@JoinColumn(name = "tg_te_id")
	private Technology techId;

	@Column(name = "tg_status")
	private String proposalStatus;

	@Column(name = "tg_progress")
	private String progress;

	@Column(name = "tg_submittime")
	private Date submitTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Mentor getMentorId() {
		return mentorId;
	}

	public void setMentorId(Mentor mentorId) {
		this.mentorId = mentorId;
	}

	public Trainee getTraineeId() {
		return traineeId;
	}

	public void setTraineeId(Trainee traineeId) {
		this.traineeId = traineeId;
	}

	public Technology getTechId() {
		return techId;
	}

	public void setTechId(Technology techId) {
		this.techId = techId;
	}

	public String getProposalStatus() {
		return proposalStatus;
	}

	public void setProposalStatus(String proposalStatus) {
		this.proposalStatus = proposalStatus;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	public Date getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	@Override
	public String toString() {
		return "Training [id=" + id + ", mentorId=" + mentorId + ", traineeId=" + traineeId + ", techId=" + techId
				+ ", proposalStatus=" + proposalStatus + ", progress=" + progress + ", submitTime=" + submitTime + "]";
	}

	public Training(Long id, Mentor mentorId, Trainee traineeId, Technology techId, String proposalStatus,
			String progress, Date submitTime) {
		super();
		this.id = id;
		this.mentorId = mentorId;
		this.traineeId = traineeId;
		this.techId = techId;
		this.proposalStatus = proposalStatus;
		this.progress = progress;
		this.submitTime = submitTime;
	}

	public Training() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
}
