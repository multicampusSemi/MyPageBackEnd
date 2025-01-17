// /pje_javascript/order_history.js
$(document).ready(function () {
    const orderData = [
        { orderId: "A12345", productName: "상품1", quantity: 2, price: "20,000원", status: "배송 중" },
        { orderId: "B67890", productName: "상품2", quantity: 1, price: "50,000원", status: "배송 완료" },
        { orderId: "C11223", productName: "상품3", quantity: 3, price: "15,000원", status: "준비 중" },
    ];

    const $tableBody = $("#orderTable tbody");

    $.each(orderData, function (index, order) {
        const row = `
            <tr>
                <td>${order.orderId}</td>
                <td>${order.productName}</td>
                <td>${order.quantity}</td>
                <td>${order.price}</td>
                <td>${order.status}</td>
            </tr>
        `;
        $tableBody.append(row);
    });
});
