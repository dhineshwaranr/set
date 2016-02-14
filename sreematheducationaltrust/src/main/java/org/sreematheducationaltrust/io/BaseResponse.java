package org.sreematheducationaltrust.io;


import java.io.Serializable;
import org.codehaus.jackson.annotate.JsonProperty;


public class BaseResponse implements Serializable {
	
	private static final long serialVersionUID = -7769807562138794389L;
	
	@JsonProperty("statusCode")
	private String statusCode;
	@JsonProperty("statusMessage")
	private String statusMessage;
	
	public String getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
	public String getStatusMessage() {
		return statusMessage;
	}
	public void setStatusMessage(String statusMessage) {
		this.statusMessage = statusMessage;
	}
		
}
