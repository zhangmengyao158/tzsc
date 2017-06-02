package com.yc.tzsc.service;

import java.util.List;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.PaginationBean;

public interface SousuoService {

	List<Commodity> souMenu(String menuName);

	List<Commodity> menuNo(int menuNo);

	List<Commodity> sousuoStr(Commodity commodity);
	
	MinType selectMinTypeName(int strNo);

	PaginationBean<Commodity> listPartSousuo(String currPage, String pageSize);

	List<Commodity> find(String param);

}
