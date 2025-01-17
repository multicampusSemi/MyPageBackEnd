<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>반품 신청</title>
	<link rel="stylesheet" href="<c:url value='/resources/pje_css/return_order.css' />">
	<script src="<c:url value='/resources/pje_js/return_order.js' />"></script>
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
        <h1>반품 신청</h1>
        <div>
            <img src="../images/product1.jpg" alt="Product 1">
            <p>상품 이름: Product 1</p>
            <p>상품 가격: $100</p>
        </div>
        <textarea id="returnReason" placeholder="반품 사유를 입력하세요"></textarea>
        <p class="info">※ 신청 일 기준 1~3일 안에 문 앞에 두면 회수해가겠습니다.</p>
        <button id="returnButton">반품 신청</button>
    </main>
</body>
</html>
