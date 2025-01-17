package com.project.service;

import com.project.model.PjeOrder;
import com.project.mapper.PjeSemiMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecentOrderService {
    private final PjeSemiMapper mapper;

    public RecentOrderService(PjeSemiMapper mapper) {
        this.mapper = mapper;
    }

    public List<PjeOrder> getRecentOrdersList() {
        return mapper.getRecentOrdersList();
    }
}
