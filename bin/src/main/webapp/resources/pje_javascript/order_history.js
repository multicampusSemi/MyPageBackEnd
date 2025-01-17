$(document).ready(function () {
    const orders = [
        { orderId: "001", productName: "Product 1", price: "$100", status: "주문 완료", quantity: 2 },
        { orderId: "002", productName: "Product 2", price: "$200", status: "반품 완료", quantity: 1 },
        { orderId: "003", productName: "Product 3", price: "$150", status: "취소 완료", quantity: 1 },
        { orderId: "004", productName: "Product 4", price: "$50", status: "주문 중", quantity: 3 },
    ];

    // Render the table
    let tableContent = "";
    orders.forEach(order => {
        tableContent += `
            <tr>
                <td>${order.orderId}</td>
                <td>${order.productName}</td>
                <td>${order.price}</td>
                <td>${order.status}</td>
                <td>${order.quantity}</td>
                <td>
                    ${
                        order.status === "주문 완료" || order.status === "주문 중"
                            ? `<button class="return-button" data-order="${order.orderId}">반품 신청</button>`
                            : "-"
                    }
                </td>
            </tr>
        `;
    });

    $("#orderTable").html(tableContent);

    // Bind return button click
    $(document).on("click", ".return-button", function () {
        const orderId = $(this).data("order");
        alert(`${orderId}번 주문의 반품 신청 페이지로 이동합니다.`);
        window.location.href = `../pje_html/return_order.html?orderId=${orderId}`;
    });
});
