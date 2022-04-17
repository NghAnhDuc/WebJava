<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<title>Admin</title>
<body>
	<!-- Hero Section Begin -->
	<h1>This is Admin page</h1>
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>All Categories</span>
						</div>
						<ul>
							<c:forEach var="item" items="${categories}">
								<li><a href="<c:url value="/loai-san-pham/${item.id }" />">${item.name}</a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="#">
								<!-- <div class="hero__search__categories">
									All Categories <span class="arrow_carrot-down"></span>
								</div> -->
								<input type="text" placeholder="What do you need?">
								<button type="submit" class="site-btn">SEARCH</button>
							</form>
						</div>
						<div class="hero__search__phone">
							<div class="hero__search__phone__icon">
								<i class="fa fa-phone"></i>
							</div>
							<div class="hero__search__phone__text">
								<h5>+65 11.188.888</h5>
								<span>support 24/7 time</span>
							</div>
						</div>
					</div>



					<div class="hero__item set-bg"
						data-setbg="<c:url value="/assets/user/img/210210215637-best-jewelry-under-100-lead.jpg"/> ">
						<div class="hero__text">
							
							<h2>
								Jewelry <br />100% Genuine
							</h2>
							<p>Free Pickup and Delivery Available</p>
							<a href="#" class="primary-btn">SHOP NOW</a>
						</div>
					</div>


				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->


	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Featured Product</h2>
					</div>
				</div>
			</div>
			<div class="row featured__filter">
				<c:if test="${ productsHighlight.size() > 0 }">
					<c:forEach var="item" items="${ productsHighlight }"
						varStatus="loop">

						<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="/assets/user/img/${item.img }"/> ">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a
											href="<c:url value="/AddCart/${item.id_product }"/>"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="<c:url value="/chi-tiet-san-pham/${item.id_product }"/>">${item.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber type="number" groupingUsed="true"
											value="${item.price } " />
										₫
									</h5>
								</div>
							</div>
						</div>

					</c:forEach>
				</c:if>
				<a href="#" class="primary-btn text-white m-auto ">More</a>
			</div>
		</div>
	</section>
	<!-- Featured Section End -->

	<!-- Banner Begin -->
	<div class="banner">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="<c:url value="/assets/user2/img/banner/banner-1.jpg"/> "
							alt="">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
					<div class="banner__pic">
						<img src="<c:url value="/assets/user2/img/banner/banner-2.jpg"/> "
							alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner End -->

	<!-- Blog Section Begin -->
	<section class="from-blog spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title from-blog__title">
						<h2>New Product</h2>
					</div>
				</div>
			</div>

			<div class="row featured__filter">
				<c:if test="${ productsNew.size() > 0 }">
					<c:forEach var="item" items="${ productsNew }" varStatus="loop">

						<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
							<div class="featured__item">
								<div class="featured__item__pic set-bg"
									data-setbg="<c:url value="/assets/user/img/${item.img }"/> ">
									<ul class="featured__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a
											href="<c:url value="/AddCart/${item.id_product }"/>"><i
												class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="featured__item__text">
									<h6>
										<a href="<c:url value="/chi-tiet-san-pham/${item.id_product }"/>">${item.name }</a>
									</h6>
									<h5>
										<fmt:formatNumber type="number" groupingUsed="true"
											value="${item.price } " />
										₫
									</h5>
								</div>
							</div>
						</div>

					</c:forEach>
				</c:if>
				<a href="#" class="primary-btn text-white m-auto ">More</a>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->
</body>
