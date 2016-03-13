package org.sreematheducationaltrust.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class GalleryCoverPage {

	@Id
	@GeneratedValue
	private int imageId;
	private String name;
	private String category;
	private String coverImageURL;
	
	public int getImageId() {
		return imageId;
	}
	public void setImageId(int imageId) {
		this.imageId = imageId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getCoverImageURL() {
		return coverImageURL;
	}
	public void setCoverImageURL(String coverImageURL) {
		this.coverImageURL = coverImageURL;
	}
}
