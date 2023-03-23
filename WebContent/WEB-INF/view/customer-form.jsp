<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>

<!DOCTYPE html>
<html>

<head>
	<title>Register member</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>2CU Members Registration Page</h2>
		</div>
	</div>

	<div id="container">
		<h3>Register member here</h3>
	
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">

			
			<form:hidden path="id"/>
					
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>
					<tr>
						<td><label>Balance:</label></td>
						<td><form:input path="balance" /></td>
					</tr>
					<tr>
						<td><label>Membership:</label></td>
						<td>
						<select id="membership" name="membership">
						<option value="Diamond">Diamond</option>
						<option value="Platinum">Platinum</option>
                         <option value="Gold">Gold</option>
                        </td>
                       </select>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
			</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/admin"><h3>Values members List</h3></a>
		</p>
	
	</div>

</body>

</html>










