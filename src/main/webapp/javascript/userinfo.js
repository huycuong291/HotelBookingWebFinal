var second_divs = document.querySelectorAll(".second-div");
var third_divs = document.querySelectorAll(".third-div");
var buttons = document.querySelectorAll(".edit-btn");

for(let i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener('click', function() {
        if(buttons[i].innerText == "Edit") {
            buttons[i].innerText = "Cancel";

            //add display: none; to second-div
            second_divs[i].classList.add("hide");
            //remove display: none; from third-div
            third_divs[i].classList.remove("hide");
        }
        else if(buttons[i].innerText == "Cancel") {
            buttons[i].innerText = "Edit";

            //remove display: none; from second-div
            second_divs[i].classList.remove("hide");
            //add display: none; to third-div
            third_divs[i].classList.add("hide");
        }
    })
}