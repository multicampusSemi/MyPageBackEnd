package com.project.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.project.model.PjeOrder;
import com.project.model.PjeRecent;
import com.project.model.PjeOrderDetails;

@Mapper
public interface PjeSemiMapper {
    // 모든 주문 조회
    List<PjeOrder> findAll();

    // 최근 주문 조회
    List<PjeRecent> getRecentOrders();

    // 특정 주문 상세 정보 조회
    List<PjeOrderDetails> getOrderDetails(@Param("orderId") int orderId);
}
