package com.yc.tzsc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.PaginationBean;
import com.yc.tzsc.mapper.SousuoMapper;
import com.yc.tzsc.service.SousuoService;

@Service("sousuoService")
public class SousuoServiceImpl implements SousuoService {
	@Autowired
	private SousuoMapper sousuoMapper;

	@Override
	public List<Commodity> souMenu(String menuName) {
		
		return sousuoMapper.souMenu(menuName);
	}

	@Override
	public List<Commodity> menuNo(int menuNo) {
		
		return sousuoMapper.menuNo(menuNo);
	}


	@Override
	public MinType selectMinTypeName(int strNo) {
		
		return sousuoMapper.selectMinTypeName(strNo);
	}

	@Override
	public PaginationBean<Commodity> listPartSousuo(String currPage, String pageSize) {
		PaginationBean<Commodity> userBean = new PaginationBean<Commodity>();
		if(currPage != null){
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		if(pageSize != null){
			userBean.setPageSize(Integer.parseInt(pageSize));
		}
		System.out.println(sousuoMapper.listPartSousuo(userBean) +"userBean");
		return sousuoMapper.listPartSousuo(userBean);
	}

	@Override
	public List<Commodity> sousuoStr(Commodity commodity) {
		// TODO Auto-generated method stub
		return sousuoMapper.sousuoStr(commodity);
	}

	@Override
	public List<Commodity> find(String param) {
		
		return sousuoMapper.find(param);
	}

}
