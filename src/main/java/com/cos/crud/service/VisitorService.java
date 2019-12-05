package com.cos.crud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.crud.model.Visitor;
import com.cos.crud.repository.VisitorRepository;

@Service
public class VisitorService {
	
	@Autowired
	private VisitorRepository vRepo;
	
	public Visitor findByVisitorName(String username) {
		Visitor visitor = vRepo.findByVisitorName(username);
		return visitor;
	}
	
	public Visitor userLogin(Visitor visitor) {
		Visitor v = vRepo.findByVisitorNameAndPassword(visitor.getUsername(), visitor.getPassword());
		return v;
	}
	
	public int update(Visitor visitor) {
		try {
			vRepo.update(visitor);
			return 1;
		} catch (Exception e) {
			System.out.println("visitorUpdate 오류");
		}
		return -1;
	}
	
	public int updateProfile(String username, int id) {
		try {
			vRepo.updateProfile(username, id);
			return 1;
		} catch (Exception e) {
			System.out.println("updateProfile 오류");
		}
		return -1;
	}
	
	public int save(Visitor visitor) {
		try {
			vRepo.save(visitor);
			return 1;
		} catch (Exception e) {
			System.out.println("visitorSave 오류");
		}
		return -1;
	}
	

}
