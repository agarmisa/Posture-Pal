$('.checkin').on('click', function(event) {
  event.preventDefault();
  var url = $(this).attr('href');
  var checkinTotal = $(this).parent().find('.checkin-total');
  $.ajax({
    type: 'POST',
    url: url,
    dataType: 'json',
    success: function(response) {
      checkinTotal.text(response);
    }
  });
});
