import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import { initAutocomplete } from "../plugins/init_autocomplete.js";

initMapbox();

window.initAutocomplete = initAutocomplete
initAutocomplete()

import { initStarRating } from '../plugins/init_star_rating';

initStarRating();

const searchHomePage = document.querySelector('.search-bar-hidden')

if (searchHomePage) {
  const algoliaIcon = document.querySelector('.ap-icon-pin')
  algoliaIcon.style.top = '35px'
  algoliaIcon.style.right = '45px'
}
