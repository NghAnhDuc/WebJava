<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>

<head>
<title>Shop</title>
</head>
<body>

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		data-setbg="<c:url value="/assets/user2/img/breadcrumb.jpg"/>">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Organi Shop</h2>
						<div class="breadcrumb__option">
							<a href="<c:url value="/trang-chu"/>">Home</a> <span>Shop</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->

	<!-- Product Section Begin -->
	<section class="product spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-5">
					<div class="sidebar">
						<div class="sidebar__item">
							<h4>Category</h4>
							<ul>
								<c:forEach var="item" items="${categories}">
									<li><a href="<c:url value="/loai-san-pham/${item.id }" />">${item.name}</a></li>
								</c:forEach>
							</ul>
						</div>
						<!-- <div class="sidebar__item">
							<h4>Price</h4>
							<div class="price-range-wrap">
								<div
									class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
									data-min="10" data-max="540">
									<div class="ui-slider-range ui-corner-all ui-widget-header"></div>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
									<span tabindex="0"
										class="ui-slider-handle ui-corner-all ui-state-default"></span>
								</div>
								<div class="range-slider">
									<div class="price-input">
										<input type="text" id="minamount"> <input type="text"
											id="maxamount">
									</div>
								</div>
							</div>
						</div>
						<div class="sidebar__item sidebar__item__color--option">
							<h4>Colors</h4>
							<div class="sidebar__item__color sidebar__item__color--white">
								<label for="white"> White <input type="radio" id="white">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--gray">
								<label for="gray"> Gray <input type="radio" id="gray">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--red">
								<label for="red"> Red <input type="radio" id="red">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--black">
								<label for="black"> Black <input type="radio" id="black">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--blue">
								<label for="blue"> Blue <input type="radio" id="blue">
								</label>
							</div>
							<div class="sidebar__item__color sidebar__item__color--green">
								<label for="green"> Green <input type="radio" id="green">
								</label>
							</div>
						</div>
						<div class="sidebar__item">
							<h4>Popular Size</h4>
							<div class="sidebar__item__size">
								<label for="large"> Large <input type="radio" id="large">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="medium"> Medium <input type="radio"
									id="medium">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="small"> Small <input type="radio" id="small">
								</label>
							</div>
							<div class="sidebar__item__size">
								<label for="tiny"> Tiny <input type="radio" id="tiny">
								</label>
							</div>
						</div> -->
					</div>
				</div>
				<div class="col-lg-9 col-md-7">
					<div class="product__discount">
						<div class="section-title product__discount__title">
							<h2>Products</h2>
						</div>
						<div>
							<div class="row">
								<div class="col-lg-4 col-md-5">
									<div class="filter__sort">
										<span>Sort By</span> <select>
											<option value="0">Default</option>
											<option value="0">Default</option>
										</select>
									</div>
								</div>
								<div class="col-lg-4 col-md-4">
									<div class="filter__found">
										<!-- <h6>
											<span>16</span> Products found
										</h6> -->
									</div>
								</div>
								<div class="col-lg-4 col-md-3">
									<div class="filter__option">
										<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<c:if test="${ productsPaginate.size()> 0 }">
							<c:forEach var="item" items="${ productsPaginate }"
								varStatus="loop">
								<div class="col-lg-4 col-md-6 col-sm-6">
									<div class="product__item">
										<div class="product__item__pic set-bg"
											data-setbg="<c:url value="/assets/user/img/${item.img }"/>">
											<ul class="product__item__pic__hover">
												<li><a href="#"><i class="fa fa-heart"></i></a></li>
												<li><a
													href="<c:url value="/AddCart/${item.id_product }"/>"><i
														class="fa fa-shopping-cart"></i></a></li>
											</ul>
										</div>
										<div class="product__item__text">
											<h6>
												<a
													href="<c:url value="/chi-tiet-san-pham/${item.id_product }"/>">${item.name }</a>
											</h6>
											<h5>
												<fmt:formatNumber type="number" groupingUsed="true"
													value="${item.price } " />
												₫
											</h5>
										</div>
									</div>
								</div>
								<c:if
									test="${ (loop.index + 1) % 3 == 0 || (loop.index + 1) == productsPaginate.size() }">
									<c:if test="${ (loop.index + 1) < productsPaginate.size() }">
										
									</c:if>
								</c:if>
							</c:forEach>
						</c:if>
					</div>
					<div class="product__pagination" style="text-align:center;">
						<c:forEach var="item" begin="1" end="${paginatesInfo.totalPage }"
							varStatus="loop">
							<c:if test="${ (loop.index) ==  paginatesInfo.currentPage}">
								<a
									href="<c:url value="/loai-san-pham/${idCategory}/${loop.index}"/>"
									style="color: black">${(loop.index)}</a>
							</c:if>
							<c:if test="${ (loop.index) !=  paginatesInfo.currentPage}">
								<a
									href="<c:url value="/loai-san-pham/${idCategory}/${loop.index}"/>">${ (loop.index)}</a>
							</c:if>
						</c:forEach>
						<%-- <a
							href="<c:url value="/loai-san-pham/${paginatesInfo.currentPage + 1}"/>"><i
							class="fa fa-long-arrow-right"></i></a> --%>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->
</body>
