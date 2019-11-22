import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('kite-search');
  if (addressInput) {
    places({ container: addressInput });
  }
  const addressInputProduct = document.getElementById('product_address');
  if (addressInputProduct) {
    places({ container: addressInputProduct });
  }
};



export { initAutocomplete };
