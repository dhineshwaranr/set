package org.sreematheducationaltrust.io;

import org.sreematheducationaltrust.domain.Category;
import org.sreematheducationaltrust.domain.Language;

public class UserResponse extends BaseResponse {
	
	private static final long serialVersionUID = 8737514574111667459L;
	
	private int newsId;
	private Language newsLang;
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public Language getNewsLang() {
		return newsLang;
	}
	public void setNewsLang(Language newsLang) {
		this.newsLang = newsLang;
	}
	public Category getNewsCategory() {
		return newsCategory;
	}
	public void setNewsCategory(Category newsCategory) {
		this.newsCategory = newsCategory;
	}
	public boolean isImage() {
		return isImage;
	}
	public void setImage(boolean isImage) {
		this.isImage = isImage;
	}
	
	private Category newsCategory;
	private boolean isImage;
	
	
}
