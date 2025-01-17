<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>최근 주문 상품</title>
    <link rel="stylesheet" href="/pje_css/recent_orders.css">
    <script src="pje_js/recent_orders.js"></script>
</head>
<body>
    <h1>최근 주문 상품</h1>
    <table>
        <thead>
            <tr>
                <th>상품 이름</th>
                <th>주문 날짜</th>
                <th>수량</th>
                <th>총 가격</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="order" items="${recentOrders}">
                <tr>
                    <td>${order.productName}</td>
                    <td>${order.orderDate}</td>
                    <td>${order.quantity}</td>
                    <td>${order.totalPrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
