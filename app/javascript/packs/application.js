import "bootstrap";
import { initSweetalert } from '../components/init_sweetalert';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../components/init_mapbox';
import {initAutocomplete} from '../components/init_autocomplete';
import filter from '../components/filter';
import { initCarousel } from '../components/init_carousel';
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';

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


initMapbox();
initAutocomplete();
filter();
initCarousel();
loadDynamicBannerText();
initUpdateNavbarOnScroll();
