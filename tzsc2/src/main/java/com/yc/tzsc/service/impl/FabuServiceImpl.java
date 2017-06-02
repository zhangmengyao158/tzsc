package com.yc.tzsc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.mapper.FabuMapper;
import com.yc.tzsc.service.FabuService;

@Service("fabuService")
public class FabuServiceImpl implements FabuService {
	
	@Autowired
	private FabuMapper fabuMapper;

	@Override
	public List<MinType> listSMenu() {
		
		return fabuMapper.listSMenu();
	}

}
