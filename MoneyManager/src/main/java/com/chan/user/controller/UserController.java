package com.chan.user.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chan.user.model.UserDto;
import com.chan.user.model.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {

	//로깅은 소프트웨어 실행중에 발생하는 이벤트를 기록하는 것
	private final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	private UserService userService;
	
	@GetMapping("/join")
	public String join() {
		return "user/join";
	}
	
	@PostMapping("/join")
	public String join(UserDto userDto, Model model) {
		logger.debug("memberDto info : {}", userDto);
		try {
			userService.joinMember(userDto);
			return "redirect:/user/login";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "회원 가입 중 문제 발생!!!");
			return "error/error";
		}
	}
}
