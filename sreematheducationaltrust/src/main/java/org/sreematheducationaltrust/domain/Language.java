package org.sreematheducationaltrust.domain;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
public class Language {

	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false)
	private String language;
	@OneToMany(fetch = FetchType.LAZY,mappedBy="language", orphanRemoval=true)
	@JsonManagedReference
	private List<News> news;
	
	public String getId(String language) {
		return language;
	}
	public void setId(String language) {
		this.language = language;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	
	public List<News> getNews() {
		return news;
	}
	public void setNews(List<News> news) {
		this.news = news;
	}
	
}
