package com.yc.tzsc.mapper;

import java.util.List;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.PaginationBean;

public interface SousuoMapper {

	List<Commodity> souMenu(String menuName);

	List<Commodity> menuNo(int menuNo);

	MinType selectMinTypeName(int strNo);

	PaginationBean<Commodity> listPartSousuo(PaginationBean<Commodity> userBean);

	List<Commodity> sousuoStr(Commodity commodity);

	List<Commodity> find(String param);

}
