package com.poseidon.web;

import lombok.Data;

@Data
public class LoginDTO {
	private int u_no, u_grade, u_resign;
	private String u_id, u_name, u_pw, u_joindate;
}
