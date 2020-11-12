<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COFFEE BEAN</title>
    <link rel="stylesheet" href="./css/coffee.css">
    <link rel="stylesheet" href="./css/main_c.css">
</head>
<body>
	<%
		String id = null;
	if (session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	}
	%>
    <div class="wrap">
        <header class="hd">
            <nav class="tnb">
            <%
            if(id == null) {
            %>
            <ul class="top_menu">
                    <li>
                        <a href="login.jsp" class="login">로그인</a>
                        <a href="join.jsp" class="login">회원가입</a>
                        <a href="">매장찾기</a>
                        <a href="">채용정보</a>
                        <a href="">단체 및 기업구매</a>
                        <a href="">고객서비스</a>
                        <a href="#"><img src="./img/ico.png" alt=""></a>
                    </li>
                </ul>
            <%
            } else {
            %>
            <ul class="top_menu">
                    <li>
                    	<span class="login"><%=id %>님 환영합니다!</span>
                        <a href="memberInfo.jsp" class="login">회원정보관리</a>
                        <a href="logoutAction.jsp" class="login">로그아웃</a>
                        <a href="">매장찾기</a>
                        <a href="">채용정보</a>
                        <a href="">단체 및 기업구매</a>
                        <a href="">고객서비스</a>
                        <a href=""><img src="./img/ico.png" alt=""></a>
                    </li>
                </ul>
            <%
            }
            %>
            </nav>
            <nav class="gnb">
                <ul class="bot_menu">
                    <li>
                        <a href="main.jsp"><img src="./img/logo.png" alt=""></a>
                        <a href="">BUY ONLINE</a>
                        <a href="">MEMBER'S CLUB</a>
                        <a href="">MENU</a>
                        <a href="">STORE</a>
                        <a href="">THE COFFEE BEAN</a>
                        <a href="">CBTL</a>
                        <a href=""><img src="./img/search.png" alt=""></a>
                    </li>
                </ul>
                <div class="submenu">
                    <ul>
                        <li id="point_txt">커피</li>
                        <a href="">원두 가이드</a>
                        <a href="">라이트 로스트</a>
                        <a href="">미디엄 로스트</a>
                        <a href="">다크 로스트</a>
                    </ul>
                    <ul>
                        <li id="point_txt">티</li>
                        <a href="">티 가이드</a>
                        <a href="">클래식 티</a>
                        <a href="">허브티</a>
                        <a href="">프룻티</a>
                    </ul>
                    <ul>
                        <li id="point_txt">상품</li>
                        <a href="">소풍커피</a>
                        <a href="">스틱커피</a>
                        <a href="">아이스 텀블러</a>
                        <a href="">보온 텀블러</a>
                        <a href="">머그</a>
                        <a href="">파우더</a>
                        <a href="">푸드</a>
                    </ul>
                    <ul>
                        <li id="point_txt">커피빈 멤버스 클럽</li>
                        <a href="">멤버스 클럽</a>
                        <a href="">커피빈 카드</a>
                    </ul>  
                    <ul>
                        <li id="point_txt">마이 커피빈</li>
                        <a href="">나의 콩/e-쿠폰보기</a>
                        <a href="">나의 커피빈 카드</a>
                        <a href="">커피빈 카드 등록</a>
                        <a href="">분실신고/환불신청</a>
                    </ul>
                    <ul>
                        <li id="point_txt">음료</li>
                        <a href="">티</a>
                        <a href="">티 라떼</a>
                        <a href="">에스프레소 음료</a>
                        <a href="">아이스 블렌디드</a>
                        <a href="">브루드 커피</a>
                        <a href="">커피빈 주스</a>
                        <a href="">기타 제조음료</a>
                    </ul>
                    <ul>
                        <li id="point_txt">푸드</li>
                        <a href="">CBTL가이드</a>
                        <a href="">CBTL서비스</a>
                        <a href="">AS 안내</a>
                        <a href="">AS 신청</a>
                        <a href="">CBTL FAQ</a>
                        <a href="">제품설명서</a>
                        <a href="">기업용 머신  </a>
                    </ul>
                    <ul>
                        <li id="point_txt">상품</li>
                        <a href="">베이커리</a>
                        <a href="">케익</a>
                        <a href="">샌드위치</a>
                        <a href="">기타</a>
                    </ul>
                    <ul>
                        <li id="point_txt">매장찾기</li>
                        <a href="">매장찾기</a>
                    </ul>
                    <ul>
                        <li id="point_txt">커피빈 소식</li>
                        <a href="">새소식</a>
                        <a href="">프로모션</a>
                        <a href="notice.jsp">공지사항</a>
                        <a href="">QnA</a>
                    </ul>
                    <ul>
                        <li id="point_txt">CBTL</li>
                        <a href="">CBTL가이드</a>
                        <a href="">CBTL서비스</a>
                        <a href="">AS 안내</a>
                        <a href="">AS 신청</a>
                        <a href="">CBTL FAQ</a>
                        <a href="">제품설명서</a>
                        <a href="">기업용 머신  </a>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="contents">
            <div class="ban">
                <a href=""><img src="/img/ban1.jpg" alt=""></a>
            </div>
            <div class="ban">
                <a href=""><img src="/img/ban2.jpg" alt=""></a>
            </div>
            <li id="point_txt" style="font-weight: 550; font-size: 24px; text-align: center; margin-top: 50px;">MD'S Pick</li>
            <div class="product">
                <ul>
                    <li>
                        <a href="#">
                            <img src="./img/product1.jpg" alt="">
                        </a>
                        <span>초코시나몬 크래커</span> <br>
                        <span id="point_txt">2,800원</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/product2.jpg" alt="">
                        </a>
                        <span>얼그레이 크래커</span> <br>
                        <span id="point_txt">2,800원</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/product3.jpg" alt="">
                        </a>
                        <span>커피빈 헤이즐넛 라떼 파우치(10개입)</span> <br>
                        <span id="point_txt">15,000원</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/product4.jpg" alt="">
                        </a>
                        <span>커피빈 카페라떼 30T</span> <br>
                        <span id="point_txt">13,000원</span>
                    </li>
                </ul> 
            </div> 
            <li id="point_txt" style="clear: both; font-weight: 550; font-size: 24px; text-align: center; margin-top: 50px;">What's Menu</li>
            <div class="product2">
                <ul>
                    <li>
                        <a href="#">
                            <img src="./img/product5.jpg" alt="">
                        </a>
                        <span id="point_txt" style="font-weight: 550;">2020 06 Watermelon Oolong Tea</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/product6.jpg" alt="">
                        </a>
                        <span id="point_txt" style="font-weight: 550;">2020 06 Tiramisu Roll</span>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/product7.jpg" alt="">
                        </a>
                        <span id="point_txt" style="font-weight: 550;">2020 06 Colombia Natural</span>
                    </li>
                </ul> 
            </div> 
        </div>
        <footer class="ft">
            <div class="ft_top">
                <ul>
                    <li id="point_txt">Buy Online</li>
                    <a href="">VIEW ALL</a>
                    <a href="">커피</a>
                    <a href="">티</a>
                    <a href="">CBTL시스템</a>
                    <a href="">상품</a>
                    <a href="">멤버스몰</a>
                </ul>
                <ul>
                    <li id="point_txt">Member`s Club</li>
                    <a href="">커피빈 멤버스 클럽</a>
                    <a href="">나의 커피빈</a>
                    <a href="">멤버스 몰</a>
                </ul>
                <ul>
                    <li id="point_txt">Menu</li>
                    <a href="">음료</a>
                    <a href="">푸드</a>
                    <a href="">상품</a>
                    <a href="">카드</a>
                </ul>
                <ul>
                    <li id="point_txt">Store</li>
                    <a href="">매장 찾기</a>
                    <a href="">신규 매장</a>
                </ul>  
                <ul>
                    <li id="point_txt">The Coffee Bean</li>
                    <a href="">커피빈 코리아</a>
                    <a href="">커피빈 소식</a>
                    <a href="">사회공헌</a>
                    <a href="" style="font-weight: 550;">제휴 마케팅 제안</a>
                    <a href="">채용안내</a>
                    <a href="">신규 입점 제의</a>
                    <a href="">결산공고</a>
                </ul>
                <ul>
                    <li id="point_txt">CBTL</li>
                    <a href="">CBTL가이드</a>
                    <a href="">CBTL서비스</a>
                    <a href="">AS 안내</a>
                    <a href="">AS 신청</a>
                    <a href="">CBTL FAQ</a>
                    <a href="">제품설명서</a>
                    <a href="">기업용 머신  </a>
                </ul>
            </div>
            <div class="ft_bot">
                <ul class="ft_bot_menu">
                    <li><a href="">홈페이지 이용약관</a></li>
                    <li><a href="" id="point_txt">개인정보처리방침</a></li>
                    <li><a href="">영상정보처리기기운영방침</a></li>
                    <li><a href="">멤버스카드이용약관</a></li>
                    <li><a href="">위치기반서비스 이용약관</a></li>
                </ul>
                <ul class="copyright">
                    <li>(주)커피빈코리아 대표이사 박상배</li>
                    <li>사업자등록번호 120-86-07029</li>
                    <li>통신판매업신고 제 2010-서울강남-00560</li>
                </ul>
                <ul class="copyright">
                    <li>서울시 강남구 봉은사로 99길 7</li>
                    <li>고객센터 02-1577-4708 (09:00 - 18:00)</li>
                    <li>E-mail : cbk@coffeebeankorea.com</li>
                </ul>
                <br><li>호스팅사업자 : SK브로드밴드</li>
                <li>ⓒ 2016. The Coffee Bean. All rights reserved.</li>
            </div>
        </footer>
    </div>   
</body>
</html>