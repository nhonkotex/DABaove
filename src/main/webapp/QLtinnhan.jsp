<%@page import="code.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.List"%>
<%@page import="code.model.*"%>
<%@page import="code.dao.ProductDao"%>

<%
   
    
    ProductDao dl = new ProductDao(DbCon.getConnetion());
    List<Product> quanly = dl.getAllProducts();
    
%> 
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
 <link rel="stylesheet" href="css/admintest.css">
 <link rel="stylesheet" href="css2/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css2/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css2/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css2/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css2/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css2/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css2/style.css" type="text/css">
<meta name="viewport" content="width=device-width,initial-scale=1">

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
 <!----======== CSS ======== -->
    <link rel="stylesheet" href="css/index.css" type="text/css" media="all" /> <!-- Style-CSS --> 
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>

     <!-- ===== Link Swiper's CSS ===== -->
     <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>

     <!-- ===== Fontawesome CDN Link ===== -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>
<body>
	   <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                      <img class="card-img-top" src="image/logo.jpeg" alt="Card image cap">
                </span>

                <div class="text logo-text">
                    <span class="name">Apple Shop</span>
                    <span class="profession">Veterinarians</span>
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>

        <div class="menu-bar">
            <div class="menu">

                <li class="search-box">
                    <i class='bx bx-search icon'></i>
                    <input type="text" placeholder="Tim Kiem....">

                </li>

                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="admin.jsp">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Home</span>
                        </a>
                    </li>
                     
                   
						
                    <li class="nav-link">
                        <a href="QLProduct.jsp">
                            <i class='bx bx-heart icon'></i>
                            <span class="text nav-text">Product</span>
                        </a>
                    </li>

                     <li class="nav-link">
                        <a href="QLDonhang.jsp">
                            <i class='bx bx-bar-chart-alt-2 icon' ></i>
                            <span class="text nav-text">Order</span>
                        </a>
                    </li>
					

                    <li class="nav-link">
                        <a href="QLthongbao.jsp">
                            <i class='bx bx-bell icon' ></i>
                            <span class="text nav-text">Notification</span>
                        </a>
                    </li>

                   
					  <li class="nav-link">
                        <a href="QLUser.jsp">
                            <i class='bx bx-user icon'></i>
                            <span class="text nav-text">User</span>
                        </a>
                    </li>
                    
                     <li class="nav-link">
                        <a href="QLNhanvien.jsp">
                            <i class='bx bx-cloud icon'></i>
                            <span class="text nav-text">Staff</span>
                        </a>
                    </li>
                    
                      <li class="nav-link">
                        <a href="QLtinnhan.jsp">
                            <i class='bx bx-envelope icon'></i>
                            <span class="text nav-text">Message</span>
                        </a>
                    </li>
                    
					   <li class="">
                    <a href="login.jsp">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Logout</span>
                    </a>
                </li>
                </ul>
            </div>
	
           
			
                <li class="mode">
                    <div class="sun-moon">
                        <i class='bx bx-moon icon moon'></i>
                        <i class='bx bx-sun icon sun'></i>
                    </div>
                    <span class="mode-text text">Dark mode</span>

                    <div class="toggle-switch">
                        <span class="switch"></span>
                    </div>
                </li>
                
            </div>
        </div>

    </nav>
   <!--  thanh tìm kiếm  -->
    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="admin.jsp">Home</a></li>
                            <li><a href="QLProduct.jsp">Product</a></li>
                            <li><a href="QLDonhang">Order</a></li>
                            <li><a href="QLthongbao.jsp">Notification</a></li>
                            <li><a href="QLUser.jsp">User</a></li>
                            <li><a href="QLNhanvien.jsp">Staff</a></li>
                            <li><a href="QLtinnhan.jsp">message</a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="UserSearch" method="get">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" name="searchString" placeholder="Enter user name" />
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>0397898964</h5>
                                <span>support 24/7 time</span>
                            </div>
                           
                        </div>
                         
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
   
	
	 <div class="image-gallery">
            <header> Sản Phẩm của Shop Pet </header>
        </div>
	<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">category</th>
					<th scope="col">price</th>
					<th scope="col">image</th>
					<th scope="col">Xoá</th>
				</tr>
			</thead>
			<tbody>
			
				<%
			if(!quanly.isEmpty()) {
				for (Product q : quanly) {		
				%>
					<tr>
						<td><%=q.getId() %></td>
						<td><%=q.getName() %></td>
						<td><%=q.getCategory() %></td>
						<td><%=q.getPrice() %></td>
						<td><%=q.getImage() %></td>
						<td><a class="btn btn-sm btn-danger" href="delete-product?id=<%=q.getId()%>">Xoá</a></td>
					</tr>
					
				<%}	
			}
			%>
			</tbody>
					</table>
   
	 <!-- Footer Section Begin -->
   <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: K138/h97/54 Hoàng Văn Thái </li>
                            <li>Phone: 0397898964</li>
                            <li>Email: caonhatnhon08@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Cao Nhat Nhon</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->
    

    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
   <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


  <script>
        const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      toggle = body.querySelector(".toggle"),
      searchBtn = body.querySelector(".search-box"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
    
})

searchBtn.addEventListener("click" , () =>{
    sidebar.classList.remove("close");
})

modeSwitch.addEventListener("click" , () =>{
    body.classList.toggle("dark");
    
    if(body.classList.contains("dark")){
        modeText.innerText = "Light mode";
    }else{
        modeText.innerText = "Dark mode";
        
    }
    var swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    }); 
});
    </script>
</body>
</html>