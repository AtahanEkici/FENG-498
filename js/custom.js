function screen_resize()
{
var final = $(window).height();
document.getElementById("right-div2").style.height = ""+final+"px";
document.getElementById("left-div2").style.height = ""+final+"px";
}
$(document).ready(function(e) 
{
screen_resize();
});
$(window).resize(function(e) 
{
screen_resize();
}); 