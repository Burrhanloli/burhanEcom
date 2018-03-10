<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<script src="${js}/productsController.js"></script>
<div class="row" ng-app="ShoppingApp"
	ng-controller="ProductController as pCtrl" id="re"
	ng-init="pCtrl.fetchProducts()">

	<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
		<%@include file="./shared/sidebar.jsp"%>
	</div>

	<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
		<div class="carousel slide" data-ride="carousel" id="carousel-1">
			<div class="carousel-inner" role="listbox">
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
			<div>
				<a class="left carousel-control" href="#carousel-1" role="button"
					data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i><span
					class="sr-only">Previous</span></a><a class="right carousel-control"
					href="#carousel-1" role="button" data-slide="next"><i
					class="glyphicon glyphicon-chevron-right"></i><span class="sr-only">Next</span></a>
			</div>
			<ol class="carousel-indicators">
				<li data-target="#carousel-1" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-1" data-slide-to="1"></li>
				<li data-target="#carousel-1" data-slide-to="2"></li>
			</ol>
		</div>



		<div class="well" id="mvp">
			<h2 class="text-left" id="mvpheading">Our Most Viewed Products</h2>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"
					ng-repeat="product in pCtrl.mvProducts">
					<div class="well text-center" id="mvpcard1">
						<img ng-src="${images}/{{product.code}}.jpg"
							alt="{{product.name}}" class="landingImg">
						<h1>{{product.name}}</h1>
						<div class="caption">
							<p>{{product.description}}</p>
						</div>

						<div class="panel-footer">
							<a ng-href="${contextRoot}/show/{{product.id}}/product"
								class="btn btn-primary text-left">View</a>
							<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
						</div>

					</div>

				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="well text-center" id="mvpcard1">
						<h3 class="text-center" id="mvph2">Checkout more products!</h3>

						<a class="btn btn-primary" href="${contextRoot}/show/all/products">More
							Products</a>
					</div>
				</div>
			</div>
		</div>

		<div class="well" id="mpp">
			<h2 class="text-left" id="mppheading">Our Most Purchased
				Products</h2>

			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12"
					ng-repeat="product in pCtrl.mpProducts">
					<div class="well text-center" id="mvpcard1">
						<img ng-src="${images}/{{product.code}}.jpg"
							alt="{{product.name}}" class="landingImg">
						<h1>{{product.name}}</h1>
						<div class="caption">
							<p>{{product.description}}</p>
						</div>

						<div class="panel-footer">
							<a ng-href="${contextRoot}/show/{{product.id}}/product"
								class="btn btn-primary text-left ">View</a>
							<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
						</div>

					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="well text-center" id="mvpcard1">
						<h3 class="text-center" id="mvph2">Checkout more products!</h3>

						<a class="btn btn-primary" href="${contextRoot}/show/all/products">More
							Products</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.container -->