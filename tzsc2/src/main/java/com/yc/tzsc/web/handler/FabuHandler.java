package com.yc.tzsc.web.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.service.FabuService;

@Controller
@RequestMapping("/fabu")
public class FabuHandler {

	@Autowired
	private FabuService fabuService;
	
	@RequestMapping("/listSmenu")
	@ResponseBody
	public List<MinType> listSmenu(HttpSession session){
		LogManager.getLogger().debug("请求listSMenu处理加载首页主分类功能...");
		List<MinType> listNew = fabuService.listSMenu();
		return listNew;
	}
}
