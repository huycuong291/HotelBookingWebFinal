document.getElementById("hotel-price").style.width = (document.getElementById("hotel-price").value.length ) + 'px';



	

//number of adults
//number of adults
function increaseValue() {
	var adults   =   parseInt(document.getElementById('number').value, 10);
	var children =   parseInt(document.getElementById('number2').value, 10);
	var a = adults+children;
	var maxGuest =  parseInt(document.getElementById('show-guest').value, 10);
	if(a< maxGuest){
		
	adults++;
	document.getElementById('number').value = adults;
	updateGuest();
	}
}

function decreaseValue() {

var value = parseInt(document.getElementById('number').value, 10);

value < 1 ? value = 1 : '';
value--;
document.getElementById('number').value = value;
updateGuest();
}

//number of children
function increaseValue2() {
	var adults   =   parseInt(document.getElementById('number').value, 10);
	var children =   parseInt(document.getElementById('number2').value, 10);
	var a = adults+children;
	
	var maxGuest =  parseInt(document.getElementById('show-guest').value, 10);
		if(a< maxGuest){
		children++;
		document.getElementById('number2').value = children;
		updateGuest();
}
}

function decreaseValue2() {
document.getElementById("increase2").style.pointerEvents = 'auto';
var value = parseInt(document.getElementById('number2').value, 10);

value < 1 ? value = 1 : '';
value--;
document.getElementById('number2').value = value;
updateGuest();
}



//display guest 
function displayGuest(){
    var subMenu=document.querySelector(".sub-menu-reserve");
   
    var isOpen= false;
    
    
    if(subMenu.style.display=='none'){
        isOpen=false;
    }
    else{
        isOpen=true;
    }
    if (isOpen==true){
        subMenu.style.display='none';
        isOpen=false;
    }
    else{
        subMenu.style.display='block';
        isOpen=true;
    }
}


function alert_date(){
	alert('Please select date you check-in first!');
}
function alert_pick(){
	var adults = parseInt(document.getElementById('number').value, 10);
	var children = parseInt(document.getElementById('number2').value, 10);
	
	var checkin = document.getElementById('start-date').value;
	var checkout = document.getElementById('end-date').value;
	
	if(checkin.localeCompare("") == 0){
		alert('Please enter date check-in!!');
		document.getElementById("reserveForm").setAttribute("action", "");
	}
	else if(checkout.localeCompare("") == 0){
		alert('Please enter date check-out!!');
		document.getElementById("reserveForm").setAttribute("action", "");
	}
	else if(adults==0 && children==0){
		alert('Please enter number of Guest!!');
		document.getElementById("reserveForm").setAttribute("action", "");
	}
}
function inputedDate(){
	
document.getElementById("end-date").setAttribute("onclick", "");
var startDate = document.getElementById("start-date").value;
const now = new Date(startDate);
now.setDate(now.getDate() + 1);
var min_date = now.toISOString().split('T')[0];
document.getElementById("end-date").setAttribute("min", min_date);
var max_day = new Date(startDate);
var lastDayOfMonth = new Date(max_day.getFullYear(), max_day.getMonth()+1, 0);
lastDayOfMonth.setDate(lastDayOfMonth.getDate() + 1);
var max_date = lastDayOfMonth.toISOString().split('T')[0];
document.getElementById("end-date").setAttribute("max", max_date);
}

function updateGuest(){
	
	document.getElementById("hrCalculate").style.display = "block";
	var fee = 20;
	var startDate = document.getElementById("start-date").value;
	var endDate = document.getElementById("end-date").value;

    var adults   =   document.getElementById('number').value;
	var children =   document.getElementById('number2').value;
	
	var text = adults+ " Adults - "+children +" Children" ;
	document.getElementById('guestDetail').value = text;
	document.getElementById("guestDetail").style.width = (document.getElementById("guestDetail").value.length -10) + 'em';
	
	var totalDay = daysBetween(startDate, endDate);
	var money = document.getElementById('hotel-price').value;
	var caculated_money= money*totalDay;
	//price per day
	document.getElementById("detail-price-caculated").setAttribute("type", "text");
	document.getElementById('detail-price-caculated').value ="$"+money+" x "+ totalDay+" nights";
	document.getElementById("total-price-caculated").setAttribute("type", "text");
	document.getElementById('total-price-caculated').value =caculated_money+"$";
			//auto width
	document.getElementById("detail-price-caculated").style.width = (document.getElementById("detail-price-caculated").value.length ) + 'em';
	document.getElementById("total-price-caculated").style.width = (document.getElementById("total-price-caculated").value.length ) + 'em';
	
	//fee
	document.getElementById("detail-fee-caculated").setAttribute("type", "text");
	document.getElementById('detail-fee-caculated').value ="Service fee";
	document.getElementById("total-fee-caculated").setAttribute("type", "text");
	document.getElementById('total-fee-caculated').value =fee+"$";
			//auto width
	document.getElementById("detail-fee-caculated").style.width = (document.getElementById("detail-fee-caculated").value.length ) + 'em';
	document.getElementById("total-fee-caculated").style.width = (document.getElementById("total-fee-caculated").value.length) + 'em';
	var total_pay_money = caculated_money+fee;
	//total	
		document.getElementById("detail-total-caculated").setAttribute("type", "text");
		document.getElementById('detail-total-caculated').value ="Total";
		document.getElementById("total-total-caculated").setAttribute("type", "text");
		document.getElementById('total-total-caculated').value =total_pay_money+"$";
			//auto width
		document.getElementById("detail-total-caculated").style.width = (document.getElementById("detail-total-caculated").value.length ) + 'em';
		document.getElementById("total-total-caculated").style.width = (document.getElementById("total-total-caculated").value.length ) + 'em';
		document.getElementById("hotel-price").style.width = (document.getElementById("hotel-price").value.length -2 ) + 'em';
}

function treatAsUTC(date) {
    var result = new Date(date);
    result.setMinutes(result.getMinutes() - result.getTimezoneOffset());
    return result;
}
 
function daysBetween(startDate, endDate) {
    var millisecondsPerDay = 24 * 60 * 60 * 1000;
    return (treatAsUTC(endDate) - treatAsUTC(startDate)) / millisecondsPerDay;
}










function changeSearch(){
	
	var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('searchBar');
    filter = input.value.toUpperCase();
    ul = document.getElementById("charactersList");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("h2")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
	
}



