
<div class="well" id="products1">
<h1 class="text-center">Category</h1>




<div class="list-group text-uppercase">


	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="a_${category.name}">${category.name}</a>
	</c:forEach>

	 
</div>
</div>