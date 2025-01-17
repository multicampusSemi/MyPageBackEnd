<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 내역</title>
    <link rel="stylesheet" href="<c:url value='/resources/pje_css/order_history.css' />">
    <script src="<c:url value='/resources/pje_js/order_history.js' />"></script>
</head>
<body>
    <header>
        <h2>My Page</h2>
    </header>
    <nav>
        <ul>
            <li><a href="<c:url value='/recentOrders' />">최근 주문 상품</a></li>
            <li><a href="<c:url value='/orderHistory' />">주문 내역</a></li>
            <li><a href="https://example.com/edit_profile">회원 정보 수정</a></li>
        </ul>
    </nav>
    <main>
        <h1>주문 내역</h1>
        <table>
            <thead>
                <tr>
                    <th>주문 번호</th>
                    <th>상품 이름</th>
                    <th>결제 금액</th>
                    <th>주문 상태</th>
                    <th>주문 수량</th>
                    <th>반품</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td>${order.orderId}</td>
                        <td>${order.productName}</td>
                        <td>${order.paymentAmount}</td>
                        <td>${order.status}</td>
                        <td>${order.quantity}</td>
                        <td><a href="<c:url value='/returnOrder?orderId=${order.orderId}' />">반품</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
</body>
</html>
