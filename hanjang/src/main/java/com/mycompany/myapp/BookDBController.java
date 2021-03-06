package com.mycompany.myapp;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.mycompany.myapp.service.BookDBService;
import com.mycompany.myapp.vo.BookVO;

// 책 정보를 DB에 넣는 컨트롤러 입니다
@Controller
public class BookDBController {

	@Resource(name = "bookDBService")
	private BookDBService service;
	
	// 책 정보를 DB에 넣는 메소드 입니다.
	public void DBinsert(BookVO newBookVO) {
		service.insertBook(newBookVO);
	}
	// 책 정보를 반환하는 메소드입니다.
	public BookVO selectDetail(String title) {
		BookVO bookVO1 = service.selectDetail(title);
		return bookVO1;
	}
}
