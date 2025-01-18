<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>최근 주문 상품</title>
    <link rel="stylesheet" href="/pje_css/recent_orders.css"> <!-- CSS 파일 경로 -->
    <script src="/pje_js/recent_orders.js"></script> <!-- JS 파일 경로 -->
</head>
<body>
    <div class="sidebar">
        <ul>
            <li><a href="/recent-orders" class="active">최근 주문 상품</a></li>
            <li><a href="/orderHistory">주문 내역</a></li>
            <li><a href="/member-update">회원 정보 수정</a></li>
        </ul>
    </div>

    <div class="main-content">
        <h1>최근 주문 상품</h1>
        <table>
            <thead>
                <tr>
                    <th>상품 이미지</th>
                    <th>상품 이름</th>
                    <th>상품 가격</th>
                    <th>주문 날짜</th>
                    <th>수량</th>
                    <th>총 가격</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${recentOrders}">
                    <tr>
                        <td>
							<img src="/images/${order.photo'}" 
							     alt="상품 이미지" class="product-img">

                        </td>
                        <td>${order.productName != null ? order.productName : '상품 이름 없음'}</td>
                        <td>${order.price != null ? order.price + '원' : '가격 정보 없음'}</td>
                        <td>${order.orderDate != null ? order.orderDate : '날짜 정보 없음'}</td>
                        <td>${order.quantity != null ? order.quantity : '0'}</td>
                        <td>
                            <c:if test="${order.price != null && order.quantity != null}">
                                ${order.price * order.quantity}원
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
