$(document).ready(function () {
    const orders = [
        { productName: "Product 1", price: "$100", quantity: 2, color: "White" },
        { productName: "Product 2", price: "$200", quantity: 1, color: "Black" },
        { productName: "Product 3", price: "$150", quantity: 1, color: "Blue" },
        { productName: "Product 4", price: "$50", quantity: 3, color: "White" },
    ];

    // Render the table
    let tableContent = "";
    orders.forEach((order, index) => {
        tableContent += `
            <tr data-index="${index}">
                <td>${order.productName}</td>
                <td>${order.price}</td>
                <td>${order.quantity}</td>
                <td>
                    <select class="color-select" data-index="${index}">
                        <option value="White" ${order.color === "White" ? "selected" : ""}>White</option>
                        <option value="Black" ${order.color === "Black" ? "selected" : ""}>Black</option>
                        <option value="Blue" ${order.color === "Blue" ? "selected" : ""}>Blue</option>
                    </select>
                </td>
                <td>
                    <button class="cancel-button" data-id="${index}">취소</button>
                </td>
            </tr>
        `;
    });

    $("#recentOrdersTable").html(tableContent);

    // Bind cancel button click
    $(document).on("click", ".cancel-button", function () {
        const orderIndex = $(this).data("id");
        const orderName = orders[orderIndex].productName;
        window.location.href = `../pje_html/cancel_order.html?orderId=${orderIndex}`;
    });

    // Bind color selection change
    $(document).on("change", ".color-select", function () {
        const orderIndex = $(this).data("index");
        const selectedColor = $(this).val();

        // Update the color in the orders array
        orders[orderIndex].color = selectedColor;

        alert(`${orders[orderIndex].productName}의 색상이 ${selectedColor}(으)로 변경되었습니다.`);
    });
});
