package com.project.controller;

import com.project.model.PjeRecent;
import com.project.service.RecentOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PjeRecentController {

    @Autowired
    private RecentOrderService recentOrderService;

    @GetMapping("/recent-orders")
    public String getRecentOrders(Model model) {
        List<PjeRecent> recentOrders = recentOrderService.getRecentOrders();
        model.addAttribute("recentOrders", recentOrders); // DB 데이터를 모델에 추가
        return "recent_orders"; // JSP 파일 이름
    }
}
