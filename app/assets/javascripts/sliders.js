$( window ).load( function(){
  console.log('LOADED');
  // navigations for sliders
  $('.im-a-slider-nav')
  .each(function(){
    $(this).sliderNav();
  });

});
