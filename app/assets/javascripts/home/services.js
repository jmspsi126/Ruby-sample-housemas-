$( document ).ready( function(){
  $('#services-toggle') // offcanvas bullet list
  .on('click',function(){
    var that = $(this), // this toggle
        arrows = $('#services-arrows') // this sliders arrow buttons
    ;
    arrows.toggle(); // show/hide arrows
    that.toggleClass('active') // add/remove active to toggler
    .parents('aside').toggleClass('active'); // add/remove active to aside parent
  });
});
