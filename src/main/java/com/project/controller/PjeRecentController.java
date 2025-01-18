package com.project.controller;

import com.project.service.RecentOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PjeRecentController {
    private final RecentOrderService recentOrderService;

    public PjeRecentController(RecentOrderService recentOrderService) {
        this.recentOrderService = recentOrderService;
    }

    @GetMapping("/recent-orders")
    public String recentOrders(Model model) {
        model.addAttribute("recentOrders", recentOrderService.getRecentOrders());
        return "recent_orders";
    }
}
