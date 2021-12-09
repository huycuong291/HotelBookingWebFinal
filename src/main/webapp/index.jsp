<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/main.css">
    <script src="https://kit.fontawesome.com/e487c6bc79.js" crossorigin="anonymous"></script>
    <title>Hotel Booking</title>
</head>
<body>
    <div id="container">
        <%@ include file="includes/header.jsp" %>
        <div id="intro">
            <div class="cover">
                <img src="img/homepage-background.jpg" alt="">
                <div class="message">
                    <h1>Welcome Home</h1>
                    <p>Rent unique places to stay from local hosts in 20+ country</p>
                </div>
            </div>
        </div>
        <div id="content">
            <p class="title">Inspiration for your next trip</p>
            <div id="places">
                <div class="place-item">
                    <a href="destination?id=${desList[0].desId}">
                        <div class="place-img"><img src="https://a0.muscache.com/im/pictures/f73eff6c-cffd-4462-a2bf-9417f5d2fbe9.jpg?im_w=320" alt=""></div>
                        <div class="place-name">${desList[0].desName}</div>
                    </a>
                </div>
                <div class="place-item">
                    <a href="destination?id=${desList[1].desId}">
                        <div class="place-img"><img src="https://a0.muscache.com/im/pictures/3a7b8005-28b8-48b8-8efa-0a6a00f7d5d8.jpg?im_w=320" alt=""></div>
                        <div class="place-name">${desList[1].desName}</div>
                    </a>
                </div>
                <div class="place-item">
                    <a href="destination?id=${desList[2].desId}">
                        <div class="place-img"><img src="https://a0.muscache.com/im/pictures/aff9e173-b551-44e4-80f3-bd9b9d632f8b.jpg?im_w=320" alt=""></div>
                        <div class="place-name">${desList[2].desName}</div>
                    </a>
                </div>
                <div class="place-item">
                    <a href="destination?id=${desList[3].desId}">
                        <div class="place-img"><img src="https://a0.muscache.com/im/pictures/2f5a15c7-2170-420a-9c48-9ac88a80a7fa.jpg?im_w=320" alt=""></div>
                        <div class="place-name">${desList[3].desName}</div>
                    </a>
                </div>
            </div>
        </div>
        <div id="slider">
            <img src="img/slider.jpg" alt="">
            <div class="message">Your trip Your place</div>
        </div>
        <%@ include file="includes/footer.jsp" %>
    </div>
	
    <script src="javascript/main.js"></script>
</body>
</html>