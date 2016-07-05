package org.dorageecorp.com.activity.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.dorageecorp.com.activity.bo.ActivityBO;
import org.dorageecorp.com.activity.model.ActivityModel;
import org.dorageecorp.com.board.bo.BoardBO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/activity/*")
public class ActivityController {
	
	private static final Logger logger = LoggerFactory.getLogger(ActivityController.class);
	
	@Inject
	private BoardBO boardBO;
	
	@Inject
	private ActivityBO activityBO;

/*	@RequestMapping(value = "/activityDetail", method = RequestMethod.GET)
	public ModelAndView exceltest(Locale locale, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView("/activity/excelDetail");

		Map<String, Object> resultMap = new HashMap<String, Object>();

		try {
			List<BoardModel> list = boardBo.listAll();
			resultMap.put("list", list);
		} catch (Exception e) {
			 logger.error("test", e); 
		}

		String boardList = new Gson().toJson(resultMap);

		mav.addObject("boardList", boardList);

		return mav;
	}*/

	@RequestMapping(value = "/activityList", method = RequestMethod.GET)
	public ModelAndView activityList() {
		ModelAndView mav = new ModelAndView("/activity/activityList");
		
		List<ActivityModel> activityList = null;

		try {
			activityList = activityBO.activityList();
		} catch (Exception e) {
			logger.error(ReflectionToStringBuilder.toString("test"));
		}
		
		mav.addObject("activityList", activityList);

		return mav;
	}
}