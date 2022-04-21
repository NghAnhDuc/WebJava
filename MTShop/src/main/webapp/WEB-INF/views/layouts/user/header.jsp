<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="header__top__left">
						<ul>

							<li><i class="fa fa-envelope"></i> <c:if
									test="${empty LoginInfo.user}">Account</c:if> <c:if
									test="${not empty LoginInfo.user}">${LoginInfo.user}</c:if></li>
							<li>Free Shipping for all Order of $99</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
						<div class="header__top__right__language">
							<img src="<c:url value="/assets/user2/img/language.png"/>" alt="">
							<div>English</div>
							<span class="arrow_carrot-down"></span>
							<ul>
								<li><a href="#">Spanish</a></li>
								<li><a href="#">English</a></li>
							</ul>
						</div>
						<c:if test="${empty LoginInfo }">
							<div class="header__top__right__auth">
								<a href="<c:url value="/dang-nhap"/>"><i class="fa fa-user"></i>Login</a>
							</div>

							<div class="header__top__right__auth ml-3">
								<a href="<c:url value="/dang-ky"/>"><i
									class="fa fa-user-plus"></i>Register</a>
							</div>
						</c:if>
						<c:if test="${not empty LoginInfo }">
							<div class="header__top__right__auth">
								<a href="<c:url value="/dang-xuat"/>"><i class="fa fa-sign-out"></i>Logout</a>
							</div>

							
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="<c:url value="/trang-chu"/>"><img
						src="<c:url value="/assets/user2/img/logo.png"/>" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu">
					<ul>
						<li class="active"><a href="<c:url value="/trang-chu"/>">Home</a></li>
						<li><a href="<c:url value="/san-pham"/>">Shop</a></li>
						<li><a href="#">Pages</a>
							<ul class="header__menu__dropdown">
								<li><a href="<c:url value="/gio-hang"/>">Shopping Cart</a></li>
								<li><a href="#">Blog</a></li>
							</ul></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3">
				<div class="header__cart">
					<ul>
						
						<li><a href="<c:url value="/gio-hang"/>"> <i
								class="fa fa-shopping-bag"></i> <c:if
									test="${TotalQuantyCart > 0}">
									<span>${TotalQuantyCart}</span>
								</c:if>
						</a></li>
					</ul>
					<div class="header__cart__price">
						Total:
						<c:if test="${empty TotalPriceCart}">
							<span>0₫</span>
						</c:if>
						<c:if test="${not empty TotalPriceCart}">
							<span><fmt:formatNumber type="number" groupingUsed="true"
									value="${TotalPriceCart }" />₫</span>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->