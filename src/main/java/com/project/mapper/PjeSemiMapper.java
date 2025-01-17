package com.project.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.project.model.PjeOrder;
import com.project.model.PjeRecent;

import java.util.List;

@Mapper
public interface PjeSemiMapper {
    List<PjeOrder> findAll();

	List<PjeOrder> getRecentOrdersList();

    List<PjeRecent> getRecentOrders(); // 새로운 메서드 (최근 주문)
}
