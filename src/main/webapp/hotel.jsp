<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main-room.css">
    <script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
    <title>${viewModel.hotel.hotelName}</title>
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
	  <h1 id="H1_7">${viewModel.hotel.hotelName}</h1>
      <div id="address">
          <p>${viewModel.hotel.hotelLocation}</p> 
          <form action="wishlist" method="get">
			  <input type="hidden" name="hotelId" value="${viewModel.hotel.hotelId}">
			  <input type="hidden" name="action" value="add">
			  <i class="fas fa-heart"></i>&nbsp;<input type="submit" id="save" value="Save">
          </form>
          <%-- <c:choose>
          	<c:when test="${sessionScope.wishlistCheck.contains(viewModel.hotel) == true}">
          		<p><i class="fas fa-heart is-wishlist"></i>&nbsp;Save</p>
          	</c:when>
          	<c:otherwise>
          		<form action="wishlist?action=add" method="get">
          			<input type="hidden" name="hotelId" value="${viewModel.hotel.hotelId}">
          			<i class="fas fa-heart"></i>&nbsp;<input type="submit" id="save" value="Save">
          		</form>
          	</c:otherwise>
          </c:choose> --%>
      </div>
      
      <!-- picture of house  -->
	<div style="height:420px;">
	  <div class="image-grid">
	  <img id="pic1" class="image-grid-col-2 image-grid-row-2" src="${viewModel.hotelImages.get(0)}" alt="Hotel Image">
	  <img id="pic2" src="${viewModel.hotelImages.get(1)}" alt="Hotel Image">
	  <img id="pic3" src="${viewModel.hotelImages.get(2)}" alt="Hotel Image">
	  <img id="pic4" src="${viewModel.hotelImages.get(3)}" alt="Hotel Image">
	  <img id="pic5" src="${viewModel.hotelImages.get(4)}" alt="Hotel Image">
	  </div>
	</div>

<div class="row">
    <div class="column left">
     
    <div id="main-Description">
	    <div>
	      <h2>${viewModel.hotel.hotelDescription}</h2>
	           
	      <ul id="subHouse" style="margin-bottom: 0px;">
	        <li>${viewModel.room.maxGuest} guests</li>
	        <li><span class="_1lmky0y" aria-hidden="true">- </span>${viewModel.room.numOfBedroom} bedroom</li>
	        <li><span class="_1lmky0y" aria-hidden="true">- </span>${viewModel.room.numOfBed} bed</li>
	      </ul>
	    </div>
        <div class="host-avatar">
        	<i class="fas fa-user-circle"></i>
        </div>  
    </div>
	<div class="horizontal-line"></div>
	<c:forEach var="roomOffer" items="${viewModel.roomOffers}">
		<div class="description">
			<c:choose>
				<c:when test="${roomOffer.equals(\"Entire Home\")}">
	   				<i class="fas fa-home"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Enhanced Clean\")}">
	   				<i class="fas fa-hand-sparkles"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Fast Wifi\")}">
	   				<i class="fas fa-wifi"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Great Location\")}">
	   				<i class="fas fa-map-marker-alt"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Great Communication\")}">
	   				<i class="fas fa-comment-alt"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Self Check-in\")}">
	   				<i class="fas fa-money-check"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Great Check-in Experience\")}">
	   				<i class="fas fa-key"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Pool\")}">
	   				<i class="fas fa-swimming-pool"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Experienced Host\")}">
	   				<i class="fas fa-star"></i>
				</c:when>
				<c:when test="${roomOffer.equals(\"Highly Rated Host\")}">
	   				<i class="fas fa-heart"></i>
				</c:when>
				<c:otherwise>
					<i class="fas fa-bookmark"></i>
				</c:otherwise>				
			</c:choose>
    		<h3>${roomOffer}</h3>
	   	</div>
	</c:forEach>
     
    <div class="horizontal-line"></div>
    
    <div class="room-des">
		<p>${viewModel.room.roomDescription}</p>
    </div>
  
    <div class="horizontal-line"></div>
    
    <div id="hotel-offers">
	    <h5>What this place offers</h5>
	    <div class= "grid">
	    	<c:forEach var="hotelOffer" items="${viewModel.hotelOffers}">
	    		<div class="offer">
		      		<c:choose>
						<c:when test="${hotelOffer.equals(\"Kitchen\")}">
			   				<i class="fas fa-utensils"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Wifi\")}">
			   				<i class="fas fa-wifi"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Pool\")}">
			   				<i class="fas fa-swimmer"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"TV\")}">
			   				<i class="fas fa-tv"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Elevator\")}">
			   				<i class="fas fa-sort"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Air conditioning\")}">
			   				<i class="far fa-snowflake"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Hair dryer\")}">
			   				<i class="fas fa-wind"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Refrigerator\")}">
			   				<i class="fas fa-mobile"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Gym\")}">
			   				<i class="fas fa-dumbbell"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Smoking allowed\")}">
			   				<i class="fas fa-smoking"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Hot water\")}">
			   				<i class="fas fa-tint"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Shampoo\")}">
			   				<i class="fas fa-pump-soap"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Smoke alarm\")}">
			   				<i class="far fa-life-ring"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"First aid kit\")}">
			   				<i class="fas fa-first-aid"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Dedicated workspace\")}">
			   				<i class="fas fa-pencil-ruler"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Long term stays allowed\")}">
			   				<i class="fas fa-calendar-week"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Security cameras on property\")}">
			   				<i class="fas fa-video"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Private entrance\")}">
			   				<i class="fas fa-door-closed"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Heating\")}">
			   				<i class="fas fa-thermometer-three-quarters"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Washer\")}">
			   				<i class="fab fa-flickr"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Free parking on premises\")}">
			   				<i class="fas fa-car-alt"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Fire extinguisher\")}">
			   				<i class="fas fa-fire-extinguisher"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Microwave\")}">
			   				<i class="fas fa-list-alt"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Body soap\")}">
			   				<i class="fas fa-soap"></i>
						</c:when>
						<c:when test="${hotelOffer.equals(\"Clothing storage\")}">
			   				<i class="fas fa-columns"></i>
						</c:when>
						<c:otherwise>
							<i class="fas fa-circle-notch"></i>
						</c:otherwise>				
					</c:choose>
		      		<p class="text-offer">${hotelOffer}</p>
		    	</div>	
	    	</c:forEach>
	    </div>
    </div> 
</div>
  

    <div class="column right" style=" margin-left: 100px; margin-top: 50px;" id="box-column">
      <div id="box" class="arc">
      <form id="reserveForm" action="booking" method="POST"> 
      	<input type="hidden" name="action" value="book">
      	<input type="hidden" name="hotelId" value="${hotelId}">
      	<div class="room-price">
      		<input type="hidden" id="hotel-price" value="${viewModel.room.pricePerNight}" disabled/>
      		<p>${viewModel.room.pricePerNight}$/Night</p>
      	</div>
     
        <div class="row" id="box-row">             
	        <div class="column left" id="box-left">
		        <div class="check" id="check-in">
		        	<label for="start">CHECK-IN:</label>
		        	<input onchange="inputedDate()" type="date" class="check-date"id="start-date" name="tripStart" min="2021-01-01" max="2022-12-31">
		        </div>
	        </div>
	        <div class="column right" id="box-right">
	        	<div class="check" id="check-out">
	        		<label for="start">CHECK-OUT:</label>
	         		<input onclick="alert_date()" onchange="updateGuest()" type="date"  class="check-date" id="end-date" name="tripEnd" min="2021-01-01" max="2022-12-31">
	        	</div>
	    	</div>
		</div>
          <div id="box-guest"  onclick="displayGuest()" >  
            <label for="start">GUEST - MAXIMUM:
            <input type="number" style="width: 20px;font-size: 12px;outline: none;font-weight: 600;background: white;border: none;margin: 2px;" readonly="true" name="countGuest" id = "show-guest" value="${viewModel.room.maxGuest}"/>  
            </label>
           <input  style="outline:none; background: white;border: none;margin: 2px;" readonly="true" name="guestDetail" id="guestDetail" value="0 Adults - 0 Children"></input>
  
            
          </div>
    
          <div class="sub-menu-reserve">
           <p id="exceedGuest"></p> 
            <ul>
              <li class="number"><p>Adults</p>

                <div class="form">
                  <div class="value-button" id="decrease0" onclick="decreaseValue()" value="Decrease Value">-</div>
                  <input type="number" id="number" value="0"  />
                  <div class="value-button" id="increase0" onclick="increaseValue()" value="Increase Value">+</div>
                </div>

              </li>
              <li class="number"><p>Children</p>

                <div class="form">
                  <div class="value-button" id="decrease2" onclick="decreaseValue2()" value="Decrease Value">-</div>
                  <input type="number" id="number2" value="0" />
                  <div class="value-button" id="increase2" onclick="increaseValue2()" value="Increase Value">+</div>
                </div>

              </li>
            </ul>
            <p class="mess">${viewModel.room.maxGuest} guests maximum. Infants do not count toward the number of guests.</p> 
          </div>
          <div class="form-reserve">
     	 
            <button type="submit"  class="btn-reserve" id="btn-reserve-booking" onclick="alert_pick()">Reserve</button>
          <div style=" display: flow-root;">
           <input type= "hidden" name="detailPrice" id = "detail-price-caculated" style="margin-top: 25px;display:inline;float:left;background: white;border: none;outline: none;" readonly="true"></input>
           <input type= "hidden" name="totalPrice" id = "total-price-caculated" style="margin-top: 25px;display:inline;float:right;background: white;border: none; text-align: end;outline: none;" readonly="true"></input>
          </div>
           <div	style="display: flow-root;">
          		<input type= "hidden" name="detailFee" id = "detail-fee-caculated" style="margin-top: 4px;display:inline;float:left;background: white;border: none;outline: none;" readonly="true"></input>
          		<input type= "hidden" name="totalFee" id = "total-fee-caculated" style="margin-top: 4px;display:inline;float:right;background: white;border: none; text-align: end;outline: none;" readonly="true"></input>
          </div>
          
			<div id="hrCalculate" style="display: none;" class="horizontal-line"></div>

            <div style="display: flow-root; margin-top: 5px;">
	           <input  type= "hidden" name="detailTotal" id = "detail-total-caculated" style="margin-top: 4px;display:inline;float:left;background: white;border: none;font-weight: bold;outline: none;" readonly="true"></input>
	           <input  type= "hidden" name="totalTotal" id = "total-total-caculated"   style="margin-top: 4px;display:inline;float:right;background: white;border: none; font-weight: bold;text-align: end;outline: none;" readonly="true"></input>
	           
	       </div>
           </div>
          	
          </form>
          
        </div>
    </div>
</div>

<div class="horizontal-line"></div>

<div id="hotel-map">
  <h3>Where you will be</h3>
  <p>${viewModel.hotel.hotelLocation}</p>
  <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD84oLBgpIYsM2-r97-Qh-ItfbRnG9kCZ0&q='+${viewModel.hotel.hotelLocation}'+" width="100%"  height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>


</div>

	<%@ include file="includes/footer.jsp" %>
	<script src="javascript/script.js"></script>
	<script src="javascript/main.js"></script>
</body>
</html>