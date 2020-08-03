var accordionSec1 = document.getElementById("accordion-section-1");
var accordionSec2 = document.getElementById("accordion-section-2");
var accordionSec3 = document.getElementById("accordion-section-3");

accordionSec1.addEventListener("click", accordionFn1);
accordionSec2.addEventListener("click", accordionFn2);
accordionSec3.addEventListener("click", accordionFn3);

function accordionFn1() {
  accordionSec1.children[0].firstElementChild.src = "ellipse-minus.png";
  accordionSec1.children[1].style.display = "block";

  accordionSec2.children[0].firstElementChild.src = "ellipse-plus.png";
  accordionSec2.children[1].style.display = "none";

  accordionSec3.children[0].firstElementChild.src = "ellipse-plus.png";
  accordionSec3.children[1].style.display = "none";
}

function accordionFn2() {
  accordionSec1.children[0].firstElementChild.src = "ellipse-plus.png";
  accordionSec1.children[1].style.display = "none";

  accordionSec2.children[0].firstElementChild.src = "ellipse-minus.png";
  accordionSec2.children[1].style.display = "block";

  accordionSec3.children[0].firstElementChild.src = "ellipse-plus.png";
  accordionSec3.children[1].style.display = "none";
}

function accordionFn3() {
  accordionSec1.children[0].firstElementChild.src = "ellipse-plus.png";
  accordionSec1.children[1].style.display = "none";

  accordionSec2.children[0].firstElementChild.src = "ellipse-plus.png";
  accordionSec2.children[1].style.display = "none";

  accordionSec3.children[0].firstElementChild.src = "ellipse-minus.png";
  accordionSec3.children[1].style.display = "block";
}