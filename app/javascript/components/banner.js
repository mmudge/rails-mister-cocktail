import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Huge", "Big", "Gigantic", "Enormous"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
