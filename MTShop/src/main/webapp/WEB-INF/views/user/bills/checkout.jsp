<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<meta charset="UTF-8">
<title>Checkout</title>
</head>
<body>
	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="<c:url value="/assets/user2/img/breadcrumb.jpg"/>">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Checkout</h2>
						<div class="breadcrumb__option">
							<a href="<c:url value="/trang-chu"/>">Home</a> <span>Checkout</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Checkout Section Begin -->
	<section class="checkout spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h6>
						<span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click
							here</a> to enter your code
					</h6>
				</div>
			</div>
			<div class="checkout__form">
				<h4>Billing Details</h4>
				<form:form action="checkout" method="POST" modelAttribute="bills">
					<div class="row">
						<div class="col-lg-8 col-md-6">
							<div class="checkout__input">
								<p>
									Full Name<span>*</span>
								</p>
								<form:input style="color:black" type="text" path="display_name" />
							</div>
							<div class="checkout__input">
								<p>
									Address<span>*</span>
								</p>
								<form:input style="color:black" type="text" placeholder="Street Address"
									class="checkout__input__add" path="address" />
							</div>
							<div class="row">
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Phone<span>*</span>
										</p>
										<form:input style="color:black" type="text" path="phone" />
									</div>
								</div>
								<div class="col-lg-6">
									<div class="checkout__input">
										<p>
											Email<span>*</span>
										</p>
										<form:input style="color:black" type="email" path="user" />
									</div>
								</div>
							</div>
							<div class="checkout__input">
								<p>Order notes</p>
								<form:input style="color:black" type="text"
									placeholder="Notes about your order, e.g. special notes for delivery."
									path="note" />
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="checkout__order">
								<h4>Your Order</h4>
								<div class="checkout__order__products">
									Products <span>Total</span>
								</div>
								<ul>
									<c:forEach var="item" items="${Cart}">
										<li>${item.value.product.name }<span><fmt:formatNumber
													type="number" groupingUsed="true"
													value="${item.value.totalPrice }" />₫</span></li>
									</c:forEach>
								</ul>
								<div class="checkout__order__total">
									Total <span><fmt:formatNumber type="number"
											groupingUsed="true" value="${ TotalPriceCart }" />₫</span>
								</div>
								<button type="submit" class="site-btn">PLACE ORDER</button>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</section>
	<!-- Checkout Section End -->
</body>
