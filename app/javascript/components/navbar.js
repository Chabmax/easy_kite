const navbar = document.querySelector('.navbar-lewagon');
const banner = document.querySelector('.banner');
const carousel = document.querySelector('.carousel')

const makeNavbarBanner = () => {
  navbar.classList.add('navbar-lewagon-default');
  navbar.classList.remove('navbar-lewagon-banner');
}

const makeNavbarDefault = () => {
  navbar.classList.add('navbar-lewagon-banner');
  navbar.classList.remove('navbar-lewagon-default');
}

const initUpdateNavbarOnScroll = () => {

  if (navbar && (banner || carousel) ) {
    navbar.classList.add('fixed-top', 'navbar-lewagon-banner');
    navbar.classList.remove('sticky-top', 'navbar-lewagon-default');

    window.addEventListener('scroll', () => {
      if (banner) {
        if (window.scrollY >= banner.offsetHeight) {
          makeNavbarBanner();
        } else {
          makeNavbarDefault();
        }
      } else if (carousel) {
        if (window.scrollY >= carousel.offsetHeight) {
          makeNavbarBanner();
        } else {
          makeNavbarDefault();
        }
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
