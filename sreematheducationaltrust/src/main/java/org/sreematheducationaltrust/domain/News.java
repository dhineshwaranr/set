package org.sreematheducationaltrust.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.sreematheducationtrust.dto.LanguageDTO;


@Entity
public class News {

	@Id
	@GeneratedValue
	@Column(name = "news_id")
	private int newsId;
	private String newsTitle;
	private String newsType;
	private String newsCategory;
	private String description;
	private boolean isImage;
	@ManyToOne(fetch = FetchType.LAZY)
	private Language language;
	
	public News(){
		
	}
	public News(String newsTitle, String newsType, String newsCategory,String description, boolean isImage,Language language){
		this.newsTitle = newsTitle;
		this.newsType = newsType;
		this.newsCategory = newsCategory;
		this.description = description;
		this.isImage = isImage;
		this.language = language;
	}
	
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	
	public String getNewsType() {
		return newsType;
	}
	public void setNewsType(String newsType) {
		this.newsType = newsType;
	}
	public String getNewsCategory() {
		return newsCategory;
	}
	public void setNewsCategory(String newsCategory) {
		this.newsCategory = newsCategory;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean isImage() {
		return isImage;
	}
	public void setImage(boolean isImage) {
		this.isImage = isImage;
	}

	public Language getLanguage() {
		return language;
	}
	public void setLanguage(Language language) {
		this.language = language;
	}
}
