<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="shortcut icon" href="resources/image/icon.ico" type="image/x-icon">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</head>
<body>
	<header>
        <div class="topHead d-flex" style="justify-content: space-between;">
            <div class="navbar" style="padding: 0; display: block;">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/ShopeeProj/LOP">Kênh Người Bán</a>
                    </li>
                    <li class="nav-item separator">
                        <div></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trở thành Người bán Shopee </a>
                    </li>
                    <li class="nav-item separator">
                        <div></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tải ứng dụng</a>
                    </li>
                    <li class="nav-item separator">
                        <div></div>
                    </li>
                </ul>
            </div>
            <div class="navbar" style="padding: 0px 0px 10px 0px; display: block;">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="#"><i class="fa-regular fa-bell"></i> Thông Báo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa-regular fa-circle-question"></i> Hỗ Trợ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><i class="fa-solid fa-earth-americas"></i> Tiếng Việt</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Đăng Ký</a>
                    </li>
                    <li class="nav-item separator">
                        <div></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/ShopeeProj/Login">Đăng Nhập</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="wrapHeaderSearch">
            <div class="headerSearch d-flex" style="justify-content: space-between;">
                <div class="logo" style="transform:translateY(6px);margin-right:20px;">
                    <a href="/ShopeeProj/Home"><img
                            src="https://www.freepnglogos.com/uploads/shopee-logo/logo-shopee-png-images-download-shopee-1.png"
                            alt=""></a>
                </div>
                <div class="wrapper-searchbar">
                    <div class="searchbar d-flex">
                        <form action="Search" method="post" style="display:flex;allign-items:center;">
                            <div><input name="input" type="text"
                                style="border: none; width: 420%; height: 34px; padding-left: 10px; border-radius: 3px;"
                                placeholder="Nhập sản phẩm bạn muốn tìm">
                               
                            </div>
                             <div style="transform:translateX(780%);">
		                        <input class="btn" style="background-color: orangered;color:white;padding-bottom:2px;padding-right:12px;" type="submit" value="Search">
		                    </div>
                        </form>
                        
                    </div>
                    <div class="tagSearch">
                        <div class="navbar" style="padding: 0px 0px 0px 0px; display: block;">
                            <ul class="nav">
                                <li class="nav-item">
                                    <a class="nav-link active" href="#"></i>Dép</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"></i>Áo Khoác</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"></i>Túi Xách Nữ</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Áo Croptop</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Ốp Iphone</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#"></i>Váy</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Áo Khoác Nam</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Tai Nghe Bluetooth</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="cart d-flex" style="margin-right: 60px; color: white; font-size: 10px;">
                    <div class="cart-tooltip" data-toggle="tooltip" data-placement="bottom">
                        <i class="fa-solid fa-cart-shopping fa-2xl"></i>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- <marquee behavior="" direction="right">Phat trien boi binthinhle</marquee> -->
    <main>
        <div class="banner">
            <div class="fullBanner">
                <div class="allBanner">
                    <div class="d-flex">
                        <div class="carousel">
                            <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0"
                                        class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1"
                                        aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2"
                                        aria-label="Slide 3"></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="resources/image//banner/carousel/banner1.jfif" class="d-block w-100"
                                            alt="...">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="resources/image/banner/carousel/banner2.jfif" class="d-block w-100" alt="...">
                                    </div>
                                    <div class="carousel-item">
                                        <img src="resources/image/banner/carousel/banner3.png" class="d-block w-100" alt="...">
                                    </div>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel"
                                    data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#myCarousel"
                                    data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                        </div>
                        <div class="rightBanner">
                            <div class="topRightBanner">
                                <img src="resources/image/banner/right_banner/bottomRightBanner.png" alt="">
                            </div>
                            <div class="bottomRightBanner">
                                <img src="resources/image/banner/right_banner/topRightBanner.jfif" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="service">
                        <div class="container-sm" style="height: 105px;">
                            <div class="row" style="height: 105px;">
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service1.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Gì Cũng Rẻ - Mua Là Freeship
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service2.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Flash Sale
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service3.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Miễn Phí Vận Chuyển
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service4.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Bắt Trend - Giá Sốc
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service5.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Hoàn Xu Xtra
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service6.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Hàng Hiệu Giá Tốt
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service7.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Hàng Quốc Tế - Thương Hiệu 59K
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/banner/service/service8.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-service">
                                        Nạp Thẻ & Dịch Vụ
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="homePage">
                <div class="headerSection">
                    <div class="headCategory d-flex">
                        <div class="headCategoryTitle">
                            DANH MỤC
                        </div>
                    </div>
                    <div class="category">
                        <div class="container-sm" style="height: 300px; width: 1201px;">
                            <div class="row">
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Thời Trang Nam
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Điện Thoại & Phụ Kiện
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Thiết Bị Điện Tử
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Máy Tính & Laptop
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Máy Ảnh & Máy Quay Phim
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Đồng Hồ
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Giày Dép Nam
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Thiết Bị Điện Gia Dụng
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Thể Thao & Du Lịch
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Ô Tô & Xe Máy & Xe Đạp
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Thời Trang Nữ
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Mẹ & Bé
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Nhà Cửa & Đời Sống
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Sắc Đẹp
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Sức Khỏe
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Giày Dép Nữ
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Túi Ví Nữ
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Phụ Kiện & Trang Sức Nữ
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Bách Hóa Online
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="contain-img">
                                        <div class="wrapper-img">
                                            <img src="resources/image/category/productCategory.png" alt="">
                                        </div>
                                    </div>
                                    <div class="wrapper-text-category">
                                        Nhà Sách Online
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="hotSearch">
            <div class="headerHotSearch">

            </div>
            <div class="bodyHotSearch">

            </div>
        </div> -->
        <div class="allProduct">
            <div class="wrapper-header-product">
                <div class="container-header-product">
                    <div class="header-product">
                        <div class="header-product-line">
                        </div>
                        <div class="header-product-text">
                            GỢI Ý HÔM NAY
                        </div>
                    </div>
                </div>
            </div>
            <div class="product">
                <div class="container" style="width: 1200px; margin-bottom: 30px;">
                
                	<c:forEach items="${list}" var="o">
                		 <div class="card">	
	                        <a href="detail?id=${o.getId()}">
	                            <div class="wrapper-product d-flex">
	                                <div class="contain-img">
	                                    <div class="wrapper-img">
	                                        <img src="${o.getProductImg()}" alt="">
	                                    </div>
	                                </div>
	                                <div class="wrapper-text-product d-flex">
	                                    <div class="wrapper-product-name d-flex">
	                                        <div class="wrapper-name d-flex">
	                                            <div class="product-name">
	                                                ${o.getProductName()}
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="product-detail d-flex">
	                                        <div class="product-price">
	                                            <span>
	                                                đ
	                                            </span>
	                                            <span>
	                                                ${o.getProductPrice()}
	                                            </span>
	                                        </div>
	                                        <div class="product-selled">
	                                            Đã bán 8,5k
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </a>   
	                    </div>
                	</c:forEach>
                   
                    
                 
                    
                   
                </div>
                <div class="row">
                	<nav aria-label="...">
					  <ul class="pagination justify-content-center pagination-lg">
					    <li class="page-item">
					      <a class="page-link" href="Home?pid=1" tabindex="-1">1</a>
					    </li>
					    <li class="page-item"><a class="page-link" href="Home?pid=7">2</a></li>
					    <li class="page-item"><a class="page-link" href="Home?pid=13">3</a></li>
					  </ul>
					</nav>
				
                    
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="information-line">
        </div>
        <div class="information">
            <div class="leftInfo">
                <div style="display: flex;">
                    <p style="font-size: 20px; color: azure; font-weight: bold; margin-right: 5px;">VỀ</p>
                    <p style="color: #32C5D2; font-size: 20px;font-weight: bolder;">TAMVO</p>
                </div>
                <div style="font-size: 18; color: aliceblue;">
                    Uy Tín Tạo Niềm Tin, Đẳng Cấp Làm Nên Thương Hiệu
                </div>
                <div style="font-size: 18; color: aliceblue;">Chỉ Có Thứ Bạn Không Nghĩ tới <br>
                    Không Có Thứ Chúng Tôi Không Làm Được
                </div>
                <div style="font-size: 18; color: aliceblue; display: flex; margin-top: 8px;">
                    <p style="margin-right: 5px;">2022 &copy Web Được Phát Triển Bởi tam </p>
                    <p style="color: red; font-weight: bold;">tamvo</p>
                </div>
            </div>
            <div class="rightInfo">
                <div style="display: flex;">
                    <p style="font-size: 20px; color: azure; font-weight: bold; margin-right: 5px;">CHÚNG TÔI Ở ĐÂY</p>
                </div>
                <div style="font-size: 18; color: aliceblue;">
                    Chúng tôi làm việc một cách chuyên nghiệp, uy tín, nhanh chóng và luôn đặt quyền lợi của bạn lên
                    hàng đầu
                </div>
                <div style="font-size: 18; color: aliceblue; margin-top: 10px;">
                    <div>
                        Hotline: 0775.102.222
                    </div>
                    <div>
                        Fb: www.facebook.com/whynot266
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script>
		
		
		function plusDivs(n) {
			if 
		}
		
		
	</script>
</body>
</html>