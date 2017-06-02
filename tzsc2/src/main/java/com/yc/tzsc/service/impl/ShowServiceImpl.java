package com.yc.tzsc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.mapper.ShowMapper;
import com.yc.tzsc.service.ShowService;
  
@Service("showService")
public class ShowServiceImpl implements ShowService {
	@Autowired
	private ShowMapper showMapper;

	@Override
	public Commodity getCommodityById(int id) {
		 
		return showMapper.getCommodityById(id);
	}

	 

	 

}
