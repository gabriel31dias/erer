// Import and register all your controllers from the importmap under controllers/*

import { application } from "controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

  var bannerImagesElement = document.getElementById('bannerImages');


  var images = JSON.parse(atob(bannerImagesElement.getAttribute('data-images'))) ;


  var banner = document.getElementById('banner');
  var currentIndex = 0;

  function changeBanner() {
    banner.style.backgroundImage = 'url(' + images[currentIndex].image_url + ')';
    currentIndex = (currentIndex + 1) % images.length;
  }

  // Chame a função a cada 5 segundos (5000 milissegundos)
  setInterval(changeBanner, 5000);
