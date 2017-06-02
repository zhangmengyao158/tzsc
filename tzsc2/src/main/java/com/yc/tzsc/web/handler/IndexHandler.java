package com.yc.tzsc.web.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;
import com.yc.tzsc.service.IndexService;

@Controller
@RequestMapping("/index")
public class IndexHandler {
	@Autowired
	private IndexService indedxService;
	
	@RequestMapping("/indexMenu")
	@ResponseBody
	public List<MinType> indexMenu(@RequestParam("menu")int menu, HttpSession session){
//		LogManager.getLogger().debug("请求indexMenu处理加载首页主分类功能...");
		List<MinType> listNew = null;
		if(menu==0){
			listNew = indedxService.listMenu();
		}else{
			listNew = indedxService.listMenu(menu);
		}
//		System.out.println(listNew);
		return listNew;
	}
	
	@RequestMapping("/indexMinMenu")
	@ResponseBody
	public List<SMixType> indexMinMenu(@RequestParam("SMmenu")int SMmenu, HttpSession session){
//		LogManager.getLogger().debug("请求indexMinMenu处理加载首页小分类功能...");
		List<SMixType> listMinNew = indedxService.listMinMenu(SMmenu);
//		System.out.println(listMinNew);
		return listMinNew;
	}
	
	//点击量排行最高的4条产品记录
	@RequestMapping("/hotShop")
	@ResponseBody
	public List<Commodity> hotShop(HttpSession session){
//		LogManager.getLogger().debug("请求hotShop处理加载首页小分类功能...");
		List<Commodity> hotShop = indedxService.hotShop();
//		System.out.println(hotShop);
		return hotShop;
	}
	
	//最新发布的产品
	@RequestMapping("/newShop")
	@ResponseBody
	public List<Commodity> newShop(HttpSession session){
//		LogManager.getLogger().debug("请求newShop处理加载首页小分类功能...");
		List<Commodity> newShop = indedxService.newShop();
//		System.out.println(newShop);
		return newShop;
	}
}