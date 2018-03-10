<%@include file="../../flows-shared/header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
		<div class="well" id="login">
			<h1 class="text-center">Select Shipping Address</h1>

			<c:forEach items="${addresses}" var="address">

				<h3>${address.addressLineOne}</h3>
				<h3>${address.addressLineTwo}</h3>
				<h4>${address.city}-${address.postalCode}</h4>
				<h4>${address.state}-${address.country}</h4>
				<div class="text-center">
					<a
						href="${flowExecutionUrl}&_eventId_addressSelection&shippingId=${address.id}"
						class="btn btn-primary">Select</a>
				</div>

			</c:forEach>
		</div>
	</div>
	<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
		<div class="well" id="login">
			<h1 class="text-center">New Address</h1>

			<sf:form method="POST" modelAttribute="shipping"
				class="form-horizontal" id="billingForm">
				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="addressLineOne"><strong>Address
								Line One</strong> </label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="addressLineOne" class="form-control"
							placeholder="Enter Address Line One" />
						<sf:errors path="addressLineOne" cssClass="help-block"
							element="em" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="addressLineTwo"><strong>Address
								Line Two</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="addressLineTwo" class="form-control"
							placeholder="Enter Address Line Two" />
						<sf:errors path="addressLineTwo" cssClass="help-block"
							element="em" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="city"><strong>City</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="city" class="form-control"
							placeholder="Enter City Name" />
						<sf:errors path="city" cssClass="help-block" element="em" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="postalCode"><strong>Postal
								Code</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="postalCode" class="form-control"
							placeholder="XXXXXX" />
						<sf:errors path="postalCode" cssClass="help-block" element="em" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="state"><strong>State</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="state" class="form-control"
							placeholder="Enter State Name" />
						<sf:errors path="state" cssClass="help-block" element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="country"><strong>Country</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="country" class="form-control"
							placeholder="Enter Country Name" />
						<sf:errors path="country" cssClass="help-block" element="em" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<button type="submit" name="_eventId_saveAddress"
							class="btn btn-primary">
							<span class="glyphicon glyphicon-plus"></span> Add Address
						</button>
					</div>
				</div>
			</sf:form>
		</div>
	</div>
</div>
</div>
</div>

<%@include file="../../flows-shared/footer.jsp"%>