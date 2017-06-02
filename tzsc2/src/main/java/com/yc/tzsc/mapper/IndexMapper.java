package com.yc.tzsc.mapper;

import java.util.List;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;

public interface IndexMapper {
	
	List<MinType> listMenu(int menu);

	List<SMixType> listMinMenu(int menu);
	
	List<MinType> listMenu1();

	List<Commodity> newShop();

	List<Commodity> hotShop();


}
