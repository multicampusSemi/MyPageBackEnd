package com.project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.model.PjeOrder;
import com.project.service.OrderHistoryService;


@Controller
public class PjePageController {

    private final OrderHistoryService historyService;

    public PjePageController(OrderHistoryService orderHistoryService){
        this.historyService = orderHistoryService;
    }

    @GetMapping("/orderHistory")
    public String orderHistory(Model model) {
        List<PjeOrder> list = historyService.getOrderHistoryList();
        System.out.println(list);
        model.addAttribute("orderHistory", list);
        return "order_history"; // JSP 파일 이름
    }

    @GetMapping("/recentOrders")
    public String recentOrders() {
        return "recent_orders"; // JSP 파일 이름
    }
}
