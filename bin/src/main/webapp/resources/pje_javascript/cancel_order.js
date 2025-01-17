$(document).ready(function () {
    console.log("cancel_order.js 로드 완료");

    // 모든 버튼의 pointer-events 활성화
    $("button").css("pointer-events", "auto");

    // 주문 취소 버튼 클릭 이벤트
    $(document).on("click", "#cancelButton", function () {
        console.log("#cancelButton 클릭 이벤트 발생");

        // 취소 사유 입력 확인
        const reason = $("#cancelReason").val().trim();
        if (!reason) {
            alert("취소 사유를 입력해주세요.");
            return;
        }

        // 취소 완료 메시지 및 관리자 페이지 이동
        alert("취소가 완료되었습니다.");
        window.location.href = "../pje_html/admin_page.html"; // 관리자 페이지로 이동
    });
});
