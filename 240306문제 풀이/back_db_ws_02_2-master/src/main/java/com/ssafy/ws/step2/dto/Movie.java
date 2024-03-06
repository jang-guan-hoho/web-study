package com.ssafy.ws.step2.dto;

public class Movie {
	//코드를 작성하세요.
	static int id;
	static String title;
	static String director; 
	static int runningTime;
	
	public Movie(){}
	public Movie(int id, String title, String director, int runningTime) {
		this.id= id;
		this.title = title;
		this.director = director;
		this.runningTime = runningTime;
	}
	public static int getId() {
		return id;
	}
	public static void setId(int id) {
		Movie.id = id;
	}
	public static String getTitle() {
		return title;
	}
	public static void setTitle(String title) {
		Movie.title = title;
	}
	public static String getDirector() {
		return director;
	}
	public static void setDirector(String director) {
		Movie.director = director;
	}
	public static int getRunningTime() {
		return runningTime;
	}
	public static void setRunningTime(int runningTime) {
		Movie.runningTime = runningTime;
	}
	@Override
	public String toString() {
		return "Movie [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
}