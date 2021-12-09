<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Hotel Booking - About us</title>
<link rel="stylesheet" type="text/css" href="css/about-us.css" />
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
<div id="about-us">
	<section id="members">
                <p class="member-title">Our Members</p>
                <div class="member">
                    <img src="img/giang.png" alt="first member" class="member-img">
                    <p class="member-name">Dang Ngoc Truong Giang</p>
                    <p class="member-info">blah blah blah ...</p>
                    <div class="member-social-media">
                        <a target="_blank" href="https://www.facebook.com/profile.php?id=100007766716871"><i class="fab fa-facebook-f"></i></a>
                        <a target="_blank" href="https://www.instagram.com/sheephonor/"><i class="fab fa-instagram"></i></a>
                        <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="member">
                    <img src="img/cuong.png" alt="second member" class="member-img">
                    <p class="member-name">Khuc Nguyen Huy Cuong</p>
                    <p class="member-info">blah blah blah ...</p>
                    <div class="member-social-media">
                        <a target="_blank" href="https://www.facebook.com/huycuong291"><i class="fab fa-facebook-f"></i></a>
                        <a target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                        <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="member">
                    <img src="img/truong.png" alt="third member" class="member-img">
                    <p class="member-name">Nguyen Dan Truong</p>
                    <p class="member-info">blah blah blah ...</p>
                    <div class="member-social-media">
                        <a target="_blank" href="https://www.facebook.com/dantruong.cun"><i class="fab fa-facebook-f"></i></a>
                        <a target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                        <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="clear"></div>
            </section>
	
    <section id="about">
        <div style="max-width: 1300px; margin: 0 auto; padding-top: 5rem;">
            <div style="padding: 100px 70px;; padding-top: 0rem; text-align: justify;">
                <h1 style="text-align: center; font-weight: 500; font-size: 35px; margin-bottom: 25px;">ABOUT US</h1>
                <p style="font-size: 18px; font-weight: 400;letter-spacing: 2px;">Three in One Squad consists of Truong, Giang and Cuong , we specialize in making websites about renting or 
                buying certain products in real life topics for students studying Information Technology and Web Programming. As a student myself, we know how difficult it is for you to successfully understand this subject. 
                Since September 2021, we have been refining our skills in java web programming. We want to update existing resolved issues to make sure all the results we show are 
                up to date and definitely correct. We also want to build strong, ongoing and working relationships with our customers and want them to think we might be the best 
                and most suitable person for your job, that you will need. have to work again. Not only are we a friendly and approachable team, 
                we are also passionate about what we do. So, if you have a project and are interested in working with us, don't hesitate to contact us, 
                we'd love to hear from you.</p>
            </div>
    </section>
</div>
<%@ include file="includes/footer.jsp" %>
<script src="javascript/main.js"></script>
</body>
</html>