package com.cos.crud.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.crud.model.Visitor;
import com.cos.crud.service.VisitorSHA256;
import com.cos.crud.service.VisitorService;
import com.cos.crud.utils.Script;

@Controller
@RequestMapping("/visitor")
public class VisitorController {
	
	@Autowired
	private VisitorService vService;
	
	@GetMapping("/login")
	public String login() {
		return "visitor/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "visitor/join";
	}
	
	@GetMapping("/profile")
	public String profile() {
		return "visitor/profile";
	}
	
	@PostMapping("/save")
	public String userRegPass(Visitor visitor, Model model, HttpServletRequest request) {
		// 암호 확인
		System.out.println("첫번째:" + visitor.getPassword());
		// 비밀번호 암호화 (sha256
		String encryPassword = VisitorSHA256.encrypt(visitor.getPassword());
		visitor.setPassword(encryPassword);
		System.out.println("두번째:" + visitor.getPassword());
		// 회원가입 메서드
		vService.save(visitor);
		return "visitor/login";
	}

	
//	@PostMapping("/save")
//	public String save(Visitor visitor) {
//		try {
//			vService.save(visitor);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "visitor/login";
//	}
	
	@PostMapping("/login")
	public @ResponseBody String userLogin(Visitor visitor, HttpSession session, HttpServletResponse response) {
		System.out.println("userLogin : 진입");
		Visitor v = vService.userLogin(visitor);
		System.out.println("userLogin : DATA ACCESS 완료");
		if (v != null) {
			session.setAttribute("visitor", v);
		return Script.href("/post");
		}else {
			return Script.back("로그인 실패");
		}	
	}
	   }
	


