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

$(document).on("click", ".btn-book", function() {
  $("#products").click();
});

$(document).on("click", "#photos, #products, #location", function() {
  hideCompanyHomePage();
});

$(document).on("click", "#see-more-page", function() {
  hideCompanyHomePage();
  $(".detailed-pera").removeClass("hide");
});

$(document).on("click", "#company-back-icon", function() {
  showCompanyHomePage();
  $("#overview").click();
});

$( document).on("click", "#company-back-icon, #overview", function() {
  showCompanyHomePage();
});

function showCompanyHomePage(){
  $(".see-more-hidden, #carouselExampleControls").removeClass("hide");
  $(".tabs").removeClass("mt-35");
  $(".overview, .imglist").removeClass("height-76");
  $(".pro-filter-list ul").removeClass("height-170");
  $(".back-arrow-black, .detailed-pera").addClass("hide");
}

function hideCompanyHomePage(){
  $(".see-more-hidden, #carouselExampleControls").addClass("hide");
  $(".tabs").addClass("mt-35");
  $(".overview, .imglist").addClass("height-76");
  $(".pro-filter-list ul").addClass("height-170");

  $(".back-arrow-black").removeClass("hide");
}
