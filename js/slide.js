var slideIndex=0;function showSlides(){var e,s=document.getElementsByClassName("mySlides");for(e=0;e<s.length;e++)s[e].style.display="none";for(++slideIndex>s.length&&(slideIndex=1),e=0;e<s.length;e++)s[e].className=s[e].className.replace(" active","");s[slideIndex-1].style.display="block",s[slideIndex-1].className+=" active",setTimeout(showSlides,5e3)}showSlides();