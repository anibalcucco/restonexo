$(document).ready(function() {
  $(".stars").children().not(":input").hide();

  $("#new_comment .stars").stars({
    cancelShow: false,
    captionEl: $("#stars-cap")
  });

  $("div.comment, div.restaurant").find(".stars input[type=radio]").attr("disabled", true);

  $("div.comment, div.restaurant").find(".stars").stars({
    cancelShow: false
  });

});
