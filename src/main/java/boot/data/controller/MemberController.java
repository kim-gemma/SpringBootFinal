package boot.data.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@GetMapping("/member/list")
	public ModelAndView memberlist() {
		ModelAndView model=new ModelAndView();
		
		List<MemberDto> list=service.getMemberList();
		
		model.addObject("list", list);
		
		model.setViewName("member/memberlist");
		return model;
	}
	
	@GetMapping("/member/form")
	public String memberform() {
		return "member/memberform";
	}
	
	@PostMapping("/member/insert")
	public String insertform(@ModelAttribute MemberDto dto,  ArrayList<MultipartFile> upload, HttpSession session) {
		
		service.insertMemberform(dto, upload, session);
		return "redirect:list";
	}
}
