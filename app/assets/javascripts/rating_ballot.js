$(function () {
    var checkedId = $('form.rating_ballot > input:checked').attr('id');
    $('form.rating_ballot > label[for=' + checkedId + ']').prevAll().andSelf().addClass('bright');
});

$(document).ready(function() {
  // also change stars before.
  $('form.rating_ballot > label').hover(
    function() {    // mouseover
      $(this).prevAll().andSelf().addClass('hover');
    },function() {  // mouseout
      $(this).siblings().andSelf().removeClass('hover');
  });

  // update rating stars.
  $('form.rating_ballot > label').click(function() {
    $(this).siblings().removeClass("bright");
    $(this).prevAll().andSelf().addClass("bright");
  });

  // submit form when clicked
  $('form.rating_ballot').change(function() {
    $('form.rating_ballot').submit();
  });
});