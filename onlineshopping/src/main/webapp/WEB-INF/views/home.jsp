<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>
<div class="row" ng-app="ShoppingApp"
	ng-controller="ProductController as pCtrl" id="re"
	ng-init="pCtrl.fetchProducts()">

	<div class="col-md-3">
		<%@include file="./shared/sidebar.jsp"%>
	</div>

	<div class="col-md-9">

		<div class="row carousel-holder">

			<div class="col-md-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">

						<div class="item active">
							<img class="slide-image" src="${images}/main-slider1.jpg" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="${images}/main-slider2.jpg" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="${images}/main-slider3.jpg" alt="">
						</div>
						<div class="item">
							<img class="slide-image" src="${images}/main-slider4.jpg" alt="">
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span>
					</a>
				</div>
			</div>

		</div>
		<div class="well">
			<div class="row">


				<h1 id="rr">Our Most Viewed Products</h1>

			</div>

		</div>
		<div class="well">
			<div class="row">
				<div class="col-sm-4" ng-repeat="product in pCtrl.mvProducts">
					<div id="pr" class="well">
						<img ng-src="${images}/{{product.code}}.jpg"
							alt="{{product.name}}" class="landingImg">
						<h1>{{product.name}}</h1>
						<div class="caption">
							<p>{{product.description}}</p>
						</div>

						<div class="panel-footer">
							<a ng-href="${contextRoot}/show/{{product.id}}/product"
								class="btn btn-primary ">View</a>
							<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
						</div>

					</div>

				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div id="pr" class="well">
						<h1>Checkout more products!</h1>

						<a class="btn btn-primary" href="${contextRoot}/show/all/products">More
							Products</a>
					</div>
				</div>
			</div>
		</div>

		<div class="well">
			<div class="row" >
				<h1 id="rr" >Our Most Purchased Products</h1>
			</div>

		</div>

		<div class="well">
			<div class="row">

				<div class="col-sm-4" ng-repeat="product in pCtrl.mpProducts">
					<div id="pr" class="well">
						<img ng-src="${images}/{{product.code}}.jpg"
							alt="{{product.name}}" class="landingImg">
						<h1>{{product.name}}</h1>
						<div class="caption">
							<p>{{product.description}}</p>
						</div>

						<div class="panel-footer">
							<a ng-href="${contextRoot}/show/{{product.id}}/product"
								class="btn btn-primary ">View</a>
							<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
						</div>

					</div>
				</div>

				<div class="col-sm-4 col-lg-4 col-md-4">
					<div id="pr" class="well">
						<h1>Checkout more products!</h1>

						<a class="btn btn-primary" href="${contextRoot}/show/all/products">More
							Products</a>
					</div>
				</div>

			</div>
		</div>
	</div>

</div>

</div>
<!-- /.container -->
