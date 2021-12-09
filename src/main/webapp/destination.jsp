<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/destination.css">
    <script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
    <title>${destination.desName}</title>
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
	<div id="container">
		<div class="title">
			<h1>Place to live at ${destination.desName}</h1>
		</div>
		<!-- <div id="option_list">
			<ul>
				<li><a href="#">Services</a></li>
				<li><a href="#">Type</a></li>
				<li><a href="#">Price</a></li>
				<li><a href="#">Order now</a></li>
				<li><a href="#">Another Option</a></li>
			</ul>
		</div> -->
		<div id="sub-container">
			<div id="content" class="col-left">	
				<c:forEach var="item" items="${viewModels}">
					<div class="hotel">
						<div class="hotel-img">
							<a href="hotel?id=${item.hotel.hotelId}">
								<img src="${item.hotelImage}" alt=""/>
								<div class="clear"></div>
							</a>
						</div>
						<div class="hotel-info">
							<p class="hotel-des">${item.hotel.hotelDescription}</p>
							<p class="hotel-name">${item.hotel.hotelName}</p>
							<div class="small-line"></div>
							<p class="room-info">${item.room.maxGuest} guests - ${item.room.numOfBedroom} bedroom - ${item.room.numOfBed} bed</p>
							<div class="hotel-offers">
								<c:forEach var="offer" items="${item.hotelOffers}">
									<c:choose>
										<c:when test="${offer.equals(item.hotelOffers.get(item.hotelOffers.size() - 1))}">
											<p class="hotel-offer">${offer}</p>
										</c:when>
										<c:otherwise>
											<p class="hotel-offer">${offer} - </p>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>
							<div class="room-price">
								<p>$${item.room.pricePerNight}</p>&nbsp;/ Night
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div id="map" class="col-right">
				<iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD84oLBgpIYsM2-r97-Qh-ItfbRnG9kCZ0&q='+${destination.desLocation}'+" width="650" height="235%;" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<%@ include file="includes/footer.jsp" %>
	<script src="javascript/main.js"></script>
</body>
</html>
	