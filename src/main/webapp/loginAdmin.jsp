<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="accoutn_main">
        <video muted loop autoplay class="video">
            <source src="image/cho.mp4" type="video/mp4">
        </video>

        <div class="form_area">
            <div class="main_con">
                <div class="headline">
                    <h1>Apple Shop</h1>
                    <span>welcome to Apple</span>
                </div>

                <div class="form_con">
                    <div class="log_form">
                        <h2>Login Admin!!</h2>
                        <form action="LoginAdmin" method="post">
                            <div class="input-box">
                                <input type="email" name="admin-email" required>
                                <label>Email Admin</label>
                            </div>
                            <div class="input-box">
                                <input type="password" name="admin-password" required>
                                <label>Password</label>
                            </div>
                            <div class="button">
                                <button type="submit">LOGIN</button>
                            </div>
                             
                        </form>
                    </div>

                  
                    <div class="text-center">
                                           
                        <a href="login.jsp">Login User</a>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $("#action").click(function(){
            $(".log_form, .reg_form").toggle(1200);
        });
    </script>
</body>
</html>