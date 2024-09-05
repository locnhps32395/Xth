package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DangnhapController {
@RequestMapping("/dangnhap")
	public String amnhac() {
		return "Dang_nhap";
	}
}
