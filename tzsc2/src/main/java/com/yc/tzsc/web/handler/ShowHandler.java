package com.yc.tzsc.web.handler;


import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.service.ShowService;
   
@Controller
@RequestMapping("/show")
public class ShowHandler {
	@Autowired
	private ShowService showService;
	 
	
	@RequestMapping("/showDetail")
	@ResponseBody
	public Commodity getCommodityById(@RequestParam("cid")int id, HttpSession session){
		LogManager.getLogger().debug("请求showDetail处理");
		Commodity commodity = showService.getCommodityById(id);
		System.out.println(commodity);
		session.setAttribute("commodity", commodity);
   		return commodity;
 	}
	
	 
}