package com.sy.service;

import java.util.List;

import com.sy.pojo.Orders;
import com.sy.util.PagerModel;

public interface OrdersS {

	public PagerModel<Orders> findall(PagerModel<Orders> pm);
}
