<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	<script>
		window.userRole = '${userModel.role}';
	</script>
    <nav class="navbar navbar-default custom-header navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="${contextRoot}/home">Eternal <span>Clothing </span> </a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav links">
                    <li role="presentation" id="about">
                        <a href="${contextRoot}/about">About</a>
                    </li>

                    <li role="presentation" id="contact">
                        <a href="${contextRoot}/contact">Contact</a>
                    </li>
                    
                    <li role="presentation" id="listProducts">
                        <a href="${contextRoot}/show/all/products">View Products</a>
                    </li>
					<security:authorize access="hasAuthority('ADMIN')">
	                    <li role="presentation" id="manageProduct">
	                        <a href="${contextRoot}/manage/product">Manage Product</a>
	                    </li>					
					</security:authorize>
                </ul>
			    
			    <ul class="nav navbar-nav links navbar-right">
			    	<security:authorize access="isAnonymous()">
	                    <li role="presentation" id="signup">
	                        <a href="${contextRoot}/membership">Sign Up</a>
	                    </li>
						<li role="presentation" id="login">
	                        <a href="${contextRoot}/login">Login</a>
	                    </li>	
	                    </security:authorize>		    
			    	<security:authorize access="isAuthenticated()">
						<li class="dropdown" id="userModel">
						  <a class="dropdown-toggle" href="javascript:void(0)" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						    ${userModel.fullName}
						    <span class="caret"></span>
						  </a>
						  <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
		                    <security:authorize access="hasAuthority('USER')">
			                    <li role="presentation" id="cart">
			                        <a href="${contextRoot}/cart/show">
			                        	<span class="glyphicon glyphicon-shopping-cart"></span>&#160;<span class="badge">${userModel.cart.cartLines}</span> - &#8377; ${userModel.cart.grandTotal} 
			                        </a>
			                    </li>		     
			                	<li role="separator" class="divider"></li>	                                   
		                    </security:authorize>
							<li role="presentation" class="active" id="logout">
		                        <a href="${contextRoot}/logout">Logout</a>
		                    </li>                    			    	
						  </ul>		
						</li>    			    
			    	</security:authorize>                    
			    </ul>                
                
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

