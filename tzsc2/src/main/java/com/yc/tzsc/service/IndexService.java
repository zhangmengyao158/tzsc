package com.yc.tzsc.service;

import java.util.List;

import com.yc.tzsc.entity.Commodity;
import com.yc.tzsc.entity.MinType;
import com.yc.tzsc.entity.SMixType;

public interface IndexService {

	List<MinType> listMenu(int menu);
	
	List<MinType> listMenu();

	List<SMixType> listMinMenu(int menu);

	List<Commodity> newShop();

	List<Commodity> hotShop();


}
