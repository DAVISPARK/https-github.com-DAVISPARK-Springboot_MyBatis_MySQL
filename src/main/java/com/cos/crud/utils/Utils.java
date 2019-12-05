package com.cos.crud.utils;

//Jsoup 이미지 파싱
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.cos.crud.model.Post;



public class Utils {
	
	public static void setPreviewContent(List<Post> posts) {
		
		for(Post post : posts) {
		
		Document doc = Jsoup.parse(post.getContent());
		Elements ets = doc.select("img");

		if(ets != null) {
			for (Element et : ets) {
				et.remove();
			}
		}
		post.setContent(doc.toString());
		}
	
	}
	
	// 미리보기 이미지 가져오기
	public static void setPreviewImg(List<Post> posts) {
		for (Post post : posts) {
			Document doc = Jsoup.parse(post.getContent());
			Element et = doc.selectFirst("img");
			Element uet = doc.selectFirst("a");
			if(et != null) {
				String previewImg = et.attr("src");
//				System.out.println("Utils : previewImg : " + previewImg);
				post.setPreviewImg(previewImg);
			}else if(uet!=null) {
	            String href=uet.attr("href");
	            if(href.contains("https://www.youtube.com/watch")) {
	               String video[] = href.split("=");
	               String v = video[1];   //youtube VideoNumber
	               String youtubeThumbnail = "https://img.youtube.com/vi/"+ v +"/hqdefault.jpg";
	               post.setPreviewImg(youtubeThumbnail);
	            }
			}
			else {
          	post.setPreviewImg("/resources/img/simkak.png");
		}
	}
}
	
	//유튜브 미리보기 세팅하기
	public static void setPreviewYoutube(Post post) {
		Document doc = Jsoup.parse(post.getContent());
		Elements ets = doc.select("a");
		//et.text().equals("") 하는 이유는 섬머노트 a태그 중복 버그때문에!
		if(ets != null) {
			for (Element et : ets) {
				String href = et.attr("href");
				
				if(href.contains("https://www.youtube.com/watch") && !et.text().equals("")) {
					String video[] = href.split("=");
					String v = video[1];
					String iframe="<br/><iframe src ='https://www.youtube.com/embed/"+v+"'width='600px' height='350px' allowfullscreen/>";
					et.after(iframe);
					
				}
			}
			post.setContent(doc.toString()); //board 완성
		}
	}
}

	