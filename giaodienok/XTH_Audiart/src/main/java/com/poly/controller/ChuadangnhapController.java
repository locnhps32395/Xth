package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ChuadangnhapController {
	
 @RequestMapping("/")
public String trangchu() {
	return "Chuadangnhap";
}
}
