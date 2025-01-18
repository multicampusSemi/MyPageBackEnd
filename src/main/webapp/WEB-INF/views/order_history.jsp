<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>주문 내역</title>
    <link rel="stylesheet" href="/pje_css/order_history.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="/pje_js/order_history.js"></script>
</head>
<body>
    <div class="sidebar">
        <ul>
            <li><a href="/recent-orders">최근 주문 상품</a></li>
            <li><a href="/orderHistory" class="active">주문 내역</a></li>
            <li><a href="/member-update">회원 정보 수정</a></li>
        </ul>
    </div>

    <div class="main-content">
        <h1>주문 내역</h1>
        <table id="orderTable">
            <thead>
                <tr>
                    <th>주문 번호</th>
                    <th>상품 이름</th>
                    <th>수량</th>
                    <th>가격</th>
                    <th>상태</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${orderHistory}">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.productName}</td>
                        <td>${order.quantity}</td>
                        <td>${order.price}</td>
                        <td>${order.status}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="4" style="text-align:right; font-weight:bold;">총 가격</td>
                    <td>${totalPrice}</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
