package com.project.service;

import com.project.mapper.PjeSemiMapper;
import com.project.model.PjeRecent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class RecentOrderService {

    @Autowired
    private PjeSemiMapper mapper;

    public List<PjeRecent> getRecentOrders() {
        return mapper.getRecentOrders();
    }
    
    public List<PjeRecent> getRecentOrdersFromAPI() {
        String apiUrl = "https://external-api.com/orders"; // 외부 API URL
        RestTemplate restTemplate = new RestTemplate();
        PjeRecent[] recentOrders = restTemplate.getForObject(apiUrl, PjeRecent[].class);
        return List.of(recentOrders);
    }
}
