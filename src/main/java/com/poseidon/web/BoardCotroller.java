package com.poseidon.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardCotroller {

	@Autowired
	private BoardService boardService;
	
	@GetMapping(value = "/")
	public String index() {
		return "index";
	}

	//글쓰기 화면 나오게 하기
	//화면만 이동하려면 String으로 하시면 편합니다.
	
	/*
	 * @RequestMapping(value = "/write") //값 없이 붙혀 넣을땐 이렇게 해도 됩니다.
	 */	
		@GetMapping(value = "/write")
		public String write() {
		return "write";
	}
		@PostMapping(value = "write")
		public String write(HttpServletRequest request) throws Exception {
			request.setCharacterEncoding("UTF-8");
			String title  = request.getParameter("title");
			String content = request.getParameter("content");
			
			System.out.println(title);
			System.out.println(content);
			
			return "redirect:/board"; //다시 컨트롤러로 ... 
		}

	@RequestMapping(value = "/board")
	public ModelAndView board() {
		ModelAndView mv = new ModelAndView("board"); // jsp 이동
		// 값 보내기
		mv.addObject("test", "테스트"); // 이름, 값 (키 , 밸류)
		// service에게 일 시키기
		List<BoardDTO> boardList = boardService.boardList();
		mv.addObject("boardList", boardList);
		return mv;

	}
}
