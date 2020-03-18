$(document).on("click", ".choose-categories", function() {
  $(this).addClass("active-border");
  $(".enter-text").removeClass("active-border");
  $(".logo-heading, .join").addClass("hide");
  $(".back-menu, .hide-menu-icon, .mobinawa-network").removeClass("hide");
  $(".choose-tap").addClass("hide");
  $("#main-bg").addClass("d-block");
  $(".total-menu ul").addClass("overflow-menu");
  $(".multi-menu").addClass("multi-menu-scroll");
  $(".full-height").css({'justify-content':'flex-start'});
});

$(document).on("click", ".back-menu", function() {
  $(".enter-text").addClass("active-border");
  $(".choose-categories").removeClass("active-border");
  $(".back-menu, .hide-menu-icon, .mobinawa-network").addClass("hide");
  $(".logo-heading, .choose-tap").removeClass("hide");
  $(".join").removeClass("hide");
  $("#main-bg").removeClass("d-block");
  $(".total-menu ul").removeClass("overflow-menu");
  $(".multi-menu").removeClass("multi-menu-scroll");
  $(".full-height").css({'justify-content':'space-between'});
});

$(document).on("click", "#see-more-page", function() {
  $(".see-more-hidden, #carouselExampleControls").addClass("hide");
  $(".detailed-pera, .back-arrow-black").removeClass("hide");
  $(".tabs").addClass("mt-35");
  $(".overview, .imglist").addClass("height-76");
  $(".pro-filter-list ul").addClass("height-170");
});

$(document).on("click", "#photos, #products, #location", function() {
  $(".see-more-hidden, #carouselExampleControls").addClass("hide");
  $(".detailed-pera, .back-arrow-black").removeClass("hide");
  $(".tabs").addClass("mt-35");
  $(".overview, .imglist").addClass("height-76");
  $(".pro-filter-list ul").addClass("height-170");
});
