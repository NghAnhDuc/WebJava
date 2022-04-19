<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<title>Shopping Cart</title>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="<c:url value="/assets/user2/img/breadcrumb.jpg"/>">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Shopping Cart</h2>
						<div class="breadcrumb__option">
							<a href="<c:url value="/trang-chu"/>">Home</a> <span>Shopping
								Cart</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product" >Products</th>
									<th style="text-align:center;">Price</th>
									<th style="text-align:center;">Quantity</th>
									<th></th>
									<th style="text-align:center;">Total</th>
									<th></th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="item" items="${Cart}">
									<tr>
										<td style="text-align:center;" class="shoping__cart__item"><img
											src="<c:url value="/assets/user/img/${item.value.product.img }"/>"
											alt="">
											<h5>${item.value.product.name }</h5></td>
										<td class="shoping__cart__price"><fmt:formatNumber
												type="number" groupingUsed="true"
												value="${item.value.product.price }" />₫</td>
										<td class="shoping__cart__quantity">
											<div class="quantity">
												<div class="pro-qty">
													<input type="text" placeholder="1"
														id="quanty-cart-${item.key }"
														value="${item.value.quanty }">
												</div>
											</div>
										</td>
										<td><button data-id="${item.key }"
												class="btn btn-mini btn-danger edit-cart mb-1 mr-4"button">
												<span class="fa fa-pencil"></span>
											</button></td>

										<td class="shoping__cart__total"><fmt:formatNumber
												type="number" groupingUsed="true"
												value="${item.value.totalPrice }" />₫</td>
										<td class="shoping__cart__item__close"><a
											href="<c:url value="/DeleteCart/${item.key }" />"> <span
												class="icon_close"></span>
										</a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__btns">
						<a href="<c:url value="/trang-chu"/>" class="primary-btn cart-btn">CONTINUE
							SHOPPING</a>

					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__continue">
						<div class="shoping__discount">
							<h5>Discount Codes</h5>
							<form action="#">
								<input type="text" placeholder="Enter your coupon code">
								<button type="submit" class="site-btn">APPLY COUPON</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="shoping__checkout">
						<h5>Cart Total</h5>
						<ul>

							<li>Total <c:if test="${empty TotalPriceCart}">
									<span>0₫</span>
								</c:if> <c:if test="${not empty TotalPriceCart}">
									<span><fmt:formatNumber type="number"
											groupingUsed="true" value="${TotalPriceCart }" />₫</span>
								</c:if>
							</li>


						</ul>

						<c:if test="${empty LoginInfo }">
							<a href="<c:url value="/dang-nhap" />" class="primary-btn">PROCEED
								TO CHECKOUT</a>
						</c:if>
						<c:if test="${not empty LoginInfo }">
							<a href="<c:url value="/checkout" />" class="primary-btn">PROCEED
								TO CHECKOUT</a>
						</c:if>

					</div>
				</div>
			</div>
		</div>
		<!-- Shoping Cart Section End -->

	</section>
	<content tag="script"> <script>
		$(".edit-cart").on("click", function() {
			var id = $(this).data("id");
			var quanty = $("#quanty-cart-" + id).val();
			window.location = "EditCart/" + id + "/" + quanty;
		});
	</script> </content>
</body>