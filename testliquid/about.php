<?php
session_start();
require_once("dbcontroller.php");
$db_handle = new DBController();
require_once("carthandler.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>About Us</title>

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/icon.png" type="image/x-icon">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <!--login CSS-->
    <link rel="stylesheet" type="text/css" href="css/floatcss.css">

</head>

<body>

    <!-- Start Main Top -->
    <header class="main-header">
        <!-- Start Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
            <div class="container">
                <!-- Start Header Navigation -->
                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                    <a class="navbar-brand" href="index.php"><img src="images/logo.png" class="logo" alt=""></a>
                </div>
                <!-- End Header Navigation -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                        <li class="nav-item active"><a class="nav-link" href="about.php">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="gallery.php">Gallery</a></li>
                        <li class="dropdown">
                            <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                            <ul class="dropdown-menu">
                                <li><a href="arrack.php">Arrack</a></li>
                                <li><a href="wine.php">Wine</a></li>
                                <li><a href="brandy.php">Brandy</a></li>
                                <li><a href="whisky.php">Whisky</a></li>
                                <li><a href="vodka.php">Vodka</a></li>
                                <li><a href="beer.php">Beer</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="contact-us.php">Contact Us</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                <div class="attr-nav">
                    <ul>
                        <li class="side-menu"><a href="#">
						<i class="fa fa-shopping-bag"></i>
                            <span class="badge"></span>
							<p>My Cart
                                (<?php
                                    if(isset($_SESSION["cart_item"])){
                                        $total_quantity = 0;
                                        foreach ($_SESSION["cart_item"] as $item){
                                            $total_quantity += $item["quantity"];
                                    }
                                    echo $total_quantity; 
                                }else{
                                    echo "0";
                                }?>) 
                            </p>
					    </a>
                    </li>
                    <li>
                        <a id="signin" class="btn btn-default hvr-hover btn-cart">Sign In</a>
                    </li>
                    </ul>
                </div>
                <div class="submit-button text-center">
                    <?php
					if (isset($_SESSION['userid'])){
						echo ' <form action="dbf/logout.dbf.php" method="POST">
                    <button class="btn hvr-hover" id="submit" type="submit">Log Out</button>
					</form>';
					}
					?>
                    
                    <div id="msgSubmit" class="h3 text-center hidden"></div>
                    <div class="clearfix"></div>
                </div>
                <!-- End Atribute Navigation -->
            </div>
            <!-- Start Side Menu -->
            <div class="side">
                <a href="#" class="close-side"><i class="fa fa-times"></i></a>
                <a href="arrack.php?action=empty" class="btn btn-default hvr-hover btn-cart">Empty Cart</a>
                <?php
                    if(isset($_SESSION["cart_item"])){
                        $total_quantity = 0;
                        $total_price = 0;
                ?>
                <li class="cart-box">
                    <ul class="cart-list">
                    <?php		
                    foreach ($_SESSION["cart_item"] as $item){
                        $item_price = $item["quantity"]*$item["price"];
                    ?>
                        <li>
                            <a href="#" class="photo"><img src="<?php echo $item["image"]; ?>" class="cart-thumb" alt="" /></a>
                            <h6><a href="#"><?php echo $item["name"]; ?></a></h6>
                            <p><?php echo $item["quantity"]; ?>x - <span class="price"><?php echo "Rs. ". number_format($item_price,2); ?></span></p>
                            <p style="text-align:center;"><a href="about.php?action=remove&code=<?php echo $item["code"]; ?>"><img src="images/icon-delete.png" alt="Remove Item" style="width:25px;height:25px;">Remove Item</a></p>
                            <?php
                                $total_quantity += $item["quantity"];
                                $total_price += ($item["price"]*$item["quantity"]);
                            }
		                    ?>
                        </li>
                        <p>Quantity: <?php echo $total_quantity; ?> - <span class="price">Total Price: <?php echo "Rs. ".number_format($total_price, 2); ?></span></p>
                        <?php
                                } else {
                                ?>
                                <div class="no-records">Your Cart is Empty!<br>Start Purchasing Now!!</div>
                                <?php 
                                }
                        ?>
                    </ul>
                </li>
                <a href="checkout.php" class="btn btn-default hvr-hover btn-cart">Checkout</a>
                </div>
            </div>
            <!-- End Side Menu -->
        </nav>
        <!-- End Navigation -->
    </header>
    <!-- End Main Top -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>ABOUT US</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item active">ABOUT US</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start About Page  -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="images/about-img.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2 class="noo-sh-title-top">We are <span>Mr. Liquid</span></h2>
                    <p>Taking your stress and worries away since _enter a year_ we at Mr. Liquid will serve you your favourite wine and liquor. Whether you need a local bottle of wine, a popular bottle of liquor or something from another country, you’ll never leave empty-handed or dissatisfied. Utilising the latest state of the art facilities, our breweries and vineyards ensure that you can get a taste of our own productions as well.</p>
                    <p>Visit us today and get a taste of luxury for a price that is not hurtful at all!
                    	Stop searching far and wide for your next bottle of
                    	Booze
                        Brandy
                        Whisky 
                        Arrack 
                        Wine 
                        Vodka.<br>

                       Dalmore or Ansac, Red or White, Scotch or Bourbon, Batavia or Ceylon, you want it - we got it.</p>
                </div>
            </div>
            <div class="row my-5">
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>Best Brands</h3>
                        <p>Best quality liquer right to your doorstep. </p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>Best Prices</h3>
                        <p>Best prices in the island.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>More than 300+ products to choose from</h3>
                        <p>Witness the massive stock we have in our inventory, giving you a wide variety to choose from. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End About Page -->

    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Business Time</h3>
                            <ul class="list-time">
                                <li>Monday - Friday: 08.00am to 05.00pm</li> <li>Saturday: 10.00am to 08.00pm</li> <li>Sunday: <span>Closed</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address: Dutch Hospital - Shopping Precinct,<br>Hospital Street,<br>Colombo. </p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+94 778855094">+94 778855094</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:infoMrLiquid@gmail.com">infoMrLiquid@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>About Mr. Liquid</h4>
                            <p>Mr. Liquid is an online liquer store based on Sri Lanka.</p> 
                            <p>We got a wide variety of a liquer stock including even the most rare brands of liquer.</p>                           
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2019 <a href="#">Mr. Liquid </a> Design By : Group 14 </p>
    </div>
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/custom.js"></script>
    <script language="javascript" type="text/javascript" src="js/floatjs.js"></script>

    <!--Start Pop up menu-->
    <div class="float-bg">
        <div class="float-content">
             <div class="ex" onclick="exit()" id="ex">+</div>
            <img class="img" src="images/icon-log.png">
            <form method="POST" action="dbf/login.dbf.php">
                <table border="0">
                    <tr>
                        <td>
                            <input class="textboxes" type="text" name="ud" placeholder="Enter Your Username" required="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input class="textboxes" type="password" name="password" placeholder="Enter Your Password" required="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="btnlog" type="submit" name="loginbtn">Login</button>
                        </td>
                        <td>
                            <a href="signup.php" class="btn btn-default hvr-hover btn-cart">Sign up</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <!--End Pop up menu-->
</body>

</html>