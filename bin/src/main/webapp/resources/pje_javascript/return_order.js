$(document).ready(function () {
    // 모든 버튼의 pointer-events 활성화
    $("button").css("pointer-events", "auto");

    // 반품 신청 버튼 클릭 이벤트
    $(document).on("click", "#returnButton", function () {
        const reason = $("#returnReason").val().trim();
        if (!reason) {
            alert("반품 사유를 입력해주세요.");
            return;
        }
        alert("반품 신청이 완료되었습니다.");
        window.location.href = "../pje_html/admin_page.html"; // 관리자 페이지로 이동
    });
});
