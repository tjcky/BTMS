package org.dorageecorp.com.controller;

import javax.inject.Inject;

import org.dorageecorp.com.bo.BoardBO;
import org.dorageecorp.com.model.BoardModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardBO bo;

	@RequestMapping(value ="/register", method = RequestMethod.POST)
	public String registerPOST(BoardModel board, RedirectAttributes rttr) throws Exception {
		logger.info(board.toString());

		bo.regist(board);

		rttr.addFlashAttribute("msg", "success");

		return "redirect:/board/listAll";
	}
	
	@RequestMapping(value ="/listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("show all list...");
		model.addAttribute("list", bo.listAll());
	}
}