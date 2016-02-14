package org.sreematheducationaltrust.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Events {

	@Id
	@GeneratedValue
	private int id;
	private String eventTitle;
	private Date eventFrom;
	private Date eventTo;
	private String eventType;
	private String eventStatus;
	private Boolean isImage;
	
	public Boolean getIsImage() {
		return isImage;
	}
	public void setIsImage(Boolean isImage) {
		this.isImage = isImage;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public Date getEventFrom() {
		return eventFrom;
	}
	public void setEventFrom(Date eventFrom) {
		this.eventFrom = eventFrom;
	}
	public Date getEventTo() {
		return eventTo;
	}
	public void setEventTo(Date eventTo) {
		this.eventTo = eventTo;
	}
	public String getEventType() {
		return eventType;
	}
	public void setEventType(String eventType) {
		this.eventType = eventType;
	}
	public String getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	private String eventDescription;
}
