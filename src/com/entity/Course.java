package com.entity;

/**
 * @author 课程
 *
 */
public class Course {
	private int id;
	private int categoryId;
	private String name;
	private String description;
	private int count;
	private String level;
	private String time;
	private String notice;
	private String categoryName;// 所属语言
	
	
	
	public Course(int categoryId, String name, String description, int count,
			String level, String time, String notice) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.description = description;
		this.count = count;
		this.level = level;
		this.time = time;
		this.notice = notice;
	}
	public Course(int id, int categoryId, String name, String description,
			int count, String level, String time, String notice) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.name = name;
		this.description = description;
		this.count = count;
		this.level = level;
		this.time = time;
		this.notice = notice;
	}
	//toString
	@Override
	public String toString() {
		return "Course [id=" + id + ", categoryId=" + categoryId + ", name="
				+ name + ", description=" + description + ", count=" + count
				+ ", level=" + level + ", time=" + time + ", notice=" + notice
				+ ", categoryName=" + categoryName + "]";
	}
	//构造
	public Course(){}
	public Course(int id, int categoryId, String name, String description,
			int count, String level, String time, String notice,
			String categoryName) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.name = name;
		this.description = description;
		this.count = count;
		this.level = level;
		this.time = time;
		this.notice = notice;
		this.categoryName = categoryName;
	}
	//getter && setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
	
	
}
