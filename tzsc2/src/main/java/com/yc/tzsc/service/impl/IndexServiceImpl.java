package com.yc.tzsc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;
import com.yc.tzsc.mapper.IndexMapper;
import com.yc.tzsc.service.IndexService;

@Service("indedxService")
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexMapper indexMapper;

	@Override
	public List<MinType> listMenu(int menu) {
		
		return indexMapper.listMenu(menu);
	}

	@Override
	public List<MinType> listMenu() {
		// TODO Auto-generated method stub
		return indexMapper.listMenu1();
	}

	@Override
	public List<SMixType> listMinMenu(int menu) {
		return indexMapper.listMinMenu(menu);
	}

	//按时间排序最新发布的产品
	@Override
	public List<Commodity> newShop() {
		return indexMapper.newShop();
	}

	//点击量排行高的产品
	@Override
	public List<Commodity> hotShop() {
		return indexMapper.hotShop();
	}


}
