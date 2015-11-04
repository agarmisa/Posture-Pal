$(document).ready(function() {
  $('.story-full').hide();
  $( '.story' ).hover(function() {
    $('.story-full').show();
    // $('.story-full').slideToggle("slow");
  });
});
