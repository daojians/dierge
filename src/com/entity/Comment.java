package com.entity;

import java.sql.Date;

/**
 * @author 评论表
 *
 */
public class Comment {
	private int id;
	private int chapterId;
	private int userId;
	private String content;
	private Date time;
	private String usersUsername;//发表人
	private String chapterTitle;//发表属于的文章
	
	
	
	

	public Comment(String content, Date time, String usersUsername) {
		super();
		this.content = content;
		this.time = time;
		this.usersUsername = usersUsername;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", chapterId=" + chapterId + ", userId="
				+ userId + ", content=" + content + ", time=" + time
				+ ", usersUsername=" + usersUsername + ", chapterTitle="
				+ chapterTitle + "]";
	}
	//构造
	 public Comment(){}
	public Comment(int id, int chapterId, int userId, String content,
			Date time, String usersUsername, String chapterTitle) {
		super();
		this.id = id;
		this.chapterId = chapterId;
		this.userId = userId;
		this.content = content;
		this.time = time;
		this.usersUsername = usersUsername;
		this.chapterTitle = chapterTitle;
	}
	// getter && setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getChapterId() {
		return chapterId;
	}
	public void setChapterId(int chapterId) {
		this.chapterId = chapterId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getUsersUsername() {
		return usersUsername;
	}
	public void setUsersUsername(String usersUsername) {
		this.usersUsername = usersUsername;
	}
	public String getChapterTitle() {
		return chapterTitle;
	}
	public void setChapterTitle(String chapterTitle) {
		this.chapterTitle = chapterTitle;
	}

	
	
	
}
