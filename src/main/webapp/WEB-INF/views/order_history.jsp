<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>주문 내역</title>
    <link rel="stylesheet" href="/pje_css/order_history.css">
    <script src="pje_js/order_history.js"></script>
</head>
<body>
    <h1>주문 내역</h1>
    <table>
        <thead>
            <tr>
                <th>주문 번호</th>
                <th>주문 날짜</th>
                <th>상품 이름</th>
                <th>상태</th>
                <th>총 금액</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="history" items="${orderHistory}">
                <tr>
					<td>${history.id}</td>
					<td>${history.userId}</td>
					<td>${history.totalPrice}</td>
					<td>${history.status}</td>
					<td>${history.createdAt}</td>
					<td>${history.updatedAt}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
