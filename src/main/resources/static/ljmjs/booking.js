


function generateProductRows(cartItems) {
     console.log(cartItems); // 제대로 전달된 배열을 확인
  
    
    const table = document.querySelector('.booking-table tbody');
     if (!cartItems || cartItems.length === 0) {
        console.error('No cart items to display');
        return;  // cartItems가 비어있다면 함수 종료
    }
    cartItems.forEach((item, index) => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td><input type="checkbox" class="select-check" data-id="${item.productId}" onchange="updateShippingFee()"/></td>
            <td><img src="${item.imageUrl}" alt="${item.productName}"/><br/>${item.productName}</td>
            <td><p>${item.productdescription}</p></td>
            <td>${item.shippingFee}</td>
            <td>
                <div class="count">
                    <button onclick="decrease(${index})">-</button>
                    <input type="text" id="numberInput${index}" value="${item.productCount}" onchange="updateShippingFee()" min="0"/>
                    <button onclick="increase(${index})">+</button>
                </div>
                <p>수량</p>
            </td>
             <td id="price-${item.bookingId}">${item.productPrice}</td>
        `;
//			 <td id="price-${index}">${parseInt(parseFloat(item.productPrice) * parseInt(item.productCount))}</td>
        table.appendChild(row);
    });
    updateShippingFee();  // 렌더링 후, 초기 가격/배송비 계산
}



function updateShippingFee() {
    let totalShippingFee = 0;
    let totalPrice = 0;

    const checkboxes = document.querySelectorAll('.select-check');
    checkboxes.forEach(function (checkbox, index) {
        if (checkbox.checked) {
            const quantity = parseInt(document.getElementById(`numberInput${index}`).value);
            const shippingFee = parseFloat(cartItems[index].shippingFee);  // 배송비
            const price = parseFloat(cartItems[index].productPrice);  // 가격

            if (quantity > 0) {
                totalShippingFee += shippingFee;
                totalPrice += price * quantity;
            }
        }
    });

    const totalAmount = totalShippingFee + totalPrice;
    document.querySelector('.allprice').textContent = `배송비 ${totalShippingFee} + 가격 ${totalPrice} = ${totalAmount}원`;
}

function calculateTotalPrice() {
    let totalPrice = 0;
    const checkboxes = document.querySelectorAll('.select-check');
    checkboxes.forEach(function(checkbox, index) {
        if (checkbox.checked) {
            const quantity = document.getElementById(`numberInput${index}`).value;
            const price = products[index].price;
            totalPrice += price * quantity;
        }
    });
    return totalPrice;
}




function increase(index){
    var input = document.getElementById("numberInput" + index);
    var currentValue = parseInt(input.value);
    input.value = currentValue + 1;
    updateShippingFee();
}

function decrease(index){
    var input = document.getElementById("numberInput" + index);
    var currentValue = parseInt(input.value);
    if(currentValue > 0){
        input.value = currentValue - 1;
	    updateShippingFee();
    }else{
        alert("0보다 작을 수 없습니다.")
    }
}


function allCheck(){
    var allCheckbox = document.getElementById("all-check");
    var checkboxes = document.querySelectorAll(".select-check");
    checkboxes.forEach(function(checkbox){
        checkbox.checked = allCheckbox.checked;
    })
    updateShippingFee();
}

function order() {
    const selectedProducts = [];
    const rows = document.querySelectorAll('.booking-table tbody tr');

    rows.forEach((row) => {
        const checkbox = row.querySelector('.select-check');
        if (checkbox && checkbox.checked) {
            const productId = checkbox.getAttribute('data-id');
            const quantity = row.querySelector('input[id^="numberInput"]').value;
            if (productId && quantity) {
                selectedProducts.push({ productId: productId, quantity: quantity });
            }
        }
    });
    if (selectedProducts.length > 0) {
        $.ajax({
            url: '/order/create',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(selectedProducts),
            success: function () {
                alert('주문이 완료되었습니다.');
                window.location.href = '/order';
            },
            error: function () {
                alert('주문에 실패했습니다.');
            }
        });
    } else {
        alert('주문할 상품을 선택하세요.');
    }
}
    

function deleteSelected() {

    const selectedIds = [];
    const checkboxes = document.querySelectorAll('.select-check:checked');

//    checkboxes.forEach(function (checkbox) {
//        //const productId = checkbox.getAttribute('data-id');
//         const productId = parseInt(checkbox.getAttribute('data-id'), 10);
//         if (productId) {  // productId가 NaN이 아니고 유효한 값인지 체크
//        selectedIds.push(productId);
//    }
checkboxes.forEach(function (checkbox) {
    const productId = checkbox.getAttribute('data-id');
    console.log('data-id:', productId);  // data-id가 제대로 출력되는지 확인
    if (productId) {
        const parsedProductId = parseInt(productId, 10);
        console.log('parsedProductId:', parsedProductId);  // parseInt 후 값 확인
        if (!isNaN(parsedProductId)) {
            selectedIds.push(parsedProductId);
        } else {
            console.error('Invalid productId:', productId);  // 유효하지 않으면 에러 메시지 출력
        }
    } else {
        console.error('data-id is null or undefined');
    }


});

    if (selectedIds.length > 0) {
        $.ajax({
            url: '/cart/delete',
            type: 'POST',
            data: { productIds: selectedIds.join(',') },  // JSON이 아닌 URL 파라미터로 전달
            success: function () {
                checkboxes.forEach(function (checkbox) {
                    const row = checkbox.closest('tr');
                    if (row) {
                        row.remove();
                    }
                });
                updateShippingFee();  // 삭제 후 배송비 업데이트
            },
            error: function () {
                alert('선택한 상품 삭제에 실패했습니다.');
            }
        });
    } else {
        alert('삭제할 상품을 선택하세요.');
    }
}