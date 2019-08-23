import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
// import 'circles.js'


import '../plugins/smooth_scroll.js';


import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"


flatpickr(".datepicker", {})

 // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import Typed from 'typed.js';

const options = {
  strings: ["un goûter", "un mariage","un rendez-vous avec votre professeur de maths","un mariage"],
  loop: true,
  typeSpeed: 40
}

if (document.querySelector(".typed")) {
  const typed = new Typed(".typed", options);
}

const calculator = () => {
  const start_date = document.querySelector(".start_date")
  const end_date = document.querySelector(".end_date")
  if (start_date) {
    end_date.addEventListener('change', (event) => {
   const reservation_price = ((Date.parse(end_date.value) - Date.parse(start_date.value))/ 86400000 )* parseInt(event.target.dataset.price)
   document.querySelector(".booking_price").innerHTML =`Le prix total de votre réservation est de ${reservation_price} euros`
    })
  }
}

calculator();


/// RONDS NOTES ///


let note = parseFloat(display.dataset.note);
let offset = circumference * (10 - note) / 10;

const displays = document.querySelectorAll('.note-display');
const transitionDuration = 900;

displays.forEach(display => {
  let progress = display.querySelector('.circle__progress--fill');
  let radius = progress.r.baseVal.value;
  let circumference = 2 * Math.PI * radius;
  let note = parseFloat(display.dataset.note);
  let offset = circumference * (10 - note) / 10;

  progress.style.setProperty('--initialStroke', circumference);
  progress.style.setProperty('--transitionDuration', `${transitionDuration}ms`);

+ setTimeout(() => progress.style.strokeDashoffset = offset, 100);
});



