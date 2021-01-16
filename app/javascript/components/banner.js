import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const bannerDiv = document.querySelector('#banner-typed-text')
  if (bannerDiv) {
    new Typed('#banner-typed-text', {
      strings: ["furry", "fishy", "kitty", "fun", "silly"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
