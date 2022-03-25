<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.laptrinhjavaweb.util.SecurityUtils" %>
<header class="header">
	<div class="grid wide">
		<!-- Phần trên của header -->
		<nav class="header__navbar hide-on-mobile-tablet">
			<ul class="header__navbar-list">
				<li class="header__navbar-item header__navbar-item--has-qr header__navbar-item--saparate">
					Vào cửa hàng trên ứng dụng Shoppe
					<!-- Header qr code-->
					<div class="header__qr">
						<img src="<c:url value="/assets/user/assets/css/img/Qrcode.png" />" alt="Qr code" class="header__qr-img">

						<div class="header__qr-apps">
							<a href="" class="header__qr-link">
								<img src="<c:url value="/assets/user/assets/css/img/googleplay.png" />" alt="Google Play" class="header__qr-download-img">
							</a>

							<a href="" class="header__qr-link">
								<img src="<c:url value="/assets/user/assets/css/img/appstore.png" />" alt="App Store" class="header__qr-download-img">
							</a>

						</div>
					</div>
				</li>

				<li class="header__navbar-item">
					<span class="header__navbar-item-title--no-pointer">Kết nối</span>
					<a href="" class="header__navbar-icon-link">
						<i class="header__navbar-icon fab fa-facebook"></i>
					</a>

					<a href="" class="header__navbar-icon-link">
						<i class="header__navbar-icon fab fa-instagram"></i>
					</a>
				</li>
			</ul>

			<ul class="header__navbar-list">
				<li class="header__navbar-item header__navbar-item-has--notify">
					<a href="" class="header__navbar-item-link">
						<i class="header__navbar-icon far fa-bell"></i>
						Thông báo
					</a>
					<div class="header__notify">
						<header class="header__notify-header">
							<h3>Thông báo mới nhận</h3>
						</header>
						<ul class="header__notify-list">
							<li class="header__notify-item">
								<a href="" class="header__notify-link">
									<img src="https://cf.shopee.vn/file/afd61876eccbba55e5fd44dc5e361ac2_tn" alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Voucher nóng hổi đừng vội bỏ qua!</span>
										<span class="header__notify-discriotion">💥 Mã Hoàn đến 100K Xu đơn 150K
                                                        🌈 Đã có sẵn trong ví voucher của bạn
                                                        🔔 Hiệu lực: 0H 19/09/2021 - 23H59 25/09/2021
                                                        👉 Số lượng có hạn - Dùng ngay bạn nhé!</span>
									</div>
								</a>
							</li>

							<li class="header__notify-item">
								<a href="" class="header__notify-link">
									<img src="https://cf.shopee.vn/file/f7b832f3c83801725de3ef57cb6897eb_tn" alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Hàng hot đến rồi đây! Mau vào mở ví!</span>
										<span class="header__notify-discriotion">💥 Mã hoàn đến 25K xu cho đơn từ 0Đ
                                                        🌈 Đã có sẵn trong ví voucher của bạn
                                                        🔔 Hiệu lực: 0H 19/09/2021 - 23H59 25/09/2021
                                                        👉 Số lượng có hạn - Dùng ngay bạn nhé!</span>
									</div>

								</a>
							</li>

							<li class="header__notify-item">
								<a href="" class="header__notify-link">
									<img src="https://cf.shopee.vn/file/1567991b5d3f8c444c388d2ebd7f13ab_tn" alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Deal thơm như thế này sao lại bỏ lỡ!!</span>
										<span class="header__notify-discriotion">🔥 Quốc Tế siêu sale cực đã
                                                        ☄️ Nhiểu deal hot x9K
                                                        🎉 Mua nhiều giảm đến 50%
                                                        🛒 Toàn hàng hot hit - Lỡ là tiếc nha!</span>
									</div>

								</a>
							</li>

							<li class="header__notify-item header__notify-item--viewed">
								<a href="" class="header__notify-link">
									<img src="https://cf.shopee.vn/file/3ce525ead114304b81973206e8d4741d_tn" alt="" class="header__notify-img">
									<div class="header__notify-info">
										<span class="header__notify-name">Ồ quao! Hàng quốc tế chỉ 1K</span>
										<span class="header__notify-discriotion">⚡ Tặng thêm 2 mã Freeship
                                                        💥 Deal cực hot 1K, 9K
                                                        ✨ Mua 2 giảm 50%
                                                        💁 Vào ngay kẻo hết!!!</span>
									</div>

								</a>
							</li>
						</ul>
						<footer class="header__notify-footer">
							<a href="" class="header__notify-footer-btn">Xem tất cả</a>
						</footer>
					</div>
				</li>
				<!--<li class="header__navbar-item">
					<a href="" class="header__navbar-item-link">
						<i class="header__navbar-icon far fa-question-circle"></i>
						Trợ giúp
					</a>
				</li>-->
				<li class="header__navbar-item header__navbar-item-has--notify">
					<a href="" class="header__navbar-item-link">
						<i class="header__navbar-icon far fa-question-circle"></i>
						Menu
					</a>
					<div class="header__notify">
						<header class="header__notify-header">
							<h3>About</h3>
						</header>
						<ul class="header__notify-list">
							<c:forEach var="item" items="${ menu }" >
							<li class="header__notify-item">
								<a href="" class="header__notify-link">
									<div class="header__notify-info">
										<span class="header__notify-name">${item.name}</span>

									</div>
								</a>
							</li>
							</c:forEach>
						</ul>
						<footer class="header__notify-footer">
							<a href="" class="header__notify-footer-btn">Xem tất cả</a>
						</footer>
					</div>
				</li>

				<!--<li class="header__navbar-item header__navbar-item--strong header__navbar-item--saparate">Đăng ký</li>
                <li class="header__navbar-item header__navbar-item--strong">Đăng nhập</li>-->

				<li class="header__navbar-item header__navbar-user">
					<img src="https://cf.shopee.vn/file/8c37c3474f8699a2a6dd73ef46cd4d17_tn" alt="" class="header__navbar-user-img">
					<security:authorize access = "isAuthenticated()">
					<span class="header__navbar-user-name"><%=SecurityUtils.getPrincipal().getFullName()%></span>
					</security:authorize>

					<ul class="header__navbar-user-menu">
						<li class="header__navbar_user_item">
							<a href="">Tài khoản của tôi </a>
						</li>
						<li class="header__navbar_user_item">
							<a href="">Đơn mua</a>
						</li>
						<security:authorize access = "isAuthenticated()">
						<li class="header__navbar_user_item header__navbar_user_item--separate">
							<a href="<c:url value="/thoat" />">Đăng xuất</a>
						</li>
						</security:authorize>
						<security:authorize access = "isAnonymous()">
						<li class="header__navbar_user_item header__navbar_user_item--separate">
							<a href="<c:url value="/dang-nhap" />">Đăng nhập</a>
						</li>
						</security:authorize>
					</ul>
				</li>
			</ul>

		</nav>
		<!-- Phần dưới của header -->
		<!-- Header with search -->
		<div class="header-with-search">
			<div class="header__logo">
				<a href="" class="header__logo-link">
					<img src="<c:url value="/assets/user/assets/css/img/logoshopee.png" />" alt="Trang Chủ" class="header__logo-img hide-on-tablet">
				</a>
			</div>
			<div class="header__search">
				<div class="header__search-input-wrap">
					<input type="text" class="header__search-input"placeholder="Tìm kiếm sản phẩm">
					<!-- Search history -->
					<div class="header__search-history">
						<h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
						<ul class="header__search-history-list">
							<li class="header__search-history-item">
								<a href="">Máy bay size XL</a></li>
							<li class="header__search-history-item">
								<a href="">Lamborghini</a></li>
							<li class="header__search-history-item">
								<a href="">300 bài code thiếu nhi</a></li>
						</ul>
					</div>
				</div>
				<div class="header__search-select">
					<span class="header__search-select-lable">Trong shop</span>
					<i class="header__search-select-icon fas fa-angle-down"></i>

					<ul class="header__search-option">
						<li class="header__search-option-item header__search-option-item--active ">
							<span>Trong shop</span>
							<i class="fas fa-check"></i>
						</li>
						<li class="header__search-option-item">
							<span>Ngoài shop</span>
							<i class="fas fa-check"></i>
						</li>
					</ul>
				</div>
				<button class="header__search-btn">
					<i class="header__search-btn-icon fas fa-search"></i>
				</button>
			</div>
			<!-- Cart layout -->
			<div class="header__cart">
				<div class="header__cart-wrap">
					<i class="header__cart-icon fas fa-shopping-cart"></i>
					<span class="header__cart-notice">${ TotalQuantyCart }</span>
					<!-- No cart: header__cart-list--no-cart -->
					<div class="header__cart-list ">
						<img src="<c:url value="/assets/user/assets/css/img/empty-cart-1.png" />"alt="" class="header__cart-no-cart-img">
						<span class="header__cart-list-no-cart-msg">
                                    Chưa có sản phẩm
                                </span>

						<h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
						<ul class="header__cart-list-item">
							<li class="header__cart-item">
								<img src="https://cf.shopee.vn/file/611800906b8edf0c606f99eca9e379cf" alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">ÁO TAY DÀI (XẢ KHO)</h5>
										<span class="header__cart-item-price">₫18.000</span>
									</div>
								</div>
							</li>

							<li class="header__cart-item">
								<img src="https://cf.shopee.vn/file/2dd923298ba0685a2288af4ae443c51c" alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Apple iPhone 12 Pro Max 128GB</h5>
										<span class="header__cart-item-price">₫33.990.000</span>
									</div>
								</div>
							</li>

							<li class="header__cart-item">
								<img src="https://cf.shopee.vn/file/62fe7bf14a441f3eb3e51682cf979670_tn" alt="" class="header__cart-img">
								<div class="header__cart-item-info">
									<div class="header__cart-item-head">
										<h5 class="header__cart-item-name">Áo khoác nỉ bomber phối tay phong cách ulzzang</h5>
										<span class="header__cart-item-price">₫200.000</span>
									</div>
								</div>
							</li>
						</ul>

						<a href="<c:url value="/gio-hang" /> " class="header__cart-view-cart btn btn--primary">Xem giỏ hàng</a>
					</div>
				</div>

			</div>
		</div>

	</div>
</header>