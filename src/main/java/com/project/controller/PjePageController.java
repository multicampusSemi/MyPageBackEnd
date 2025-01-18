package com.project.controller;

import com.project.service.OrderHistoryService;
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
        model.addAttribute("orderHistory", historyService.getOrderHistoryList());
        return "order_history";
    }
}
