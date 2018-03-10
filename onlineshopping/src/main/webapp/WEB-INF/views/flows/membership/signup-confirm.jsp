<%@include file="../flows-shared/header.jsp"%>
<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="well" id="login">
			<div class="row">

				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

					<div class="well" id="login">
						<h1 class="text-center">Personal Details</h1>

						<div class="text-center">
							<h2>
								Name : <strong>${registerModel.user.firstName}
									${registerModel.user.lastName}</strong>
							</h2>
							<h3>
								Email : <strong>${registerModel.user.email}</strong>
							</h3>
							<h4>
								Contact : <strong>${registerModel.user.contactNumber}</strong>
							</h4>
							<h4>
								Role : <strong>${registerModel.user.role}</strong>
							</h4>
							<p>
								<a href="${flowExecutionUrl}&_eventId_personal"
									class="btn btn-primary">Edit</a>
							</p>
						</div>
					</div>

				</div>

				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

					<div class="well" id="login">
						<h1 class=" text-center">Billing Address</h1>

						<div class="text-center">
							<h3>
								<strong>${registerModel.billing.addressLineOne},</strong>
							</h3>
							<h4>
								<strong>${registerModel.billing.addressLineTwo},</strong>
							</h4>
							<h4>
								<strong>${registerModel.billing.city}-
									${registerModel.billing.postalCode},</strong>
							</h4>
							<h4>
								<strong>${registerModel.billing.state}</strong>
							</h4>
							<h4>
								<strong>${registerModel.billing.country}</strong>
							</h4>
							<h4>
								<a href="${flowExecutionUrl}&_eventId_billing"
									class="btn btn-primary">Edit</a>
							</h4>
						</div>
					</div>

				</div>
				<div
					class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
					<div class="text-center">

						<a href="${flowExecutionUrl}&_eventId_submit"
							class="btn btn-lg btn-primary">Confirm</a>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>


<%@include file="../flows-shared/footer.jsp"%>