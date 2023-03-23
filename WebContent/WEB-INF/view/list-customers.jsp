<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
	<title>Camara Credit Union</title>
	
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		
	
</head>

<body>

<script type="text/css">

body {
  background: #333;
  color: #fff;
}

.navbar {
  border-bottom: #008ed6 2px solid;
  opacity: 0.9;
    background-color: yellowgreen
  }
#home-section {
  background: url(../img/home.jpg);
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
  min-height: 700px;
}

#home-section .dark-overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  min-height: 700px;
  background: rgba(0, 0, 0, 0.7);
}

#home-section .home-inner {
  padding-top: 150px;
}

#home-section .card-form {
  opacity: 0.8;
}

#home-section .fas,
#create-section .fas {
  color: #008ed6;
  background: #fff;
  padding: 5px;
  border-radius: 5px;
}

#explore-section .fas,
#share-section .fas {
  background: #333;
  color: #fff;
  padding: 5px;
  border-radius: 5px;
}
.navbar-brand{
    font-style: italic;
    text-decoration-color: yellow;
    background-color:green
}
</script>




	<div id="wrapper">
		<div id="header">
			<h2>Admin Service</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Member -->
			
			<input type="button" value="Register new member" 
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
			/>
			
			<table>
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Balance</th>
					<th>Membership</th>
					<th>Action</th>
				</tr>
				<!-- loop over and print our customers --> 
				<c:forEach var="tempCustomer" items="${customers}">
					
					<!-- set up a link for each member -->
					<c:url var="tempLink" value="CustomerController">
						<c:param name="command" value="LOAD" />
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>

					<!--  set up a link to delete a member -->
					<c:url var="deleteLink" value="/customer/deleteCustomer">
						<c:param name="command" value="DELETE" />
						<c:param name="customerId" value="${tempCustomer.id}" />
					</c:url>
					    <!-- construct an "update" link with customer id -->
					    
                   <c:url var="updateLink" value="/customer/showFormForUpdate">
                   <c:param name="customerId" value="${tempCustomer.id}" />
                   </c:url>
																		
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						<td> ${tempCustomer.balance} </td>
						<td> ${tempCustomer.membership} </td>
						<td> 
							<a href="${updateLink}">Update</a> 
							 | 
							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this member?'))) return false">
							Delete</a>	
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>
</body>


</html>








