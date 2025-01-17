<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>최근 주문 상품</title>
	<link rel="stylesheet" href="<c:url value='/resources/pje_css/recent_orders.css' />">
	<script src="<c:url value='/resources/pje_js/recent_orders.js' />"></script>
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
        <h1>최근 주문 상품</h1>
        <table>
            <thead>
                <tr>
                    <th>상품 이름</th>
                    <th>결제 금액</th>
                    <th>주문 수량</th>
                    <th>색상</th>
                    <th>옵션</th>
                </tr>
            </thead>
            <tbody id="recentOrdersTable">
                <!-- Data dynamically inserted by JavaScript -->
            </tbody>
        </table>
    </main>
</body>
</html>
