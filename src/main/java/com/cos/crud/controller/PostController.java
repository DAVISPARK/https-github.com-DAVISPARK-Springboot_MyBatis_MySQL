package com.cos.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cos.crud.model.Post;
import com.cos.crud.service.PostService;
import com.cos.crud.utils.Utils;

//Model은 데이터를 Controller에서 Presentation 계층까지 들고간다.

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostService mService;	//있는 객체에 접근 
	
	//GET => http://localhost:8080/post
	//GET => http://localhost:8080/post/
	@GetMapping("")
	public String postList(Model model) {
		List<Post> posts = mService.postList();
		model.addAttribute("posts", posts);
		// webapp/WEB-INF/views/post/list.jsp
		Utils.setPreviewImg(posts);
		return "post/list";
	}
	
	//GET => http://localhost:8080/post/1
	@GetMapping("/{id}")
	public String post(@PathVariable int id, Model model) {
		Post post = mService.post(id);
		model.addAttribute("post", post);
		return "post/detail";
	}
	
	//GET => http://localhost:8080/post/writeForm
	@GetMapping("/writeForm")
	public String writeForm() {
		return "post/writeForm";
	}
	
	//POST => http://localhost:8080/post/update
	@PostMapping("/update")
	public String update(Post post) {	//param, form
		try {
			mService.update(post);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/post";
	}
//		@RequestParam("id")
//		@RequestBody =>JSON	
	//GET => http://localhost:8080/post/delete/1
	@GetMapping("/delete/{id}")	//간단한걸 하기 때문에 get요청
	public String delete(@PathVariable int id) {
		try {
			mService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/post";
	}
	//POST => http://localhost:8080/post/save
	@PostMapping("/save")
	public String save(Post post) {
		try {
			mService.save(post);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/post";
	}
	@GetMapping("/updateForm/{id}")
	public String updateForm(@PathVariable int id, Model model) {
		Post post = mService.updateForm(id);
		model.addAttribute("post", post);
		return "post/updateForm";
	}
	
}
