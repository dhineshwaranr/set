package org.sreematheducationaltrust.io;

import java.util.List;

import org.sreematheducationaltrust.domain.Language;

public class CustomJsonResponse {
private String page;
private String total;
private String records;
private List<Language> languageRows;
 
public CustomJsonResponse() {
}
 
public String getPage() {
return page;
}
 
public void setPage(String page) {
this.page = page;
}
 
public String getTotal() {
return total;
}
 
public void setTotal(String total) {
this.total = total;
}
 
public String getRecords() {
return records;
}
 
public void setRecords(String records) {
this.records = records;
}

public List<Language> getLanguageRows() {
	return languageRows;
}

public void setLanguageRows(List<Language> languageRows) {
	this.languageRows = languageRows;
}
 
 
}
