<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.io.PrintWriter"
    import ="teamProject.MemberDAO"
    import ="teamProject.MemberBean"
    %>
    <%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="bean" class="teamProject.MemberBean" scope="page" />
<jsp:setProperty name="bean" property="id" />
<jsp:setProperty name="bean" property="pwd" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = null;
if(session.getAttribute("id") != null) {
	id = (String) session.getAttribute("id");
}
if (id != null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('이미 로그인 되어있습니다.')");
	script.println("location.href='main.jsp'");
	script.println("</script>");
}
MemberBean memberBean = new MemberBean();	
MemberDAO memberDAO = new MemberDAO();
	int result =memberDAO.login(bean.getId(), bean.getPwd());
	if(result == 1) {
		session.setAttribute("id", bean.getId());
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href='main.jsp'");
		script.println("</script>");
	} else if(result == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀립니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else if(result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else if(result == -2) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류가 발생하였습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
%>

</body>
</html>