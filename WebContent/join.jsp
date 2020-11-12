<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COFFEE BEAN</title>   
    <link rel="stylesheet" href="./css/coffee.css">
    <link rel="stylesheet" href="./css/join.css"> 
    <style>
        * { margin: 0; padding: 0;}
        body, html { width: 100%;}
        ul { list-style: none; }
        a { text-decoration: none; } 
    </style>
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
                        <a href=""><img src="./img/ico.png" alt=""></a>
                    </li>
                </ul>
            <%
            } else {
            %>
            <ul class="top_menu">
                    <li>
                    	<span class="login"><%=id %>님 환영합니다!</span>
                        <a href="#" class="login">회원정보관리</a>
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
                        <a href="main.jsp"><img src="/img/logo.png" alt=""></a>
                        <a href="">BUY ONLINE</a>
                        <a href="">MEMBER'S CLUB</a>
                        <a href="">MENU</a>
                        <a href="">STORE</a>
                        <a href="">THE COFFEE BEAN</a>
                        <a href="">CBTL</a>
                        <a href=""><img src="img/search.png" alt=""></a>
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
                        <a href="">공지사항</a>
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
        <h2 class="c_tit">JOIN MEMBER</h2>
        <div class="member_wrap">
            <ul class="join1_icon">
                <li>
                    <img src="./img/join_step01_on.jpg" alt="회원약관 동의">
                    <p>회원약관 동의</p>
                </li>
                <li class="bar"><img src="./img/join_bar_01.gif"   alt=""></li>
                <li>
                    <img src="./img/join_step02.jpg" alt="회원정보 입력">
                    <p>회원정보 입력</p>
                </li>
                <li class="bar"><img src="./img/join_bar_01.gif"   alt=""></li>
                <li>
                    <img src="./img/join_step03.jpg" alt="가입완료">
                    <p id="com">가입완료</p>
                </li>                
            </ul>
            <div class="join1_txt">
                <p>
                    <span class="cfk">(주)커피빈 코리아</span>의 서비스를 이용하기 위해서는 이용 약관을 읽어보시고 동의하셔야 합니다.<br>
회원가입은 무료이며, 가입 즉시 서비스를 이용하실 수 있습니다. (회원가입은 만 14세 이상부터 가능합니다.)<br>
<span>아래의 약관을 반드시 읽고 동의해주십시오.</span>
                </p>
            </div>
            <form name="agreeForm" class=>
                <h2 class="box_tit">서비스 이용약관</h2>
                <div class="join1_box">                    
                    <h2 class="MAT0">제 1 장 총칙</h2>
                                <h3> 제 1 조 (목적)</h3>
                                <ol>
                                    <li>1. 본 약관은 상품구입 사이트가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 상품구입 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.</li>
                                </ol>
                                <h3>제 2 조 (약관의 효력과 변경)</h3>
                                <ol>
                                    <li>1. 상품구입 사이트는 귀하가 본 약관 내용에 동의하는 경우 상품구입 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다.</li>
                                    <li>2. 상품구입 사이트는 본 약관을 사전 고지 없이 변경할 수 있고 변경된 약관은 상품구입 사이트 내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다.<br>
                                        이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소 (회원탈락)할 수 있으며 계속 사용의 경우는 약관 변경에 대한 동의로 간주 됩니다.</li>
                                </ol>
                                <h3>제 3 조 (약관 외 준칙)</h3>
                                <ol>
                                    <li>1. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 프로그램보호법 및 기타 관련 법령의 규정에 의합니다.</li>
                                </ol>
                                <h3>제 4 조 (용어의 정의)</h3>
                                <p>본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
                                <ol>
                                    <li>1. 이용자 : 본 약관에 따라 상품구입 사이트가 제공하는 서비스를 받는 자.</li>
                                    <li>2. 가입 : 상품구입 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위.</li>
                                    <li>3. 회원 : 상품구입 사이트에 개인 정보를 제공하여 회원 등록을 한 자로서 상품구입 사이트가  제공하는 서비스를 이용할 수 있는 자.</li>
                                    <li>4. 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.</li>
                                    <li>5. 탈퇴 : 회원이 이용계약을 종료시키는 행위.</li>
                                </ol>
                                <h2>제 2 장 서비스 제공 및 이용</h2>
                                <h3>제 5 조 (이용계약의 성립)</h3>
                                <ol>
                                    <li>1. 이용계약은 신청자가 온라인으로 상품구입 사이트에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하는 것으로 성립됩니다.</li>
                                    <li> 2. 상품구입 사이트는 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.
                                        <ol>
                                            <li>① 다른 사람의 명의를 사용하여 신청하였을 때</li>
                                            <li>② 이용계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때</li>
                                            <li>③ 다른 사람의 상품구입 사이트 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때</li>
                                            <li>④ 상품구입 사이트를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우</li>
                                            <li>⑤ 기타 상품구입 사이트가 정한 이용신청요건이 미비 되었을 때</li>
                                        </ol>
                                    </li>
                                </ol>
                                <h3>제 6 조 (회원정보 사용에 대한 동의)</h3>
                                <ol>
                                    <li>1. 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.</li>
                                    <li>2. 상품구입 사이트의 회원 정보는 다음과 같이 사용, 관리, 보호됩니다.
                                        <ol>
                                            <li> ① 개인정보의 사용 : 상품구입 사이트는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다.<br>
                                                    단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리 위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 귀하가 상품구입 사이트에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.</li>
                                            <li>② 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할 수 있습니다.</li>
                                             <li>③ 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해 관리되고 있습니다.<br>
                                                 따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 안되며, 작업 종료 시에는 반드시 로그아웃 해 주시기 바랍니다.</li>
                                        </ol>
                                    </li>
                                    <li>3. 회원이 본 약관에 따라 이용신청을 하는 것은, 상품구입 사이트가 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.</li>
                                </ol>
                                <h3>제 7 조 (사용자의 정보 보안)</h3>
                                <ol>
                                    <li>1. 가입 신청자가 상품구입 사이트 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.</li>
                                    <li>2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용 되었다는 사실을 발견한 경우에는 즉시 상품구입 사이트에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다. 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 상품구입 사이트는 책임을 부담하지 아니합니다.</li>
                                </ol>
                                <h3>제 8 조 (서비스의 중지)</h3>
                                <ol>
                                    <li>1. 상품구입 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다.</li>
                                </ol>
                                <h3>제 9 조 (서비스의 변경 및 해지)</h3>
                                <ol>
                                    <li>1. 상품구입 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다. 의한 손해에 대하여 책임을 부담하지 아니합니다.</li>
                                </ol>
                                <h3> 제 10 조 (게시물의 저작권)</h3>
                                <ol>
                                    <li>1. 귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.</li>
                                    <li>2. 상품구입 사이트는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판운영 원칙에 따라 사전 통지 없이 삭제할 수 있습니다.</li>
                                     <li>3. 귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가 부담하여야 합니다.</li>
                                </ol>
                                <h2>제 3 장 의무 및 책임</h2>
                                <h3>제 11 조 (상품구입 사이트의 의무)</h3>
                                <ol>
                                    <li>1. 상품구입 사이트는 회원의 개인 신상 정보를 본인의 승낙없이 타인에게 누설, 배포하지 않습니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.</li>
                                </ol>
                                <h3>제 12 조 (회원의 의무)</h3>
                                <ol>
                                    <li>1. 회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한  정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</li>
                                    <li>2. 회원은 상품구입 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.</li>
                                </ol>
                                <h2>제 4 장 기타</h2>
                                <h3>제 13 조 (양도금지)</h3>
                                <ol>
                                    <li>1. 회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없습니다.</li>
                                </ol>
                                <h3>제 14 조 (손해배상)</h3>
                                <ol>
                                    <li>1. 상품구입 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 상품구입 사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.</li>
                                </ol>
                                <h3>제 15 조 (면책조항)</h3>
                                 <ol>
                                    <li>1. 상품구입 사이트는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. 상품구입 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다. 금전적 거래등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.</li>
                                </ol>
                                <h3>제 16 조 (재판관할)</h3>
                                 <ol>
                                    <li>1. 상품구입 사이트와 이용자 간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 대한민국의 법원에 제기합니다.</li>
                                </ol>                    
                </div>
                <p class="join_check">
                    <input id="useAgree" type="checkbox" ><label for="useAgree" class="MAL5"> (필수) 이용약관에 동의합니다.</label>
                </p>
                <h2 class="box_tit">개인정보 수집 및 이용 동의</h2>
                <div class="join1_box">                    
                    <h2>개인정보의 수집 및 이용 동의</h2>
                                <ol>
                                    <li>1. 개인정보의 수집 및 이용 목적
                                        <ol>
                                            <li>가. 서비스 제공에 관한 업무 이행 - 컨텐츠 제공, 특정 맞춤 서비스 제공(마이페이지, 뉴스레터 등), 기업 애로상담</li>
                                            <li>나. 회원관리 <br>- 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 가입의사 확인, 가입 및 가입횟수 제한, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 공지사항 전달</li>
                                        </ol>
                                    </li>
                                    <li>2. 수집하는 개인정보의 항목
                                        <ul>						                                	
                                            <li>
                                                &lt;개인회원 가입&gt;<br>필수항목 : 아이디, 비밀번호, 이름, 핸드폰번호, 이메일, 암호화된 이용자 확인값(CI)<br>
                                                          선택항목 : 이메일 수신여부, 문자수신여부, 웹진구독여부
                                            </li>
                                            <li>
                                                &lt;기업회원 가입&gt;<br>필수항목 : 아이디, 비밀번호, 담당자 이름, 담당자 전화번호, 핸드폰번호, 이메일, (법인기업의 경우 법인등록번호), 기업정보(회사명, 대표자명, 사업자등록번호, 회사전화번호, 주소, 지역, 대표업종), 암호화된 이용자 확인값(CI)<br>
                                                선택항목 : 팩스번호, 홈페이지주소, 회사이메일주소, 창업일자, 부업종, 매출액, 수출액, 상시근로자 수, 주요생산품명, 이메일 수신여부, 문자수신여부, 이메일 수신여부, 문자수신여부, 웹진구독여부
                                            </li>
                                            <li>
                                                &lt;전문가 가입&gt;<br>필수항목 : 아이디, 비밀번호, 이름, 핸드폰번호, 이메일, 협약사항, 지역, 암호화된 이용자 확인값(CI)<br>
                                                          선택항목 : 소속기관명, 대표자명, 사업자번호, 소속기관 전화번호<br>
                                                         전문가정보는 기업애로상담을 위한 목적으로 수집하나 보유하지 않고 비즈니스사업단으로 시스템연계 제공<br>
                                                         본인인증시 암호화된 이용자 확인값(CI)은 SSO연계를 위한 용도로 제공
                                            </li>
                                            <li>
                                                &lt;자동수집&gt;<br>
                                                IP주소, 쿠키, 서비스 이용기록, 방문기록 등
                                            </li>                                            
                                        </ul>
                                    </li>
                                    <li>3. 개인정보의 보유 및 이용기간
                                        <ul>
                                            <li>상품구입은 원칙적으로 보유기간의 경과, 개인정보의 수집 및 이용목적의 달성 등 그 개인정보가 불필요하게 되었을 때에는 지체 없이 파기합니다. 다만, 다른 법령에 따라 보존하여야 하는 경우에는 그러하지 않을 수 있습니다.  불필요하게 되었을 때에는 지체 없이 해당 개인정보를 파기합니다.</li>
                                            <li>
                                                회원정보<br>- 탈퇴 후 지체없이 파기
                                                <!-- , 재동의 기간 1년 -->
                                            </li>
                                            <li>
                                                전문가정보<br>
                                                - 전문가 정보는 기업애로상담을 위한 목적으로 수집하나 보유하지 않고 비즈니스사업단으로 시스템연계 제공함
                                            </li>
                                        </ul>
                                    </li>
                                    <li>4. 동의거부권 및 불이익
                                        <ul>
                                            <li>정보주체는 개인정보 수집에 동의를 거부할 권리가 있습니다. 다만, 필수 항목에 대한 동의를 거부할 시 저희가 제공하는 서비스를 이용할 수 없습니다.</li>
                                        </ul>                            
                                    </li>
                                </ol>
                                
                </div>
                <p class="join_check">
                    <input id="priAgree" type="checkbox"><label for="priAgree" class="MAL5"> (필수) 개인정보 수집ㆍ이용에 동의합니다.</label>
                </p>
                <h2 class="box_tit">마케팅/홍보의 수집 및 이용 동의</h2>
                <div class="join1_box">
                    <h4 class="join_tit MAB20">마케팅/홍보의 수집 및 이용 동의</h4>
                    <ol>
                        <li>1. 개인정보의 수집 및 이용 목적
                            <ul>
                                <li>신규 서비스 개발 및 마케팅ㆍ광고에의 활용<br> - 신규 서비스 개발, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속 빈도 등 회원의 서비스 이용에 대한 통계</li>
                            </ul>
                        </li>
                        <li>2. 수집하는 개인정보의 항목
                            <ul>
                                <li>필수항목 : 이름<br>
                                선택항목 : 이메일, 연락처(휴대전화번호, 유선전화번호 중 1개 선택)</li>
                            </ul>
                        </li>
                        <li>3. 개인정보의 보유 및 이용기간
                            <ul>
                                <li>이용목적의 달성 후 지체없이 파기</li>
                            </ul>
                        </li>
                        <li>4. 동의거부권 및 불이익
                            <ul>
                                <li>개인정보의 마케팅/홍보의 수집 및 이용 동의를 거부하시더라도 회원 가입 시 제한은 없습니다. 다만, 마케팅 활용 서비스 안내 및 참여에 제한이 있을 수 있습니다.</li>
                            </ul>
                        </li>
                    </ol>
                </div>                    
                <p class="join_check">
                    <input id="marktPrAgreAtChk" type="checkbox"><label for="marktPrAgreAtChk" class="MAL5"> (선택) 마케팅/홍보를 위하여 귀하의 개인정보를 이용하는데 동의합니다.</label>
                </p>  
            </form>            
            <!-- <div class="all_check">
                    
            </div> -->
            <div class="join_btn">
                <a href="join2.jsp" class="btn_st">이용 약관에 동의합니다.</a>
            </div>
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