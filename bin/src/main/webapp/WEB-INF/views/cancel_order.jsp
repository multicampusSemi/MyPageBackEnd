<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 취소</title>
	<link rel="stylesheet" href="<c:url value='/resources/pje_css/cancel_order.css' />">
	<script src="<c:url value='/resources/pje_js/cancel_order.js' />"></script>
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
        <h1>주문 취소</h1>
        <textarea id="cancelReason" placeholder="취소 사유를 입력하세요"></textarea>
        <button id="cancelButton" class="cancel-order-button">주문 취소</button>
    </main>
</body>
</html>
