<%@page import="code.connection.DbCon"%>
<%@page import="code.model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
 <link rel="stylesheet" href="css/admintest.css">
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
   
	
	<section class="home">
        <!--div class="text">Web mua hàng online và đặt lịch khám phòng thú y Tâm PETS</div-->
        
        <div class="image-gallery">
            <header>admin management</header>
        </div>

        <div class="swiper mySwiper container">
            <div class="swiper-wrapper content">
      
              <div class="swiper-slide card">
                <div class="card-content">
                  <div class="image">
                   
                    <img class="card-img-top" src="images/nhon.jpg" alt="Card image cap">
                  </div>
      
                  <div class="media-icons">
                    <a href="https://www.facebook.com/profile.php?id=100005225086903"><i class="fab fa-facebook"></i></a>
                        
                    <i class="fab fa-twitter"> </i>
                    <i class="fab fa-github"></i>
                    <i class="fa fa-cloud"></i>
                    
                  </div>
      
                  <div class="name-profession">
                    <span class="name">Giám Đốc: Cao Nhật Nhơn</span>
                    <span class="profession">Chuyên phân phối sĩ lẻ trái cây</span>
                  </div>
      
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
      
                  <div class="button">
                    <button class="aboutMe">About Me</button>
                    <a href="https://www.google.com/maps/place/Bác+sĩ+thú+y+Tâm/@15.8654575,108.1024551,16z/data=!4m5!3m4!1s0x0:0x57d2f0ad1dc5f09a!8m2!3d15.8653869!4d108.1023852"><button class="hireMe">My Address</button></a>
                  </div>
                </div>
              </div>
                
              <div class="swiper-button-next"></div>
              <div class="swiper-button-prev"></div>
              <div class="swiper-pagination"></div>

             
              

    </section>
    
   
    

    <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


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