import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["La meilleure solution pour s'envoyer en l'air"],
    typeSpeed: 50,
    loop: false
  });
}

export { loadDynamicBannerText };
