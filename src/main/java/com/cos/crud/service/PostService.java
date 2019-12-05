package com.cos.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cos.crud.model.Post;
import com.cos.crud.repository.PostRepository;
@Service
public class PostService {
	
	@Autowired
	private PostRepository mRepo;

	public List<Post> postList() {
		List<Post> posts = mRepo.findAll();
		return posts;
	}
	
	public Post post(int id) {
		Post post = mRepo.findById(id);
		return post;
	}
	

	public int update(Post post) {	//param, form
		try {
			mRepo.update(post);
			return 1;
		} catch (Exception e) {
			System.out.println("update 오류");
		}
		return -1;
	}

	public int delete(int id) {
		try {
			mRepo.delete(id);
			return 1;
		} catch (Exception e) {
			System.out.println("delete 오류");
		}
		return -1;
	}


	public int save(Post post) {
		try {
			mRepo.save(post);
			return 1;
		} catch (Exception e) {
			System.out.println("save 오류");
		}
		return -1;
	}
	
	public Post updateForm(int id) {
		Post post = mRepo.findById(id);
		return post;
	}

}
