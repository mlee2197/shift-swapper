//$(document).ready(function() {
window.addEventListener('load', checkDiningVal() );
function  checkDiningVal()
{
    console.log(document.readyState);
    var diningVal = document.getElementById("user_dininghalls").value;
    if (diningVal != 'None')
    {
    document.getElementById("user_dininghalls").disabled=true;   
    document.getElementById("submit_button").disabled=true;   
    }
}