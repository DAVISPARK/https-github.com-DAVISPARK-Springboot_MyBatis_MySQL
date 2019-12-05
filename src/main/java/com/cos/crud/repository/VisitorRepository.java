package com.cos.crud.repository;

import com.cos.crud.model.Visitor;

public interface VisitorRepository{
	
	Visitor findByVisitorName(String username);
	void update(Visitor visitor);
	void updateProfile(String username, int id);
	void save(Visitor visitor);
	Visitor findByVisitorNameAndPassword(String username, String password);
}
