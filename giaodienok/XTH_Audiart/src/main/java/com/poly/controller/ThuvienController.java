package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ThuvienController {
	
 @RequestMapping("/trangchu")
public String trangchu() {
	return "Trangchu";
}
}
