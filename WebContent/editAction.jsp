<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="teamProject.MemberDAO"
    import="teamProject.MemberBean"
    %>
<!DOCTYPE html>
<html>
<head>
    <title>회원정보 수정처리</title>
</head>
<body>
    <jsp:useBean id="bean" class="teamProject.MemberBean" />
    <jsp:setProperty property="*" name="bean"/>    
    
    <% /*회원 세션 불러오기*/
		String id = null;
	if (session.getAttribute("id") != null) {
		id = session.getAttribute("id").toString();
	}
	MemberDAO dao = new MemberDAO();
	dao.editMember(bean);
	%>
    
    <br><br>
    <font size="5" color="gray">회원정보가 수정되었습니다.</font>
    <br><br>
    <input type="button" value="메인으로" onclick="javascript:window.location='Main.jsp'"/>
    
</body>
</html>