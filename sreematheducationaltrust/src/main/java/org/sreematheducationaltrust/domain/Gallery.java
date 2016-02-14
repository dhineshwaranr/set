package org.sreematheducationaltrust.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Gallery {

	@Id
	@GeneratedValue
	private int imageId;
	private String name;
	private int category;
}
