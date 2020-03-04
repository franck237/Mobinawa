// Select tab
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

// Change background image logic
$(document).on("click", ".dropdown-item", function(){
  homeClasses = $("#home-page").attr('class').split("full-bg")[0]
  $("#home-page").removeClass().addClass((homeClasses + "full-bg" + this.dataset["imgIndex"]))
})

