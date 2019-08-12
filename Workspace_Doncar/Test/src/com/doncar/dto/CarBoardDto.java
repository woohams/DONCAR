package com.doncar.dto;

import java.util.Date;
import static common.Util.*;

public class CarBoardDto {
	
	private int car_board_no;
	private String car_board_process;
	private String car_board_title;
	private String car_board_writer;
	private int car_board_price;
	private String car_board_location;
	private String car_board_x_point;
	private String car_board_y_point;
	private Date car_board_regdate;
	private String car_board_delflag;
	private String car_board_content;
	
	
	public CarBoardDto() {
		
	}


	public CarBoardDto(int car_board_no, String car_board_process, String car_board_title, String car_board_writer,
			int car_board_price, String car_board_location, String car_board_x_point, String car_board_y_point,
			Date car_board_regdate, String car_board_delflag, String car_board_content) {
		super();
		this.car_board_no = car_board_no;
		this.car_board_process = car_board_process;
		this.car_board_title = car_board_title;
		this.car_board_writer = car_board_writer;
		this.car_board_price = car_board_price;
		this.car_board_location = car_board_location;
		this.car_board_x_point = car_board_x_point;
		this.car_board_y_point = car_board_y_point;
		this.car_board_regdate = car_board_regdate;
		this.car_board_delflag = car_board_delflag;
		this.car_board_content = car_board_content;
	}



	public int getCar_board_no() {
		return car_board_no;
	}



	public void setCar_board_no(int car_board_no) {
		this.car_board_no = car_board_no;
	}



	public String getCar_board_title() {
		return car_board_title;
	}



	public void setCar_board_title(String car_board_title) {
		this.car_board_title = car_board_title;
	}



	public String getCar_board_writer() {
		return car_board_writer;
	}



	public void setCar_board_writer(String car_board_writer) {
		this.car_board_writer = car_board_writer;
	}



	public int getCar_board_price() {
		return car_board_price;
	}



	public void setCar_board_price(int car_board_price) {
		this.car_board_price = car_board_price;
	}



	public String getCar_board_location() {
		return car_board_location;
	}



	public void setCar_board_location(String car_board_location) {
		this.car_board_location = car_board_location;
	}



	public String getCar_board_x_point() {
		return car_board_x_point;
	}



	public void setCar_board_x_point(String car_board_x_point) {
		this.car_board_x_point = car_board_x_point;
	}



	public String getCar_board_y_point() {
		return car_board_y_point;
	}



	public void setCar_board_y_point(String car_board_y_point) {
		this.car_board_y_point = car_board_y_point;
	}



	public String getCar_board_regdate() {
		
		return dateformat(this.car_board_regdate);
	}



	public void setCar_board_regdate(Date car_board_regdate) {
		this.car_board_regdate = car_board_regdate;
	}



	public String getCar_board_delflag() {
		return car_board_delflag;
	}



	public void setCar_board_delflag(String car_board_delflag) {
		this.car_board_delflag = car_board_delflag;
	}



	public String getCar_board_content() {
		return car_board_content;
	}



	public void setCar_board_content(String car_board_content) {
		this.car_board_content = car_board_content;
	}



	public String getCar_board_process() {
		return car_board_process;
	}



	public void setCar_board_process(String car_board_process) {
		this.car_board_process = car_board_process;
	}
	
	
	
}
