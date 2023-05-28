<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student"%>



<%
List<Student> data=new ArrayList<>();

data.add(new Student("manju","natha",false));
data.add(new Student("raghu","natha",true));
data.add(new Student("badri","natha",false));
data.add(new Student("ranga","natha",true));
pageContext.setAttribute("myStudents",data);
%>
<html>
<body>
<table border="1">
<tr>
<th>FirstName</th>
<th>LastName</th>
<th>GoldCustomer</th>
</tr>
<c:forEach var="tempStudent" items="${myStudents}">
<tr>
<td>${tempStudent.firstName}</td>
<td> ${tempStudent.lastName}</td>
<td> ${tempStudent.goldCustomer}</td> 
</tr> <br/>
</c:forEach>
</table>

</body>
</html>