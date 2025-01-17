package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.mapper.PjeSemiMapper;
import com.project.model.PjeOrder;

import lombok.RequiredArgsConstructor;



@Service
@RequiredArgsConstructor
public class OrderHistoryService {
	
	private final PjeSemiMapper pjeSemiMapper;
	
	public OrderHistoryService(PjeSemiMapper pjeSemiMapper) {
		this.pjeSemiMapper = pjeSemiMapper;
	}

	public List<PjeOrder> getOrderHistoryList() {
		// TODO Auto-generated method stub
		return pjeSemiMapper.findAll();
	}
	
}
