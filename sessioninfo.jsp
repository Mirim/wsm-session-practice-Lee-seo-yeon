<%@ page contentType="text/html:charset=utf-8"%>
<%@ page session="true"%>
<!-- 세션을 사용한다고 지정한다. session 속성의 기본값은 true이므로 이 코드를 생략해도 세션을 사용한다. 세션이 존재하지 않으면 새로 생성한다 -->
>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date time = new Date();
// long타입의 시간 값을 저장하기 위해 사용하는 Date 객체를 생성한다 
	SimpleDateFormat formatter =
		new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
// date 객체의 시간 값을 지정한 양식으로 출력하기 위해 SimpleDateFormat객체를 생성한다
%>
<!-- long타입의 시간 값을 저장하기 위해 사용하는 Date 객체를 생성한다 -->
<html>
<head>
<title>세션정보</title>
</head>
<body>
	세션ID:
	<%= session.getId() %>
	<br>
	<!-- 세션 ID를 출력한다 -->
	<%
	time.setTime(session.getCreationTime());
%>
	<!-- 세션의 생성 시간을 Date 객체인 time에 저장한다 -->
	세션생성시간:<%= formatter.format(time) %><br>
	<!-- 세션의 생성 시간을 출력한다 -->
	>
	<%
	time.setTime(session.getLastAccessedTime());
%>
	최근접근시간:
	<%= formatter.format(time) %>
	<!-- 세션의 마지막 접근 시간을 출력한다 -->

</body>
</html>