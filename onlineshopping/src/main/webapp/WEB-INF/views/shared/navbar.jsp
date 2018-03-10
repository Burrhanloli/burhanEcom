<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<script>
	window.userRole = '${userModel.role}';
</script>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand navbar-link" href="${contextRoot}" id="brand"><strong>Eternal</strong>
				Clothing</a>
			<button class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
					class="icon-bar"></span><span class="icon-bar"></span>
			</button>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navcol-1">
			<ul class="nav navbar-nav">
				<li role="presentation" id="about"><a
					href="${contextRoot}/about"><strong>About</strong></a></li>
				<li role="presentation" id="contact"><a
					href="${contextRoot}/contact"><strong>Contact</strong></a></li>
				<li role="presentation" id="listProducts"><a
					href="${contextRoot}/show/all/products"><strong>View
							Products</strong></a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAnonymous()">
					<li role="presentation" id="signup"><a
						href="${contextRoot}/membership"><strong>Sign Up</strong></a></li>
					<li role="presentation" id="login"><a
						href="${contextRoot}/login"><strong>Login</strong></a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
					<li class="presentation dropdown text-uppercase" id="userModel"><a
						class="dropdown-toggle" href="javascript:void(0)"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true"> <strong>${userModel.fullName} <span
								class="caret"></span></strong>
					</a>
						<ul class="dropdown-menu dropdown-menu-right" role="menu"
							aria-labelledby="dropdownMenu1">
							<security:authorize access="hasAuthority('USER')">
								<li role="presentation" id="cart"><a
									href="${contextRoot}/cart/show"> <span
										class="glyphicon glyphicon-shopping-cart"></span>&#160;<span
										class="badge">${userModel.cart.cartLines}</span> - &#8377;
										${userModel.cart.grandTotal}
								</a></li>
							</security:authorize>
							<security:authorize access="hasAuthority('ADMIN')">
								<li role="presentation" id="manageProduct"><a
									href="${contextRoot}/manage/product"><strong>Admin</strong></a></li>
							</security:authorize>
							<li role="presentation" id="logout"><a
								href="${contextRoot}/logout"><strong>Logout</strong></a></li>
						</ul></li>
				</security:authorize>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
</nav>

