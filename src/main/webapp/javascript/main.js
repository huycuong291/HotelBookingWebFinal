var isDisplay = false;
var subMenu = document.getElementById("sub-menu");

function display_submenu() {
    if(isDisplay == false) {
        isDisplay = true;
        subMenu.classList.remove("hide");
    }
    else {
        isDisplay = false;
        subMenu.classList.add("hide");
    }
}