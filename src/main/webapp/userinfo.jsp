<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/userinfo.css">
    <script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
    <title>Document</title>
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
    <div id="super-container">
		<%@ include file="includes/header.jsp" %>
        <div id="user-infos">
            <h1 class="head-title">Personal info</h1>
            <form action="register" method="post">
            	<input type="hidden" name="action" value="edituser">
            	<div class="info-list">
	                <div class="info-item">
	                    <div class="first-div">
	                        <p class="title">Legal name</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.fullName}</p>
	                    </div>
	                    <div class="third-div hide">
	                        <input type="text" value="${sessionScope.user.fullName}" name="fullname">
	                    </div>
	                </div>
	                <div class="info-item">
	                    <div class="first-div">
	                        <p class="title">Gender</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.gender}</p>
	                    </div>
	                    <div class="third-div hide">
	                    	<select name="gender" id="" name="gender">
							    <option value="Male">Male</option>
							    <option value="Female">Female</option>
							    <option value="Other">Other</option>
							</select>
	                    </div>
	                </div>
	                <div class="info-item">
	                    <div class="first-div">
	                        <p class="title">Date of birth</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.dateOfBirth}</p>
	                    </div>
	                    <div class="third-div hide">
	                        <input type="date" value="${sessionScope.user.dateOfBirth}" name="dateOfBirth">
	                    </div>
	                </div>
	                <div class="info-item">
	                    <div class="first-div">
	                        <p class="title">Email address</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.email}</p>
	                    </div>
	                    <div class="third-div hide">
	                        <input type="text" value="${sessionScope.user.email}" name="email">
	                    </div>
	                </div>
	                <div class="info-item">
	                    <div class="first-div">
	                        <p class="title">Phone number</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.phone}</p>
	                    </div>
	                    <div class="third-div hide">
	                        <input type="text" value="${sessionScope.user.phone}" name="phone">
	                    </div>
	                </div>
	                <div class="info-item">
	                    <div class="first-div">
	                        <p class="title">Address</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.address}</p>
	                    </div>
	                    <div class="third-div hide">
	                        <input type="text" value="${sessionScope.user.address}" name="address">
	                    </div>
	                </div>
	                <div class="info-item" style="border: none;">
	                    <div class="first-div">
	                        <p class="title">Password</p>
	                        <button type="button" class="edit-btn">Edit</button>
	                    </div>
	                    <div class="second-div">
	                        <p class="value">${sessionScope.user.password}</p>
	                    </div>
	                    <div class="third-div hide">
	                        <input type="text" value="${sessionScope.user.password}" name="password">
	                    </div>
	                </div>
	            </div>
	            <input type="submit" value="Save" id="save-btn">
            </form>
        </div>
        <%@ include file="includes/footer.jsp" %>
    </div>
    
    <script src="javascript/main.js"></script>
    <script src="./javascript/userinfo.js"></script>
</body>
</html>