package com.cos.crud.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Visitor {
	private int id;
	private String userProfile; //이미지 경로 (파일 업로드) uuid
	private String username;
	private String password;
	private String email;
	private String address; //주소 추가
	private Timestamp createDate;
}

