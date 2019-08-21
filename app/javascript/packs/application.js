import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';

import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

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

const typed = new Typed(".typed", options);
