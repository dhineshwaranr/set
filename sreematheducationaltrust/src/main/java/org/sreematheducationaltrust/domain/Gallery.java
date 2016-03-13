package org.sreematheducationaltrust.domain;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Gallery {

	@Id
	@GeneratedValue
	private int id;
	private String galleryImageUrl;
	private String title;
	@ManyToOne(fetch = FetchType.EAGER)
	@JsonBackReference
	@JoinColumn(name="galleryCoverImage_id")
	private GalleryCoverPage gallery;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGalleryImageUrl() {
		return galleryImageUrl;
	}
	public void setGalleryImageUrl(String galleryImageUrl) {
		this.galleryImageUrl = galleryImageUrl;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public GalleryCoverPage getGallery() {
		return gallery;
	}
	public void setGallery(GalleryCoverPage gallery) {
		this.gallery = gallery;
	}
	
}
