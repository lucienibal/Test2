package com.app.todo.vo;

public class Todo {

	private String id;
	private String title;
	private String name;
	private String seq;
	private String type;
	private String regdate;

	public Todo(String id, String title, String name, String seq, String type, String regdate) {
		super();
		this.id = id;
		this.title = title;
		this.name = name;
		this.seq = seq;
		this.type = type;
		this.regdate = regdate;
	}

	public Todo() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", title=" + title + ", name=" + name + ", seq=" + seq + ", type=" + type
				+ ", regdate=" + regdate + "]";
	}

}
