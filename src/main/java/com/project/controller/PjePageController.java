package com.project.controller;

import com.project.model.PjeOrder;
import com.project.service.OrderHistoryService;

import jakarta.servlet.http.HttpSession;

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
    public String orderHistory(HttpSession session, Model model) {
        Integer userId = (Integer) session.getAttribute("userId");  // 세션에서 사용자 ID 가져오기
        if (userId == null) {
            return "redirect:/login";  // 로그인하지 않은 사용자는 로그인 페이지로 이동
        }

        List<PjeOrder> orders = historyService.getOrderHistoryList(userId);  // 사용자 ID로 주문 내역 조회
        int totalPrice = orders.stream()
                               .mapToInt(order -> order.getPrice() * order.getQuantity())
                               .sum();
        model.addAttribute("orderHistory", orders);
        model.addAttribute("totalPrice", totalPrice);
        return "order_history";
    }

}
