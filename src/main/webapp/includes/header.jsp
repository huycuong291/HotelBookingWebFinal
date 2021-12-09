<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="header">
	 <div id="logo">
	     <a href="index.jsp"><i class="fab fa-atlassian"></i></a>
	 </div>
	 <div id="search-form">
	     <form action="search" method="get">
	     	<input type="text" name="desName" placeholder="Where do you want to go?">
	     	<input type="submit" value="Search">
	     </form>
	 </div>
	 <div id="menu" onclick="display_submenu()">
	     <div class="icon">
	         <i class="fas fa-bars"></i><i class="fas fa-user-circle"></i>
	     </div>
	     <div id="sub-menu" class="sub-menu hide">
	         <ul>
	         	 <c:choose>
		          	<c:when test="${sessionScope.isLogin.equals(\"True\")}">
		          		<li class="sub-menu-item"><a href="account?action=signout">Sign out</a></li>
		          	</c:when>
		          	<c:otherwise>
		          		<li class="sub-menu-item"><a href="login.jsp">Sign in</a></li>
		          	</c:otherwise>
		         </c:choose>
	             
	             <li class="sub-menu-item"><a href="account?action=wishlist">Wishlists</a></li>
	             <li class="sub-menu-item"><a href="account?action=userinfo">Account</a></li>
	             <li class="sub-menu-item"><a href="help.jsp">Help</a></li>
	         </ul>
	     </div>
	 </div>
</div>