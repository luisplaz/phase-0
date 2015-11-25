// DOM Manipulation Challenge

// I worked on this challenge [by myself, with: Dan Anderson].

// Add your JavaScript calls to this page:

// Release 0:

// Release 1:

document.getElementById("release-0").className = "done";

// Release 2:

document.getElementById("release-1").style.display = "none";

// Release 3:

document.getElementsByTagName("h1")[0].innerHTML = "I completed Release 2";

// example
// document.getElementsByTagName("P")[0].innerHTML = "Hello World!";

// Release 4: Add the background color #955251 to the #release-3 div. #955251 was Pantone's

document.getElementById("release-3").style.backgroundColor = "#955251";

// Release 5: Select all occurrences of class .release-4 and change the text-size to 2em.

// METHOD 1: With a for loop
// var x = document.getElementsByClassName("release-4")
// var i;
// for (i = 0; i < x.length; i++) {
//     x[i].style.fontSize = "2em";
// }

// METHOD 2: by index
var x = document.getElementsByClassName("release-4")[0].style.fontSize = "2em";
var x = document.getElementsByClassName("release-4")[1].style.fontSize = "2em";

// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));




