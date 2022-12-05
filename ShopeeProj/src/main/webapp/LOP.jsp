<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>

    <link rel="stylesheet" href="resources/css/style-product.css">
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
                        <a class="nav-link active" aria-current="page" href="#">Kênh Người Bán</a>
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
                        <a class="nav-link" href="#">Đăng Nhập</a>
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
                        <div>
                            <input type="text"
                                style="border: none; width: 80%; height: 34px; padding-left: 10px; border-radius: 3px;"
                                placeholder="Nhập sản phẩm bạn muốn tìm">
                        </div>
                        <div class="d-flex searchbtn">
                            <a tabindex="0"
                                style="color: white; background-color: #ee4d2d; text-decoration: none; border: none;"
                                class="btn btn-lg btn-danger d-flex role=" button"><i
                                    class="fa-solid fa-magnifying-glass fa-xs"></i></a>
                        </div>
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
    <main>
        <table class="table table-striped caption-top align-middle">
            <caption><h1>LIST OF PRODUCTS</h1></caption>
            
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">Name</th>
                <th scope="col">Price</th>
                <th scope="col">Discount</th>
                <th scope="col">ACtions</th>
              </tr>
            </thead>
            <tbody>
            	<c:forEach items="${lop}" var="product">
	              <tr>
	                <th scope="row"><img src="${product.getProductImg()}" style="max-width:70px ;"alt=""></th>
	                <td style="overflow:hidden;">${product.getProductName()}</td>
	                <td>${product.getProductPrice()}</td>
	                <td>${product.getDiscount()}%</td>
	                <td><div style="display:flex;"><a class="btn btn-success" href="Update?id=${product.getId()}">UPDATE</a>&nbsp;&nbsp;&nbsp;&nbsp;
	                <a class="btn btn-secondary" href="Delete?did=${product.getId()}">DELETE</a></div></td>
	              </tr>
            	</c:forEach>
              
            </tbody>
          </table>
          <a class="btn btn-success" href="/ShopeeProj/Create">New Product</a>
    </main>
    <footer>
        <footer>
            <div class="information-line">
            </div>
            <div class="information">
                <div class="leftInfo">
                    <div style="display: flex;">
                        <p style="font-size: 20px; color: azure; font-weight: bold; margin-right: 5px;">VỀ</p>
                        <p style="color: #32C5D2; font-size: 20px;font-weight: bolder;">TAM VO</p>
                    </div>
                    <div style="font-size: 18; color: aliceblue;">
                        Uy Tín Tạo Niềm Tin, Đẳng Cấp Làm Nên Thương Hiệu
                    </div>
                    <div style="font-size: 18; color: aliceblue;">Chỉ Có Thứ Bạn Không Nghĩ tới <br>
                        Không Có Thứ Chúng Tôi Không Làm Được
                    </div>
                    <div style="font-size: 18; color: aliceblue; display: flex; margin-top: 8px;">
                        <p style="margin-right: 5px;">2022 &copy MRTHINKJ Web Được Phát Triển Bởi</p>
                        <p style="color: red; font-weight: bold;">TAM VO</p>
                    </div>
                </div>
                <div class="rightInfo">
                    <div style="display: flex;">
                        <p style="font-size: 20px; color: azure; font-weight: bold; margin-right: 5px;">CHÚNG TÔI Ở ĐÂY
                        </p>
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
    </footer>
    <script src="resources/image/js/productJS.js"></script>
</body>
</html>