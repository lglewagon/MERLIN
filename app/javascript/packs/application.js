// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap';
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import { geoFindMe } from "../components/geolocalisation"

$(function() {
  $(".progress").each(function() {
    var value = $(this).attr('data-value');
    var left = $(this).find('.progress-left .progress-bar');
    var right = $(this).find('.progress-right .progress-bar');
    if (value > 0) {
      if (value <= 50) {
        right.css('transform', 'rotate(' + percentageToDegrees(value) + 'deg)')
      } else {
        right.css('transform', 'rotate(180deg)')
        left.css('transform', 'rotate(' + percentageToDegrees(value - 50) + 'deg)')
      }
    }
  })
  function percentageToDegrees(percentage) {
    return percentage / 100 * 360
  }
});


document.addEventListener("turbolinks:load", function() {
    const findMeButton = document.querySelector('#find-me')
    console.log(findMeButton);
    if (findMeButton) {
        findMeButton.addEventListener('click', geoFindMe);
    };
})

// ------> Afficher la valeur du range de garden new
document.addEventListener('DOMContentLoaded', function() {

    var slider = document.getElementById("garden_width"); // input
    var displayer = document.getElementById("widthValue"); // div !

    displayer.innerText = slider.value
 
    slider.addEventListener("change", function() {
        var value = slider.value
        displayer.innerText = value
    })

    var slider2 = document.getElementById("garden_length"); // input
    var displayer2 = document.getElementById("lengthValue"); // div !

    displayer2.innerText = slider2.value
 
    slider2.addEventListener("change", function() {
        var value = slider2.value
        displayer2.innerText = value
    })

    var slider3 = document.getElementById("garden_shoe_size"); // input
    var displayer3 = document.getElementById("shoeSizeValue"); // div !

    displayer3.innerText = slider3.value
 
    slider3.addEventListener("change", function() {
        var value = slider3.value
        displayer3.innerText = value
    })
})



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
