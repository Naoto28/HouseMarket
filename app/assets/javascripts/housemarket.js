$(function() {



$(window).scroll(function() {
  if ($(this).scrollTop() > 250) {
    $('#scroll').css('display', 'block');
  } else {
    $('#scroll').css('display', 'none');
  }
});

$('#scroll').click(function() {
  $('html, body').animate({'scrollTop': 0}, 700);
});

  function modalResize() {
    var w = $(window).width();
    var h = $(window).height();
    var x = (w - $('.modal').outerWidth(true)) / 2;
    var y = (h - $('.modal').outerHeight(true)) / 2;
    $('.modal').css({'left': x + 'px', 'top': y});
  }

  $(window).on('resize', function() {
    modalResize();
  });

  $('.modal_wrapper').click(function(e) {
    if (!$(e.target).closest('.modal').length) {
      $('.modal_wrapper').fadeOut(500);
      $('.modal').fadeOut(500);
    }
  })

  modalResize();
  $('#top-images-left').click(function() {
    $('.modal_wrapper').fadeIn(500);
    $('.modal').fadeIn(500);
  });








})
