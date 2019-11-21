const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const banner = document.querySelector('.banner');
  const carousel = document.querySelector('.carousel')

  if (navbar && (banner || carousel) ) {
    navbar.classList.remove('sticky-top', 'navbar-lewagon-default');
    navbar.classList.add('fixed-top', 'navbar-lewagon-banner');

    window.addEventListener('scroll', () => {
      if (banner) {
        if (window.scrollY >= banner.offsetHeight) {
          navbar.classList.add('navbar-lewagon-default');
          navbar.classList.remove('navbar-lewagon-banner');
        } else {
          navbar.classList.add('navbar-lewagon-banner');
          navbar.classList.remove('navbar-lewagon-default');
        }
      } else if (carousel) {
        if (window.scrollY >= carousel.offsetHeight) {
          navbar.classList.add('navbar-lewagon-default');
          navbar.classList.remove('navbar-lewagon-banner');
        } else {
          navbar.classList.add('navbar-lewagon-banner');
          navbar.classList.remove('navbar-lewagon-default');
        }
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
