<%@ page import="sun.awt.motif.X11CNS11643" %>
<html>
	<head>
		<title>Welcome</title>
	</head>
	<body>
		<h1>Hello World.</h1>
		Data sul server: <%= new java.util.Date().toString() %>
		<%! Integer x; %>
		<%
		if(session.isNew()){
			x =new Integer("1");
			session.putValue("contatore", x);
		}

		x =(Integer)session.getValue("contatore");
		session.putValue("contatore", new Integer(x.intValue()+1));

		%>
	 
	<p>Accessi n* <%= x.intValue() %></p><br>
	</body>
</html>
