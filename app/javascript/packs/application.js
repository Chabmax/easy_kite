import "bootstrap";
import { initSweetalert } from '../components/init_sweetalert';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../components/init_mapbox';
import {initAutocomplete} from '../components/init_autocomplete';
import filter from '../components/filter';
import { initCarousel } from '../components/init_carousel';
import { loadDynamicBannerText } from '../components/banner';

initSweetalert('#sweet-alert-delete', {
  title: "WARNING",
  text: `Do you realy want to delete this product?`,
  dangerMode: true,
  buttons: true,
  icon: "warning"
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link');
    link.click();
  }
});


function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}






initMapbox();
initAutocomplete();
filter();
initCarousel();
loadDynamicBannerText();
