package com.biz.ems.controller;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.biz.ems.model.EmsVO;
import com.biz.ems.service.EmsService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class DetailShowController {

	@Qualifier("emsServiceV1")
	private final EmsService emsService;

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("id") Long id, Model model) {

		EmsVO emsVO = emsService.findById(id);

		model.addAttribute("EMSVO", emsVO);
		model.addAttribute("BODY", "DETAIL");
		return "home";
	}

}
