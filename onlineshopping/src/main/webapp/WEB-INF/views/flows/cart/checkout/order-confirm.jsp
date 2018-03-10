<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shopping - Membership</title>

<script>
	window.contextRoot = '${contextRoot}'
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/pretty-footer.css" rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<div class="se-pre-con"></div>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand navbar-link" href="${contextRoot}" id="brand"><strong>Eternal</strong>
					Clothing</a>
				<button class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#navcol-1">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
			</div>

		</div>
	</nav>
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<!-- Page Content -->

			<div class="alert alert-success">
				<h3 class="text-center">Your Order is Confirmed!!</h3>
			</div>

			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="well" id="products1">
						<h1 class="text-center">Invoice</h1>
						<h2 class="pull-right">Order # ${orderDetail.id}</h2>

						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<address>
									<strong>Billed To:</strong><br>
									${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
									${orderDetail.billing.addressLineOne}<br>
									${orderDetail.billing.addressLineTwo}<br>
									${orderDetail.billing.city} - ${orderDetail.billing.postalCode}<br>
									${orderDetail.billing.state} - ${orderDetail.billing.country}
								</address>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-right">
								<address>
									<strong>Shipped To:</strong><br>
									${orderDetail.user.firstName} ${orderDetail.user.lastName}<br>
									${orderDetail.shipping.addressLineOne}<br>
									${orderDetail.shipping.addressLineTwo}<br>
									${orderDetail.shipping.city} -
									${orderDetail.shipping.postalCode}<br>
									${orderDetail.shipping.state} - ${orderDetail.shipping.country}
								</address>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<address>
									<strong>Payment Method:</strong><br> Card Payment <br>
									${orderDetail.user.email}
								</address>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-right">
								<address>
									<strong>Order Date:</strong><br> ${orderDetail.orderDate}<br>
									<br>
								</address>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="well" id="products1">
						<h1>
							<strong>Order summary</strong>
						</h1>


						<table class="table table-hover">
							<thead>
								<tr>
									<td><strong>Item</strong></td>
									<td class="text-center"><strong>Price</strong></td>
									<td class="text-center"><strong>Quantity</strong></td>
									<td class="text-right"><strong>Totals</strong></td>
								</tr>
							</thead>
							<tbody>
								<!-- foreach ($order->lineItems as $line) or some such thing here -->
								<c:forEach items="${orderDetail.orderItems}" var="orderItem">
									<tr>
										<td>${orderItem.product.name}</td>
										<td class="text-center">&#8377; ${orderItem.buyingPrice}</td>
										<td class="text-center">${orderItem.productCount}</td>
										<td class="text-right">&#8377; ${orderItem.total}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="text-center">
							<a href="${contextRoot}/show/all/products"
								class="btn btn-lg btn-warning">Continue Shopping</a>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>


	<%@include file="../../flows-shared/footer.jsp"%>