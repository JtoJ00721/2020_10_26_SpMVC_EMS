package com.biz.ems.controller;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.ems.model.EmsVO;
import com.biz.ems.service.EmsService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class FormController {
	
	@Qualifier("emsServiceV1")
	private final EmsService emsService;

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(Model model, @ModelAttribute("EMSVO") EmsVO emsVO) {
		model.addAttribute("EMSVO", emsVO);
		model.addAttribute("BODY", "WRITE");
		return "home";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(@ModelAttribute("EMSVO") EmsVO emsVO) {
		
		emsService.insert(emsVO);
		
		return "redirect:/";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete() {
		return "redirect:/";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Model model) {
		model.addAttribute("BODY", "WRITE");
		return "home";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update() {
		return "home";
	}

}
