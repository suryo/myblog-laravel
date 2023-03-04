// var swiper = new Swiper(".swiper-default", {
//    slidesPerView: 1,
//    spaceBetween: 15,
//    effect: "fade",
//    keyboard: {
//       enabled: true,
//    },
//    pagination: {
//       el: ".swiper-pagination",
//       clickable: true,
//    },
//    autoplay: {
//       delay: 2500,
//       disableOnInteraction: false
//    },
//    rewind: true,
//    rewind: true,
//    navigation: {
//       nextEl: ".swiper-button-next",
//       prevEl: ".swiper-button-prev",
//    },
//    breakpoints: {
//       576: {
//          slidesPerView: 2,
//          spaceBetween: 15,
//       },
//       992: {
//          slidesPerView: 3,
//          spaceBetween: 15,
//       },
//       1200: {
//          slidesPerView: 4,
//          spaceBetween: 15,
//       },
//    },
// });

// ============================ slider product
var swiper = new Swiper(".slider-produk", {
   slidesPerView: 1,
   spaceBetween: 15,
   autoplay: {
      delay: 2500,
      disableOnInteraction: false
   },
   rewind: true,
   rewind: true,
   navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
   },
   breakpoints: {
      576: {
         slidesPerView: 2,
      },
      992: {
         slidesPerView: 3,
      },
      1200: {
         slidesPerView: 4,
      },
   },
});

// ============================ slider pemateri
var swiper = new Swiper("#slider-pemateri", {
   slidesPerView: 1,
   rewind: true,
   rewind: true,
   navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
   },
   breakpoints: {
      576: {
         slidesPerView: 2,
         spaceBetween: 30,
      },
      1200: {
         slidesPerView: 3,
         spaceBetween: 15,
      },
   },
});