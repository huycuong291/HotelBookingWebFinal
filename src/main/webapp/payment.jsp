<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main-room.css">
    <script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
    <title>Hotel Booking - Payment</title>
</head>

<style>
	.hide {
	    display: none;
	}
	
	.horizontal-line {
	    height: 1px;
	    width: 100%;
	    border: none;
	    background-color: #242424;
	}

	/* ---------header--------- */
	#header {
	    position: fixed;
	    top: 0;
	    left: 0;
	    right: 0;
	    display: flex;
	    height: 70px;
	    box-shadow: 0px 0px 6px 3px rgb(0 0 0 / 50%);
	    align-items: center;
	    justify-content: space-between;
	    z-index: 10;
	    background-color: #fff;
	}
	
	#logo {
	    margin-left: 15px;
	}
	
	#logo a i{
	    font-size: 40px;
	    color: #ff385c;
	}
	
	#logo > a:hover {
	    cursor: pointer;
	}
		
	#search-form {
	    border: 1px solid #ccc;
	    padding: 7px 10px;
	    border-radius: 22px;
	}
	
	#search-form input[type="text"] {
	    border: none;
	    outline: none;
	    padding-right: 30px;
	    padding-left: 10px;
	}
	
	#search-form input[type="submit"] {
	    padding: 2px 8px;
	    background-color: #ff385c;
	    color: #fff;
	    border: none;
	    outline: none;
	    border-radius: 26px;
	}
	
	#search-form input[type="submit"]:hover {
		background-color: #fb667b;
		cursor: pointer;
	}
	
	#menu {
	    margin-right: 35px;
	}
	
	#menu .icon {
	    display: flex;
	    border: 1px solid #ccc;
	    border-radius: 27px;
	    align-items: center;
	    padding: 5px 6px 5px 14px;
	}
	
	#menu .icon:hover {
	    cursor: pointer;
	    box-shadow: 0px 0px 5px 2px rgb(135 132 132 / 50%);
	}
	
	.fa-user-circle {
	    font-size: 30px;
	    margin-left: 10px;
	}
	
	#menu .sub-menu {
	    position: absolute;
	    background: #fff;
	    padding: 10px 0;
	    box-shadow: 0px 0px 9px 2px rgb(123 120 120 / 50%);
	    border-radius: 6px;
	    width: 170px;
	    top: 62px;
	    right: 43px;
	}
	
	#menu .sub-menu .sub-menu-item {
	    list-style-type: none;
	    padding: 10px 22px;
	}
	
	#menu .sub-menu .sub-menu-item:hover {
	    cursor: pointer;
	    background-color: #eaeaea;
	}
	
	#menu .sub-menu .sub-menu-item a {
	    text-decoration: none;
	    font-weight: 500;
	}

	/* ---------footer--------- */
	#footer {
	    background-color: #ddd;
	    padding: 40px 100px;
	    font-weight: 300;
	}
	
	#sub-footer {
	    display: flex;
	    margin-bottom: 15px;
	}
	
	#footer .footer-title {
	    margin-bottom: 20px;
	    font-weight: 500;
	    font-size: 20px;
	}
	
	.contact .contact-list {
	    list-style-type: none;
	}
	
	.contact .contact-list .contact-item {
	    margin-bottom: 13px;
	    display: flex;
	    align-items: center;
	}
	
	.contact .contact-list .contact-item i {
	    font-size: 17px;
	    margin-right: 15px;
	    color: #635f63;
	}
	
	#footer .general {
	    margin-left: 190px;
	}
	
	#footer .general .general-list {
	    list-style-type: none;
	}
	
	.general .general-list .general-item {
	    margin-bottom: 13px;
	}
	
	.general .general-list .general-item:hover {
	    text-decoration: underline;
	}
	
	.general-list .general-item a {
	    text-decoration: none;
	}
	
	#footer .follow {
	    margin-left: 230px;
	}
	
	#footer .follow ul {
	    list-style-type: none;
	}
	
	.follow ul li {
	    display: inline-block;
	    margin-right: 15px;
	}
	
	.follow ul li:hover a i {
	    color: #525252;
	    cursor: pointer;
	}
	
	.follow ul li a i {
	    font-size: 60px;
	    color: #635f63;
	}
	
	#footer .copy-right {
	    margin-top: 10px;
	}		
</style>

<body>
<%@ include file="includes/header.jsp" %>
<div id="house-body"> 
<div class="row">
<!--main-->
    <div class="column left">
      <p id="back-hotel" onclick="window.history.go(-1); return false;"><i class="fas fa-chevron-left"></i>Back</p>
      <h2 style="font-size: 25px;"  >Confirm and pay </h2>
      <div class="description">
        <h3>Dates</h3>
        <div style="display: flex;">
        	<p>${sessionScope.dateIn}</p> <i class="fas fa-caret-right"></i> <p>${sessionScope.dateOut}</p>
        </div>
      </div>
      <div class="description">
        <h3>Guest</h3>
        <p>${sessionScope.countGuest}</p>
      </div>
      <div class="horizontal-line"></div>

     <div id="cancel-policy">
	     <h1>Cancellation policy</h1>  
	      <p>Free cancellation before 2:00 PM in ${sessionScope.dateIn}. After that, cancel before 2:00 PM in ${sessionScope.dateIn} and get a full refund, minus the first night and service fee.
	      </p>
			<p>Our Extenuating Circumstances policy does not cover travel disruptions caused by COVID-19.</p>

    </div>
    <div class="horizontal-line"></div>
    <div id="pay-with">
     <h1>Pay with</h1>  
      <!-- Include the PayPal JavaScript SDK; replace "test" with your own sandbox Business account app client ID -->
      <script src="https://www.paypal.com/sdk/js?client-id=AZlK4wtJ9VL8OXdYkHYkS791akT8zrCDaSrjFoGhO7MQoiVIaH0ajhyMtz_ozcykuqVfZmC99Kf5zd8a"></script>
  
      <!-- Set up a container element for the button -->
      <div id="paypal-button-container"></div>
		<form id="myForm" action="paid" method ="post">
	  		<input type="hidden" name="hotelId" value="${hotelId}">
		    <script>
		      paypal.Buttons({
		        // Sets up the transaction when a payment button is clicked
		        createOrder: function(data, actions) {
		          return actions.order.create({
		            purchase_units: [{
		              amount: {
		                value: ${sessionScope.totalTotal} // Can reference variables or functions. Example: `value: document.getElementById('...').value`
		              }
		            }]
		          });
		        },
		
		        // Finalize the transaction after payer approval
		        onApprove: function(data, actions) {
		          return actions.order.capture().then(function(orderData) {
		            // Successful capture! For dev/demo purposes:
		                document.getElementById("myForm").submit();
		          });
		        }
		      }).render('#paypal-button-container');
		
		    </script>
		</form>
    </div>
   
         
</div>
  

    <div class="column right" style=" margin-left: 100px; margin-top: 50px;" id="box-column">
      <div id="box" class="arc">
       
      <h3 style="margin-top: 0px;">Price details</h3>
           <div style="display: flow-root;">
           <p id = "detail-price" style="margin: 2px;display:inline;float:left">${sessionScope.detailPrice}</p>
           <p id = "total-price" style="margin: 2px;display:inline;float:right">${sessionScope.totalPrice}</p>
          </div>
           <div	style="display: flow-root;">
           <p id = "detail-fee" style="margin: 2px;display:inline;float:left">${sessionScope.detailFee}</p>
           <p id = "total-fee" style="margin: 2px;display:inline;float:right">${sessionScope.totalFee}</p>
          </div>
           <hr style="margin-top: 15px; margin-bottom: 20px; height: 2px; background-color: #000; border: none;">
          <div style="margin-bottom: 45px;">
           <p id = "detail-total" style="margin: 2px;display:inline;float:left;font-weight: bold;">${sessionScope.detailTotal} (USD)</p>
           <p id = "total-total" style="margin: 2px;display:inline;float:right;font-weight: bold;">${sessionScope.totalTotal}$</p>
          </div>
        </div>
    </div>
</div>

 </div>

	<%@ include file="includes/footer.jsp" %>
	<script src="javascript/main.js"></script>
    <script src="./javascript/userinfo.js"></script>
</body>
</html>