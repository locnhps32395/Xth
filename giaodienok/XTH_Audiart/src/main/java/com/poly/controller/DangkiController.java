package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DangkiController {
@RequestMapping("/dangki")
	public String amnhac() {
		return "Dang_ki";
	}
}
