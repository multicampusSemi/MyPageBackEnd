<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/pje_css/kdhedit.css">
</head>
<body>
    <div class="container">
        <!-- 왼쪽 사이드바 -->
        <nav class="sidebar">
            <ul>
                <li><a href="#">최근 주문 상품</a></li>
                <li><a href="#">주문 내역</a></li>
                <li><a href="#p">회원 정보 수정</a></li>
            </ul>
        </nav>
        <!-- 메인 컨텐츠 -->
        <main class="content">
            <div class="agreement">
                <div class="am">
                    <header>
                        <h1>회원 정보 수정</h1>
                    </header>
                    <main>
                        <form action="${pageContext.request.contextPath}/updateMember" method="post" id="updateForm">
                            <fieldset>
                                <legend>기본정보</legend>
                                <div class="form-group">
                                    <label for="name">이름 <span class="required">*</span></label>
                                    <input type="text" id="name" name="name" placeholder="이름을 입력하세요" value="${user.name}" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="birthdate">생년월일 <span class="required">*</span></label>
                                    <div class="birthdate">
                                        <input type="text" id="year" name="year" placeholder="년(4자리)" value="${user.birthYear}"readonly>
                                        <input type="text" id="month" name="month" placeholder="월" value="${user.birthMonth}"readonly>
                                        <input type="text" id="day" name="day" placeholder="일" value="${user.birthDay}"readonly>
                                    </div>
                                </div>
                              <div class="form-group">
								    <label for="phone">휴대폰 <span class="required">*</span></label>
								    <input type="text" id="phone" name="phone" placeholder="010-1234-5678" value="${user.phone}"readonly>
								</div>

                                <div class="form-group">
								    <label for="home_phone">일반 전화번호</label>
								    <input type="text" id="home_phone" name="home_phone" placeholder="예: 02-1234-5678" value="${user.homePhone}"readonly>
								</div>

                                <div class="form-group">
                                    <label for="id">아이디 <span class="required">*</span></label>
                                    <input type="text" id="id" name="id" placeholder="영문 소문자/숫자, 4-16자" value="${user.id}" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="password">비밀번호 <span class="required">*</span></label>
                                    <input type="password" id="password" name="password" placeholder="특수문자 포함 8~12자리">
                                </div>
                                <div class="form-group">
                                    <label for="passwordConfirm">비밀번호 확인 <span class="required">*</span></label>
                                    <input type="password" id="passwordConfirm" name="passwordConfirm">
                                </div>
                                <div class="form-group">
                                    <label for="zipcode">우편번호 <span class="required">*</span></label>
                                    <div class="inline-input">
                                        <input type="text" id="zipcode" name="zipcode" value="${user.zipcode}">
                                        <button type="button">찾기</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="address">상세주소</label>
                                    <input type="text" id="address" name="address" placeholder="상세주소를 입력하세요" value="${user.address}">
                                </div>
                                <div class="form-group">
                                    <label for="email">이메일 <span class="required">*</span></label>
                                    <div class="inline-input">
                                        <input type="email" id="email" name="email" placeholder="이메일을 입력하세요" value="${user.email}">
                                        <button type="button">인증하기</button>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="authCode">인증번호</label>
                                    <div class="inline-input">
                                        <input type="text" id="authCode" name="authCode" placeholder="인증번호 입력">
                                        <button type="button">인증</button>
                                    </div>
                                </div>
                            </fieldset>
                            <button type="submit" class="submit-btn">수정하기</button>
                        </form>
                    </main>
                </div>
            </div>
        </main>
    </div>
</body>
</html>
