import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
 //import "price_calculator"

import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"


flatpickr(".datepicker", {})

 // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import Typed from 'typed.js';

const options = {
  strings: ["un gouter", "un mariage","un enterrement","..."],
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
    end_date.insertAdjacentHTML('afterEnd', `<p> your reservation total price is ${reservation_price} euros </p>`)
    })
  }
}

calculator();
