package com.entity;

/**
 * @author 章节信息
 *
 */
public class Chapter {
	private int id;
	private int courseId;
	private String title;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Chapter() {
		super();
	}
	public Chapter(int id, int courseId, String title) {
		super();
		this.id = id;
		this.courseId = courseId;
		this.title = title;
	}


}
