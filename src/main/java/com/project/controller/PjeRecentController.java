package com.project.controller;

import com.project.model.PjeRecent;
import com.project.service.RecentOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class PjeRecentController {
    private final RecentOrderService recentOrderService;

    public PjeRecentController(RecentOrderService recentOrderService) {
        this.recentOrderService = recentOrderService;
    }

    @GetMapping("/recent-orders")
    public String recentOrders(Model model) {
        List<PjeRecent> recentOrders = recentOrderService.getRecentOrders();
        model.addAttribute("recentOrders", recentOrders);

        // 총 가격 계산
        int totalAmount = recentOrders.stream()
                                      .mapToInt(order -> order.getPrice() * order.getQuantity())
                                      .sum();
        model.addAttribute("totalAmount", totalAmount);

        return "recent_orders";
    }
}
