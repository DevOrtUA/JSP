<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<html>

	<head>
		<title>Application object in JSP</title>
	</head>

	<body>
		
	<%! Integer x = new Integer(i); %>
	<%
	if(session.isNew()){
		session.putValue("contatore", x);
	}else{
		x =(Integer)session.getValue("contatore");
		if(x == null){
			session.putValue("contatore", new Integer(1));
		}else{
			session.putValue("contatore", new Integer(x.intValue()+1));
		}
	}
	%>
	 
	<p>Accessi n* <%= x.intValue() %></p>
	<p>ciao</p>
	<p><a href="sessioni.jsp">jsp</a></p>

	</body>

</html>
