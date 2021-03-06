<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Detail</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/mycss.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/mycss3.css">
<link href="https://fonts.googleapis.com/css?family=Acme" rel="stylesheet">
<style>
	.fo {
		font-family:'Acme',sans-serif;
	}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="topnav">
		<div class="topnav-right fo">
			<s:url id="search" action="setupForSearchForm" />
			<s:a href="%{search}">Search</s:a>
			<s:url id="ownPack" action="YourPackageAction" />
			<s:a href="%{ownPack}">Your Package</s:a>
			<a href="#" id="demo">Your Profile</a>
			<s:url id="logout" action="LogOutAction" />
			<s:a href="%{logout}">LogOut</s:a>
		</div>
	</div>
	<div class="container">
			<div id="de" 
			class="fo"
			style="color: black; display: none; padding: 8px; background: #d9d9d9; width: 235px; height: 50; position: absolute; left: 81%; top: 59px; z-index: 1; border-radius: 2px;">
			<s:property value="#session.userSession.name" />
			<br>
			<s:property value="#session.userSession.email" />
		</div>
		<script>
			var a = document.getElementById("demo");
			a.addEventListener("mouseover", myFunc);
			a.addEventListener("mouseout", myFunc);
			function myFunc() {
				var x = document.getElementById("de");
				if (x.style.display === "none") {
					x.style.display = "block";
				} else {
					x.style.display = "none";
				}
			}
		</script>
		<div class="row">
			<s:iterator value="packageList">
				<div class="col-md-4 col-sm-6">			
					<div class="card" style="margin-bottom:30px;">				
						<div class="card-body" style="background:#f2f2f2;">
							<p class="card-title fo" align="center" style="font-size:35px;color:#cc0066;">
								<s:label value="Owned" />					
							</p>
							<p class="card-text fo" style="font-size:20px;">
								<s:label value="Price: " />&nbsp;
								<s:property value="price" /> Kyats
							</p>
							<p class="card-text fo" style="font-size:20px;">
								<s:label value="Location: " />&nbsp;
								<s:property value="location.name" />
							</p>
							<p class="card-text fo" style="font-size:20px;">
								<s:label value="Hotel: " />&nbsp;
								<s:property value="hotel.name" />
							</p>
							<p class="card-text fo" style="font-size:20px;">
								<s:label value="Restaurant: " />&nbsp;
								<s:property value="restaurant.name" />
							</p>
							<p class="card-text fo" style="font-size:20px;">
								<s:label value="Ticket: " />&nbsp;
								<s:property value="ticket.line_name" />
							</p>
							<p class="card-text fo" style="font-size:20px;">
								<s:label value="Days: " />&nbsp;
								<s:property value="number_of_day" />
							</p>
						</div>				
					</div>			
				</div>
			</s:iterator>
		</div>
	</div>
</body>
</html>