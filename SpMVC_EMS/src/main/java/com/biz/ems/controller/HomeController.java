package com.biz.ems.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.ems.mapper.EmsDao;
import com.biz.ems.model.EmsVO;

@Controller
public class HomeController {
	
	@Autowired
	private EmsDao emsDao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<EmsVO> emsList = emsDao.selectAll();
		model.addAttribute("ITEMS", emsList);
		System.out.println("\n\n\n" + emsList + "\n\n\n");
		return "home";
	}

}
