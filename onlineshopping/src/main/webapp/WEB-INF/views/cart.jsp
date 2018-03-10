<c:set var="availableCount" value="${userModel.cart.cartLines}" />
<div class="row">


	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<c:if test="${not empty message}">

			<div class="alert alert-info">
				<h3 class="text-center">${message}</h3>
			</div>

		</c:if>
		<div class="well" id="products1">
			<c:choose>
				<c:when test="${not empty cartLines}">
					<table id="cart" class="table table-hover">
						<thead>
							<tr>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Subtotal</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cartLines}" var="cartLine">
								<c:if test="${cartLine.available == false}">
									<c:set var="availableCount" value="${availableCount - 1}" />
								</c:if>

								<tr>
									<td data-th="Product">
										<div class="row">
											<div class="col-sm-2">
												<img src="${images}/${cartLine.product.code}.jpg"
													alt="${cartLine.product.name}"
													class="img-responsive dataTableImg" />
											</div>
											<div class="col-sm-10">
												<h4 class="nomargin">${cartLine.product.name}
													<c:if test="${cartLine.available == false}">
														<strong style="color: red">(Not Available)</strong>
													</c:if>
												</h4>
												<p>Brand : ${cartLine.product.brand}</p>
												<p>Description : ${cartLine.product.description}
											</div>
										</div>
									</td>
									<td data-th="Price">&#8377; ${cartLine.buyingPrice} /-</td>
									<td data-th="Quantity"><input type="number"
										id="count_${cartLine.id}" class="form-control text-center"
										value="${cartLine.productCount}" min="1" max="3"></td>
									<td data-th="Subtotal">&#8377; ${cartLine.total} /-</td>
									<td class="actions" data-th=""><c:if
											test="${cartLine.available == true}">
											<button type="button" name="refreshCart"
												class="btn btn-primary btn-sm" value="${cartLine.id}">
												<span class="glyphicon glyphicon-refresh"></span>
											</button>
										</c:if> <a href="${contextRoot}/cart/${cartLine.id}/remove"
										class="btn btn-danger btn-sm"><span
											class="glyphicon glyphicon-trash"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr class="visible-xs">
								<td class="text-center"><strong>Total &#8377;
										${userModel.cart.grandTotal}</strong></td>
							</tr>
							<tr>
								<td><a href="${contextRoot}/show/all/products"
									class="btn btn-warning"><span
										class="glyphicon glyphicon-chevron-left"></span> Continue
										Shopping</a></td>
								<td colspan="2" class="hidden-xs"></td>
								<td class="hidden-xs text-center"><strong>Total
										&#8377; ${userModel.cart.grandTotal}/-</strong></td>

								<c:choose>
									<c:when test="${availableCount != 0}">
										<td><a href="${contextRoot}/cart/validate"
											class="btn btn-success btn-block">Checkout <span
												class="glyphicon glyphicon-chevron-right"></span></a></td>
									</c:when>
									<c:otherwise>
										<td><a href="javascript:void(0)"
											class="btn btn-success btn-block disabled"><strike>Checkout
													<span class="glyphicon glyphicon-chevron-right"></span>
											</strike></a></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</tfoot>
					</table>

				</c:when>

				<c:otherwise>

					<div class="jumbotron">

						<h3 class="text-center">Your Cart is Empty!</h3>

					</div>

				</c:otherwise>
			</c:choose>



		</div>
	</div>
</div>
