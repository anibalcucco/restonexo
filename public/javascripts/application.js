$(document).ready(function() {
  $(".stars").children().not(":input").hide();

  $("#new_comment .stars").stars({
    cancelShow: false,
    captionEl: $("#stars-cap")
  });

  $("div.comment, div.restaurant .stars input[type=radio]").attr("disabled", true);

  $("div.comment, div.restaurant .stars").stars({
    cancelShow: false
  });

});
