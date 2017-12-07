<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - ${title}</title>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/pretty-footer.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<script>
	window.menu = '${title}';

	window.contextRoot = '${contextRoot}'
</script>
</head>

<body>

	<div class="wrapper" id="er">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="well">
				<h1 class="text-center">Login</h1>
				<div class="panel-body">
					<form action="${contextRoot}/login" method="POST"
						class="form-horizontal" id="loginForm">
						<div class="form-group">
							<label for="username" class="col-md-4 control-label">Email:
							</label>
							<div class="col-md-8">
								<input type="text" name="username" id="username"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-md-4 control-label">Password:
							</label>
							<div class="col-md-8">
								<input type="password" name="password" id="password"
									class="form-control" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-4 col-md-8">
								<p class="text-center">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" /> <input type="submit" value="Login"
										class="btn btn-primary" />
								</p>
							</div>
						</div>
					</form>

				</div>
				<div class="panel-footer">
					<div class="text-right">
						New User - <a href="${contextRoot}/membership">Register Here</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>

	<!-- Footer comes here -->
	<%@include file="./shared/footer.jsp"%>

	<!-- jQuery -->
	<script src="${js}/jquery.js"></script>

	<script src="${js}/jquery.validate.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

	<!-- Self coded javascript -->
	<script src="${js}/myapp.js"></script>


</body>

</html>