<html>
<head>
    <title>Welcome</title>
</head>
<body>
<h1>Contatore Accessi</h1>

<%! Integer x; %>
<%
    if(session.isNew()){

        x =new Integer("1");

        session.setAttribute("contatore", x);
        out.print("<h1>"+"!!!Benvenuto !!!"+"</h1>");
    }else{
        out.print("<h1>"+"!Bentornato!"+"</h1>");
    }
    x =(Integer) session.getAttribute("contatore");
    session.setAttribute("contatore", new Integer(x.intValue() + 1));
%>

Data sul server: <%= new java.util.Date().toString() %>

<p>Access n: <% out.print(x); %></p><br>
</body>
</html>