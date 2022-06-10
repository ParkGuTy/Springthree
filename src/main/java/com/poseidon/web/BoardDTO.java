package com.poseidon.web;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class BoardDTO {
	private int b_no, b_count, b_like, totalcount;
	private String b_title, b_date, m_id, m_name;

}
