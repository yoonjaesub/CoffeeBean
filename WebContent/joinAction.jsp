<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="teamProject.MemberDAO"
    import="java.io.PrintWriter"
    %>
    <%request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="bean" class="teamProject.MemberBean" scope="page" />
    <jsp:setProperty name="bean" property="id" param="m_id"/>
    <jsp:setProperty name="bean" property="pwd" param="m_pwd"/>
    <jsp:setProperty name="bean" property="name" param="m_name"/>
    <jsp:setProperty name="bean" property="email" param="m_email"/>
    <jsp:setProperty name="bean" property="phoneNum" param="m_phoneNum"/>
    
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
	if(bean.getId() == null || bean.getPwd() == null || 
	bean.getName() == null || bean.getEmail() == null || bean.getPhoneNum() == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 항목이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	} else {
		MemberDAO memberDAO = new MemberDAO();
		int result = memberDAO.addMember(bean);
		
		if(result==-1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디 입니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			session.setAttribute("id", bean.getId());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href='join3.jsp'");
			script.println("</script>");
		}
	}
	%>
</body>
</html>