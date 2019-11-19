import "bootstrap";
import { initSweetalert } from '../components/init_sweetalert';

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
