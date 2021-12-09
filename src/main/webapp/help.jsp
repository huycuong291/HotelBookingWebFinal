<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Hotel Booking - Help</title>
<link rel="stylesheet" type="text/css" href="css/help.css" />
<script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
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
<div id="help">
	<h1 style="text-align: center; font-weight: 650; font-size: 45px;">WELCOME TO HELP CENTER</h1>
	
	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">How do I find available hotels for the period I want to stay?</p>
			<p class="faq-ans">In the search menu on the left containing the check-in and check-out data, please select the dates of your stay and tick &quot;Show available hotels&quot;.</p>		
	</div>
	
	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">How do I search for hotels by price?</p>
			<p class="faq-ans">In the selection box at the top left of the search page you can sort the listing of hotels by price (when searching for available hotels on a specific date), popularity, class or name.</p>		
	</div>
	
	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">How do I search for hotels with specific facilities such as, for example, a pool?</p>
			<p class="faq-ans">In the search menu on the left simply click on the link &quot;Show another options&quot;. Now you can refine your search by selecting different facilities such as a "pool."</p>		
	</div>

	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">Can I generally request an extra bed for a third person in a double room and at what costs?</p>
			<p class="faq-ans">It will depend on each hotel&apos;s policy and availability. Once you have retrieved the availability for a specific hotel for the requested dates, by clicking on the room name, you will access the room description. If the possibility and the costs of an extra bed in the room are not specified in the room description</p>		
	</div>

	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">Is breakfast included in the price?</p>
			<p class="faq-ans">Once you have retrieved the availability for a specific hotel for the requested dates, by clicking on the room name, you will find information about breakfast, taxes and room facilities.</p>		
	</div>

	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">Does the hotel need a deposit or a payment in advance?</p>
			<p class="faq-ans">You will pay for your stay at the hotel. If the hotel requires a deposit, it will be clearly mentioned on the overview page of the hotel. However, note that some hotels perform a pre&minus;authorization check on your credit card as an extra guarantee. A pre&minus;authorization is a validity check to reserve a certain amount that would guarantee the room. This amount may correspond to the price of one night or to the total costs of your reservation. Once the credit card has been validated, the reserved amount will be released.</p>		
	</div>
	
	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">Is it safe to fill in my credit card number? How secure is the your website?</p>
			<p class="faq-ans">Your credit card information is sent to us through a secure server. We use the latest, most secure technology available, which encrypts all your personal and credit card details. The encryption method used is the industry standard "Secure Socket Layer" (SSL) technology. Our SSL certificate has been issued by Thawte.We also use a firewall which protects our servers and network against unauthorized access. In the unlikely event that your credit card were to be misused, we promise to reimburse you the first 50 Euros on the cost. The credit card is obliged to pay the remainder.</p>		
	</div>
	
	<div class="faq">
			<div class="horizontal-line"></div>
			<p class="faq-ask">What types of credit card can I use to guarantee the reservation?</p>
			<p class="faq-ans">MasterCard, Visa and American Express are accepted as a guarantee. However, it is possible that the hotel does not accept all of these for payment. Please check at the bottom of the overview page of the hotel the &quot;Hotel Policies&quot; section for &quot;Accepted credit cards&quot;.</p>		
	</div>
</div>
<%@ include file="includes/footer.jsp" %>
<script src="javascript/main.js"></script>
</body>
</html>
