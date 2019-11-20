import "bootstrap";
import { initSweetalert } from '../components/init_sweetalert';
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../components/init_mapbox';

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
