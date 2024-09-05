package com.poly.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admim_quanlinghesyController {
@RequestMapping("/admin_quanlinghesy")
	public String amnhac() {
		return "Trang_chu_admin_quan_li_nghe_sy";
	}
}
