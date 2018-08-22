$(function() {

$(document).on('turbolinks:load', function() {


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

// -----メッセージ-----

  $('.modal_wrapper').click(function(e) {
    if (!$(e.target).closest('.modal').length) {
      $('.modal_wrapper').fadeOut(500);
      $('.message-modal').fadeOut(500);
    }
  })

  modalResize();
  $('#messaege').click(function() {
    $('.modal_wrapper').fadeIn(500);
    $('.message-modal').fadeIn(500);
  });

  $(function () {
      $('#messaege').click(function () {
          // Ajax通信を開始する
          $.ajax({
              type: "POST",
              url: '/action',
              success: function() {
                  console.log('成功');
              },
              error: function(){
                  console.log('失敗');
              }
          })
      });
  });


// -----スライダー-----


var mySwiper = new Swiper ('.swiper-container', {
  loop: true,
  slidesPerView: 2,
  spaceBetween: 5,
  centeredSlides : true,
  autoplay: 2500,
  pagination: '.swiper-pagination',
  nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev'
})









});


})
