
<div class="row">
	<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
		<!-- Would be to display sidebar -->
		<%@include file="./shared/sidebar.jsp"%>
	</div>

	<!-- to display the actual products -->
	<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
		<div class="well" id="products2">

			<!-- Added breadcrumb component -->

			<div class="row">
				<div class="col-lg-12">

					<c:if test="${userClickAllProducts == true}">

						<script>
							window.categoryId = '';
						</script>

						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Products</li>


						</ol>
					</c:if>


					<c:if test="${userClickCategoryProducts == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>

						<ol class="breadcrumb">


							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>


						</ol>
					</c:if>


				</div>


			</div>


			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">


					<table id="productListTable" class="table table-hover ">


						<thead>

							<tr>
								<th>Product</th>
								<th>Name</th>
								<th>Brand</th>
								<th>Price</th>
								<th>Qty. Available</th>
								<th></th>

							</tr>

						</thead>
						<tbody>
						<tr>
						<td data-th="Product">
						<td data-th="Name">
						<td data-th="Brand">
						<td data-th="Price">
						<td data-th="Qty. Available">
						<td data-th="">
						</tr>
						</tbody>


					</table>

				</div>
			</div>

		</div>


	</div>
</div>
