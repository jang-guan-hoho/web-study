package com.ssafy.ws.step3.dto;

public class Book {
	//코드를 작성하세요.
	static String isbn;
	static String title;
	static String author;
	static int price;
	static String desc;
	
	public Book() {}
	public Book(String isbn, String title, String author, int price, String desc) {
		this.isbn =isbn;
		this.title = title;
		this.author= author;
		this.price = price;
		this.desc=desc;
	}
	public static String getIsbn() {
		return isbn;
	}
	public static void setIsbn(String isbn) {
		Book.isbn = isbn;
	}
	public static String getTitle() {
		return title;
	}
	public static void setTitle(String title) {
		Book.title = title;
	}
	public static String getAuthor() {
		return author;
	}
	public static void setAuthor(String author) {
		Book.author = author;
	}
	public static int getPrice() {
		return price;
	}
	public static void setPrice(int price) {
		Book.price = price;
	}
	public static String getDesc() {
		return desc;
	}
	public static void setDesc(String desc) {
		Book.desc = desc;
	}
	@Override
	public String toString() {
		return "Book [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
}
