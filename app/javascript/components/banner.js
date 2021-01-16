import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["furry", "fishy", "kitty", "fun", "silly"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
