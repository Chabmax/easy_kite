import $ from 'jquery';

const carousel = $('.carousel');

const initCarousel = () => {
  if (carousel) {
    carousel.carousel({
        interval: 3000
    });

    carousel.carousel('cycle');
  }
}

export { initCarousel };

