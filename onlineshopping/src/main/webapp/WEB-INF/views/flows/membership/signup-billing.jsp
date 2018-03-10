<%@include file="../flows-shared/header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div
		class="col-lg-8 col-lg-push-2 col-lg-pull-2 col-md-8 col-md-push-2 col-sm-6 col-sm-push-3 col-xs-12">
		<div class="well" id="login">
			<h1 class="text-center">SignUp- Address</h1>
			<sf:form method="POST" modelAttribute="billing"
				class="form-horizontal" id="billingForm">


				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label" for="addressLineOne"><strong>Address
								Line One</strong></label>
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
						<label class="control-label" for="country">Country</label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="country" class="form-control"
							placeholder="Enter Country Name" />
						<sf:errors path="country" cssClass="help-block" element="em" />
					</div>
				</div>


				<div class="form-group">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 label-column">
						<button type="submit" name="_eventId_personal"
							class="btn btn-primary">
							<span class="glyphicon glyphicon-chevron-left"></span> Back -
							Personal
						</button>
						<button type="submit" name="_eventId_confirm"
							class="btn btn-primary">
							Next - Confirm<span class="glyphicon glyphicon-chevron-right"></span>
						</button>
					</div>
				</div>


			</sf:form>


		</div>


	</div>


</div>


</div>


</div>

<%@include file="../flows-shared/footer.jsp"%>
