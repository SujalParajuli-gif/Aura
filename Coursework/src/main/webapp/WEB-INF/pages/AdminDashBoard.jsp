<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aura Times Admin Dashboard</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/AdminDashBoard.css" />
    <style>
           .product-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px solid #e0e0e0;
        }

        /* Left side of header with title and breadcrumbs */
        .header-left {
            display: flex;
            align-items: center;
        }

        /* Page title styling */
        .header-title {
            font-size: 30px;
            font-weight: 600;
            margin-right: 30px;
        }

        .header-right {
            display: flex;
            gap: 10px;
        }

        .btn {
            padding: 8px 16px;
            border-radius: 4px;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            border: none;
        }

        .btn-discard {
            background-color: transparent;
            border: 1px solid #d1d1d1;
            color: #666;
        }

        .btn-add {
            background-color: #4a6cf7;
            color: white;
        }

        .form-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .form-section {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
        }

        .section-title {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            font-size: 14px;
            color: #666;
            margin-bottom: 8px;
        }

        .form-control {
            width: 100%;
            padding: 8px 12px;
            border: 1px solid #d1d1d1;
            border-radius: 4px;
            font-size: 14px;
        }

        
        
        .description-readonly {
            min-height: 100px;
            background-color: #f9f9f9;
            color: #666;
            overflow-y: auto;
            line-height: 1.5;
            padding: 12px;
            cursor: default;
        }

     
     
        .media-container {
            display: flex;
            justify-content: flex-start;
            margin-top: 15px;
        }

        .media-item {
            border: 1px solid #e0e0e0;
            border-radius: 4px;
            overflow: hidden;
            position: relative;
        }

        .media-item img {
            width: 150px;
            height: 150px;
            object-fit: contain;
        }

        .add-image-btn {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100px;
            background-color: #f5f5f5;
            border: 1px dashed #d1d1d1;
            border-radius: 4px;
            cursor: pointer;
        }

        .add-image-btn span {
            color: #666;
            font-size: 13px;
            margin-top: 5px;
        }
    </style>
</head>

<body>

       <!-- =============== Navigation ================ -->
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon">
                            <img src="${pageContext.request.contextPath}/assets/Logo/Finallogo.png" alt="logo" style="width: 30px;">
                        </span>
                        <span class="title" style="margin-bottom: 20px;">Aura Watch</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/user.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Profile</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/home.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/sales.png" alt="logo" style="width: 35px;"></div>
                        </span>
                        <span class="title">Stats</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/product.png" alt="logo" style="width: 35px;"></div>
                        </span>
                        <span class="title">Products</span>
                    </a>
                </li>

                


                <li style="margin-top: 30px;">
                    
                    <a href="logout">
                        <span class="icon">
                            <div class="nav-icon"><img src="${pageContext.request.contextPath}/assets/img/logout.png" alt="logo" style="width: 30px;"></div>
                        </span>
                        <span class="title">Log Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">

                    <img src="${pageContext.request.contextPath}/assets/img/menu.png" alt="" width="30px">
                </div>

      <!-- ======================= Login ma vako user ================== -->

                <div class="user">
                    <img src="${pageContext.request.contextPath}/assets/img/profile.png" alt="user">
                </div>
            </div>

            

            
<br>
<br>
                <!-- ================= Customer Review ================ -->
                <div class="recentCustomers">
                    <div class="cardHeader" style="margin-left: 25px;padding-top: 20px; padding-bottom: 10px;">
                        <h2>Reviews</h2>
                    </div>
                    <table>

                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 1.png" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px; text-align: justify;">Absolutely love the Omega!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 2.jpeg" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px; text-align: justify;">The Rolex GMT-Master <br> is stylish and solid!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 3.jpg" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px;">The Omega exceeded my expectations!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                        <tr>
                            <td>
                                <div class="imgBx-1"><img src="${pageContext.request.contextPath}/assets/img/reviewer 4.jpg" alt="review"></div>
                            </td>
                            <td>
                                
                                <h4>Luca</h4>⭐️⭐️⭐️⭐️
                                <div style="font-size: 14px; width:225px; height: 20px; text-align: justify;">Rolex Submariner <br> feels like a statement!
                                    
                                </div>
                            </td>
                            
                         
                            
                        </tr>
                    
                        
                       
                      
                      
                
                    </table>
                </div>




 <!-- ================= Best selling products================ -->
 <div class="bestselling">
    <div class="cardHeader">
        <h2>Best Selling</h2>
    </div>
    <table>

        <tr>
            <td>
                <div class="imgBx-2"><img src="${pageContext.request.contextPath}/assets/img/Omega.png" alt="watch" style="width: 80px; border-radius: 100px;"></div>
            </td>
            <td>
                <h4>1st👑</h4>
                <div style="font-size: 14px; width:225px; height: 90px; text-align: justify;"><b>Omega:</b><br> Leading the pack is our Omega, 
                    <br>a brand that embodies both <br>groundbreaking innovation. <br>
                    
                </div>
            </td>
            
         
            
        </tr>

        <tr>
            <td width="60px">
                <div class="imgBx-2"><img src="${pageContext.request.contextPath}/assets/img/GMT.png" alt="watch" style="width: 80px; border-radius: 100px;" ></div>
            </td>
            <td>
                <h4>2nd🥈  </h4>
                <div style="font-size: 14px; width: 208; height: 90px; text-align: justify;"><b>Rolex GMT-Master:</b><br> Renowned for its bold design, <br>GMT  combines precision with a <br> luxury craftsmanship.
                    
                </div>
            </td>
        </tr>

        <tr>
            <td width="60px">
                <div class="imgBx-2"><img src="${pageContext.request.contextPath}/assets/img/Rolexsub.png" alt="watch" style="width: 80px; border-radius: 100px;" ></div>
            </td>
            <td>
                <h4>3rd🥉</h4>
                <div style="font-size: 14px; width:300px; height: 90px;"><b>Rolex Submariner:</b><br> A symbol of timeless style,<br>It has been favorite among <br>  diving watch enthusiasts.
                </div>
            </td>
        </tr>

      
      

    </table>
</div>

            </div>
        </div>
 <!-- ================= Best selling products================ -->

 <!-- ================= Card Layout================ -->

    <div class="cardBox">
        <div class="card">
            <div>
                <div class="numbers">15,000</div>
                <div class="cardName">Daily Views</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/views.png"alt="" style="width: 55px; margin-left: 10px;">
            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">999</div>
                <div class="cardName" style="width: 90px;">Sales</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/cart.png" alt="" style="width: 55px; margin-left: 10px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">30,000</div>
                <div class="cardName">Reviews</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/reviews.png" alt="" style="width: 55px; margin-left: 50px;">            </div>
        </div>

        <div class="card">
            <div>
                <div class="numbers">$9,000</div>
                <div class="cardName">Revenue</div>
            </div>

            <div class="iconBx">
                <img src="${pageContext.request.contextPath}/assets/img/profit.png" alt="" style="width: 55px; margin-left: 50px;">            </div>

        </div>

    
</div>
 <!-- ================= Card Layout================ -->

 <!-- ================= Add Product section============ -->



    <!-- =========== Scripts =========  -->
    <script>
        // add hovered class to selected list item
        let list = document.querySelectorAll(".navigation li");

        function activeLink() {
            list.forEach((item) => {
                item.classList.remove("hovered");
            });
            this.classList.add("hovered");
        }

        list.forEach((item) => item.addEventListener("mouseover", activeLink));

        // Menu Toggle
        let toggle = document.querySelector(".toggle");
        let navigation = document.querySelector(".navigation");
        let main = document.querySelector(".main");

        toggle.onclick = function () {
            navigation.classList.toggle("active");
            main.classList.toggle("active");
        };
    </script>
    <!---stats photo-->
    <div class="statsimg" style=" left: 320px; position: relative; top: 80px;">
        <img src="${pageContext.request.contextPath}/assets/img/newstats.png" alt="stats">
    </div>
        <!---for product section-->
    <div class="product-section" style=" left: 320px; position: relative; top: 80px; background-color:  #EDEEF1; width: 100%; ">
        <div class="product-header">
            <div class="header-left">
                <h1 class="header-title">Product</h1>
            </div>
            <div class="header-right">
                <button class="btn btn-discard">Delete Product</button>
                <button class="btn btn-add">Add Product</button>
            </div>
        </div>

        <div class="form-container">
            <!-- General Information Section -->
            <div class="form-section general-info">
                <h2 class="section-title">General Information</h2>
                <div class="form-group">
                    <label class="form-label">Product Name</label>
                    <input type="text" class="form-control" value="Xiaomi Watch 2 Pro">
                </div>
                <div class="form-group">
                    <label class="form-label">Description</label>
                    <div class="form-control description-readonly">Xiaomi Watch 2 Pro supports 19 professional fitness modes such as for basketball, tennis, swimming, gym/HIIT, and jogging for users, 150 additional fitness modes. Accurately monitor and analyze important data, such as heart rate, average pace, and calories burned, for more efficient exercise. Waterproof 5 ATM! Suitable for swimming.</div>
                </div>
            </div>

            
            <!-- Product Media Section -->
            <div class="form-section product-media">
                <h2 class="section-title">Product Photo</h2>
                <div class="form-group">
                    <div class="media-container">
                        <div class="media-item">
                            
                            <img src="/api/placeholder/150/150" alt="Watch product image">
                        </div>
                    </div>
                    
                    <label class="form-label" style="margin-top: 10px;">Upload a New Photo</label>

                    <button class="add-image-btn" style="width: 50%; margin-top: 10px;">
                        <div>+</div>
                        <span>Add More Image</span>
                    </button>
                </div>
            </div>
        </div>
    </div>

   
</body>

</html>