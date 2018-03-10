<%@include file="../../flows-shared/header.jsp"%>
<div class="container" id="er">
	<div class="well">
		<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-6">
				<div class="well">
					<div class="row">
						<c:forEach items="${checkoutModel.cartLines}" var="cartLine">
							<div class="col-xs-12">
								<h1 >Product Details</h1>
								<div>
									<h3 class="text-center">Product Name:- &nbsp; ${cartLine.product.name}</h3>
									<br>
									<h4 class="text-center">Quantity :- &nbsp;&nbsp;${cartLine.productCount}</h4>
									<br>
									<h4 class="text-center">Buying Price :- &nbsp;&nbsp; &#8377; ${cartLine.buyingPrice}/-</h4>
								</div>
								
								<div class="text-right">
									<h3 class="panel-footer"><strong>Grand Total :- &#8377; ${cartLine.total}/-</strong></h3>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>


			</div>

			<div class="col-md-6">
				<div class="well">
					
						
							<h1>Payment Details</h1>
						
						<div class="panel-body">
							<form role="form">
								<div class="form-group">
									<label class="panel-footer" for="cardNumber"> CARD NUMBER</label>
									<div class="input-group">
										<input type="text" class="form-control" id="cardNumber"
											placeholder="Valid Card Number" required autofocus /> <span
											class="input-group-addon"><span
											class="glyphicon glyphicon-lock"></span></span>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-7 col-md-7">
										<div class="form-group">
											<label class="panel-footer" for="expityMonth">EXPIRY DATE</label> <br />
											<div class="col-xs-6 col-lg-6 pl-ziro">
												<input type="text" class="form-control" id="expityMonth"
													placeholder="MM" required />
											</div>
											<div class="col-xs-6 col-lg-6 pl-ziro">
												<input type="text" class="form-control" id="expityYear"
													placeholder="YY" required />
											</div>
										</div>
									</div>
									<div class="col-xs-5 col-md-5 pull-right">
										<div class="form-group">
											<label class="panel-footer" for="cvCode"> CV CODE</label> <input type="password"
												class="form-control" id="cvCode" placeholder="CV" required />
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#"><span
								class="badge pull-right"> &#8377;
									${checkoutModel.checkoutTotal}/-</span> Final Payment</a></li>
					</ul>
					<br /> <a href="${flowExecutionUrl}&_eventId_pay"
						class="btn btn-success btn-lg btn-block" role="button">Pay</a>

				</div>
			</div>
		</div>
	</div>
</div>
<%@include file="../../flows-shared/footer.jsp"%>