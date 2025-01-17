package com.project.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.project.model.PjeOrder;

import java.util.List;

@Mapper
public interface PjeSemiMapper {
    List<PjeOrder> findAll();

	List<PjeOrder> getRecentOrdersList();


}
