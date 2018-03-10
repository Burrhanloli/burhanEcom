<%@include file="../flows-shared/header.jsp"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div
		class="col-lg-8 col-lg-push-2 col-lg-pull-2 col-md-8 col-md-push-2 col-sm-6 col-sm-push-3 col-xs-12">
		<div class="well" id="login">
			<h1 class="text-center">SignUp-Personal</h1>
			<sf:form method="POST" modelAttribute="user" class="form-horizontal"
				id="registerForm">

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label"><strong>First Name</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="firstName" class="form-control"
							placeholder="First Name" />
						<sf:errors path="firstName" cssClass="help-block" element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label"><strong>Last Name</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="text" path="lastName" class="form-control"
							placeholder="Last Name" />
						<sf:errors path="lastName" cssClass="help-block" element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label"><strong>Email</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="email" path="email" class="form-control"
							placeholder="abc@zyx.com" />
						<sf:errors path="email" cssClass="help-block" element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label"><strong>Contact
								Number</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="number" path="contactNumber" class="form-control"
							placeholder="XXXXXXXXXX" maxlength="10" />
						<sf:errors path="contactNumber" cssClass="help-block" element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label"><strong>Password</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="password" path="password" class="form-control"
							placeholder="Password" />
						<sf:errors path="password" cssClass="help-block" element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label"><strong>Confirm
								Password</strong></label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<sf:input type="password" path="confirmPassword"
							class="form-control" placeholder="Re-type password" />
						<sf:errors path="confirmPassword" cssClass="help-block"
							element="em" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 label-column">
						<label class="control-label">Select Role</label>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12 input-column">
						<label class="radio-inline"> <sf:radiobutton path="role"
								value="USER" checked="checked" /> <strong>User</strong>
						</label> <label class="radio-inline"> <sf:radiobutton path="role"
								value="SUPPLIER" /><strong>Supplier</strong>
						</label>
					</div>
				</div>

				<br />
				<div class="form-group">

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 label-column">
						<p class="text-center">
							<button type="submit" name="_eventId_billing"
								class="btn btn-primary">
								Next - Billing <span class="glyphicon glyphicon-chevron-right"></span>
							</button>
						</p>
					</div>
				</div>
			</sf:form>


		</div>


	</div>


</div>


<%@include file="../flows-shared/footer.jsp"%>
