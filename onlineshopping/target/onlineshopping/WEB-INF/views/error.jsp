<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/pretty-footer.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">


<title>Online Shopping - ${title}</title>

</head>

<body>

	<div class="wrapper">

		<nav class="navbar navbar-default custom-header navbar-fixed-top"
			role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand navbar-link" href="${contextRoot}/home">Eternal
						<span>Clothing </span>
					</a>
					<button class="navbar-toggle collapsed" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
				</div>
			</div>
		</nav>


		<div class="row" id="rr">

			<div class="col-md-12">


				<div class="col-xs-12">

					<div class="well">
						<div class="jumbotron">

							<h1>${errorTitle}</h1>

							<blockquote style="word-wrap: break-word">

								${errorDescription}</blockquote>

						</div>


					</div>

				</div>

			</div>

		</div>


		<%@include file="./shared/footer.jsp"%>

	</div>


</body>


</html>