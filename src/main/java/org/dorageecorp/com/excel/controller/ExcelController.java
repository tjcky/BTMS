package org.dorageecorp.com.excel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.dorageecorp.com.board.bo.BoardBO;
import org.dorageecorp.com.board.model.BoardModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
@RequestMapping("/excel/*")
public class ExcelController {
	@Inject
	private BoardBO bo;
	
	@RequestMapping(value = "/excelDetail", method = RequestMethod.GET)
	public ModelAndView exceltest(Locale locale, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("/excel/excelDetail");
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		try {
			List<BoardModel> list = bo.listAll();
			resultMap.put("list", list);
		} catch (Exception e) {
/*			logger.error("test", e);*/
		}

		String boardList = new Gson().toJson(resultMap);		
		
		mav.addObject("boardList", boardList);
		
		return mav;
	}
	
	@RequestMapping(value = "/activityList", method = RequestMethod.GET)
	public String activityList() {
		return "excel/activityList";
	}
}
