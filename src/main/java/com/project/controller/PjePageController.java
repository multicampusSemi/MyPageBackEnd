package com.project.controller;

import com.project.model.PjeOrder;
import com.project.service.OrderHistoryService;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PjePageController {
    private final OrderHistoryService historyService;

    public PjePageController(OrderHistoryService historyService) {
        this.historyService = historyService;
    }

    @GetMapping("/orderHistory")
    public String orderHistory(Model model) {
        List<PjeOrder> orders = historyService.getOrderHistoryList();
        int totalPrice = orders.stream()
                               .mapToInt(order -> order.getPrice() * order.getQuantity())
                               .sum();
        model.addAttribute("orderHistory", orders);
        model.addAttribute("totalPrice", totalPrice); // 총 가격 추가
        return "order_history";
    }
}
