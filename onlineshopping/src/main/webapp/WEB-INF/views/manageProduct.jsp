<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container" id="er">

	<c:if test="${not empty message}">
		<div class="row">
			<div class="col-xs-12 col-md-offset-2 col-md-8">
				<div class="alert alert-info fade in">${message}</div>
			</div>
		</div>
	</c:if>

	<div class="row">
		<div
			class="col-lg-8 col-lg-push-2 col-lg-pull-2 col-md-8 col-md-push-2 col-sm-6 col-sm-push-3 col-xs-12">
			<div class="well" id="login">
				<h1 class="text-center">Management</h1>
				<div class="text-center">
					<br />

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#myCategoryModal">Add New Category</button>
				</div>
				<div class="text-center">
					<br />

					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target="#myProductModal">Add New Product</button>
				</div>

			</div>
		</div>

	</div>

</div>
<!-- Modal -->
<div class="modal fade" id="myProductModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">New Product</h4>
			</div>
			<div class="modal-body">
				<sf:form class="form-horizontal" modelAttribute="product"
					action="${contextRoot}/manage/product" method="POST"
					enctype="multipart/form-data">
					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Name</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:input type="text" path="name" class="form-control"
								placeholder="Product Name" />
							<sf:errors path="name" cssClass="help-block" element="em" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Brand</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:input type="text" path="brand" class="form-control"
								placeholder="Brand Name" />
							<sf:errors path="brand" cssClass="help-block" element="em" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Description</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:textarea path="description" class="form-control"
								placeholder="Enter your description here!" />
							<sf:errors path="description" cssClass="help-block" element="em" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Unit Price</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:input type="number" path="unitPrice" class="form-control"
								placeholder="Enter Unit Price" />
							<sf:errors path="unitPrice" cssClass="help-block" element="em" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Quantity</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:input type="number" path="quantity" class="form-control"
								placeholder="Enter Quantity" />
							<sf:errors path="quantity" cssClass="help-block" element="em" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Upload a
									file</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:input type="file" path="file" class="form-control" />
							<sf:errors path="file" cssClass="help-block" element="em" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
							<label class="control-label"><strong>Category</strong></label>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
							<sf:select path="categoryId" items="${categories}"
								itemLabel="name" itemValue="id" class="form-control" />
							<sf:hidden path="id" />
							<sf:hidden path="code" />
							<sf:hidden path="supplierId" />
							<sf:hidden path="active" />

						</div>

					</div>

					<div class="form-group">

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 label-column">
							<p class="text-center">
								<input type="submit" name="submit" value="Save"
									class="btn btn-primary" />
							</p>
						</div>
					</div>
				</sf:form>
			</div>
		</div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="myCategoryModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">New Category</h4>
			</div>
			<div class="modal-body">

				<sf:form id="categoryForm" class="form-horizontal"
					modelAttribute="category" action="${contextRoot}/manage/category"
					method="POST">

					<div class="form-group">
						<label class="control-label col-md-4">Name</label>
						<div class="col-md-8 validate">
							<sf:input type="text" path="name" class="form-control"
								placeholder="Category Name" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-4">Description</label>
						<div class="col-md-8 validate">
							<sf:textarea path="description" class="form-control"
								placeholder="Enter category description here!" />
						</div>
					</div>


					<div class="form-group">
						<div class="col-md-offset-4 col-md-4">
							<input type="submit" name="submit" value="Save"
								class="btn btn-primary" />
						</div>
					</div>
				</sf:form>
			</div>
		</div>
	</div>
</div>




<div class="row">


	<div class='col-xs-12'>
		<div class="well" id="products1">

			<h1>Available Products</h1>

			<table id="productsTable" class="table table-hover">

				<thead>
					<tr>
						<th>Id</th>
						<th>&#160;</th>
						<th>Name</th>
						<th>Brand</th>
						<th>Qty. Avail</th>
						<th>Unit Price</th>
						<th>Activate</th>
						<th>Edit</th>
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th>Id</th>
						<th>&#160;</th>
						<th>Name</th>
						<th>Brand</th>
						<th>Qty. Avail</th>
						<th>Unit Price</th>
						<th>Activate</th>
						<th>Edit</th>
					</tr>
				</tfoot>


			</table>


		</div>


	</div>

</div>
</div>