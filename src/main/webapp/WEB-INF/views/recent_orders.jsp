<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>최근 주문 상품</title>
    <link rel="stylesheet" href="/pje_css/recent_orders.css">
    <style>
        .product-img {
            width: 250px;
            height: 350px;
            object-fit: cover; /* 이미지가 비율을 유지하며 셀 안에 맞게 조정 */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: rgba(177, 176, 176, 0.205);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 4, 0, 0.5);
            overflow: hidden;
            text-align: center;
            margin-top: 20px;
        }
        thead th {
            background-color: rgb(60, 60, 95);
            color: #fff;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
        }
        tbody td {
            padding: 15px;
            font-size: 18px;
            color: rgb(60, 60, 60);
            border-bottom: 1px solid rgba(200, 200, 200, 0.5);
            word-break: break-word;
        }
        .total-price {
            font-weight: bold;
            text-align: center;
            vertical-align: middle;
            padding: 15px;
            border-top: 2px solid #444;
            font-size: 18px;
            background-color: rgba(240, 240, 240, 0.5);
        }
    </style>
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
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${recentOrders}">
                    <tr>
                        <td>
                            <img src="/images/${order.photo}" alt="상품 이미지" class="product-img">
                        </td>
                        <td>${order.productName}</td>
                        <td>${order.price} 원</td>
                        <td>${order.orderDate}</td>
                        <td>${order.quantity}</td>
                    </tr>
                </c:forEach>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="5" class="total-price">전체 총 가격: ${totalAmount} 원</td>
                </tr>
            </tfoot>
        </table>
    </div>
</body>
</html>
