$( document ).ready(function(){
  // Show all articles btn
  $('.show-hide-button')
  .click(function(e){
    var that = $(this),
        target = $( that.attr('data-target') ), // targets for this button
        value = that.html()
    ;
    e.preventDefault();
    // for each target, toggle .hidden
    target
    .each(function(){
      $(this).toggleClass('hidden');
    });
    $('div.hidden').toggle(); // show/hide toggle articles
    if (value.toLowerCase() == 'show all'){
      that.html('HIDE'); // Update btn to hide
    } else {
      that.html('SHOW ALL'); // Update btn to show
    };
  });
});
