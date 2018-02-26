// when called, will remove active from nav links and hide accordions
var hideAccordions = function(){
  // If any other top nav links are active, remove active
  $('a.accordion-nav.active')
  .each(function(){
    $(this).removeClass('active');
  });

  // If any accordion contents are active, remove active and slide back up
  $('div.accordion-content div.active')
  .each(function(){
    $(this).slideUp().removeClass('active');
  });
};
// Accordion nav logic
var accordionTrigger = function(that){
  var that = $(that);

  // when clicked, slide open corresponding accordion content
  var elem_id = that.attr('href'),
      elem = $('div'+elem_id)
  ;
  // If this is already active, remove
  if (that.hasClass('active')){
    that.removeClass('active'); // Remove nav active class
    elem.slideUp().removeClass('active'); // Hide content
  } else {
    // remove active from nav and accordions (if any)
    hideAccordions();

    that.addClass('active'); // Assign clicked nav item as active
    // adjust height of content to fill screen
    var windowHeight = window.innerHeight - that.parents('nav').height();
    elem.children('section').height(windowHeight);
    elem.slideDown().addClass('active'); // Show content
  };

  return false;
};

// when dom is ready
$(document).ready(function(){
  // when certain nav links are clicked, we need to make sure (if mobile) that the nav collapses
  $('a.collapse-mobile')
  .each(function(){
    var that = $(this);
    that
    .on('click', function(e){
      // remove class 'in', which will cause collapse
      $('#navbar-links').removeClass('in');
    });
  });

  // nav accordion links
  $('a.accordion-trigger')
  .each(function(){
    var that = $(this),
        target = $('a.accordion-nav[href=' + that.attr('href') + ']')
    ;
    that
    .on("click", function(){
      target.trigger('click')
      return false;
    })
  });

  // need obvious way to close accodion 
  $('.accordion-content__close-button')
  .on('click',function(){
    hideAccordions();
  });

  // newsletter subscribe
  // once footer subscribe clicked, add email to modal popup
  $('#newsletter-subscribe-btn')
  .on('click',function(){
    $('#newsletter-email').val($('#newsletter-quick-email').val());
  });
});

// once window has finished loading
$(window).load(function(){
  // Sticky Nav
  // var navbar = $('.topnav'), // Main top nav
  var navbar = $('.nav-group'), // Main top nav
      navbarTop = navbar.offset().top, // Top position of nav
      sideNav = $('.side-nav.make-sticky'), // Sidenav
      sideNavTop = sideNav.offset().top, // Top position of sidenav
      sideNavBottom = sideNav.offset().bottom, // Bottom position of sidenav
      bodyContent = $('.body-content'), // Main body of content
      sideNavStop = $('.side-nav-stop').offset().top, // Top position of footer
      scrollPoint = bodyContent.offset().top, // Top position of body, where nav initially snaps to
      windoww = $(window), // The window of browser
      stickyNav = function(){
        var scrollTop = windoww.scrollTop(), // Top position of window
            sideNewTop = scrollTop - sideNavTop,
            sideNavBottom = scrollTop + sideNav.height() + 100, // Refresh bottom position of sidenav
            windowWidth = window.innerWidth // screen width, stop side stick if certain size
        ;

        // Once window top is past nav snap point, make top nav snap to top of window
        if (scrollTop > scrollPoint){
          // Make stick to top
          navbar.removeClass('nav-group--absolute').addClass('nav-group--fixed');
        } else {
          // Make stick to orig location
          navbar.removeClass('nav-group--fixed').addClass('nav-group--absolute');
        };

        // // TODO: re-add sticky side nav?
        // // snap side nav to scroll with you if window is big enough
        // // and top nav has connected
        // // and haven't touched reached sideNavStop
        // if (windowWidth >= 900 && scrollTop > sideNav.parent().offset().top && sideNavBottom < sideNavStop){
        //   // console.log('should be snapping');
        //   // Make sidenav sticky
        //   sideNav.stop().animate({
        //     top: sideNewTop
        //   }, { duration: 0 });
        //   // tried the following, didn't like
        //   // }, { duration: 800, easing: 'easeOutBounce' });
        //   // }, { duration: 800, easing: 'easeOutElastic' });
        //   // }, { duration: 800, easing: 'swing' });
        //   // }, { duration: 800, easing: 'easeOutCubic' });
        // } else if(sideNavBottom >= sideNavStop) {
        //   // console.log('dont go past footer area');
        //   // don't scroll sideNav past sideNavStop
        // } else {
        //   // console.log('should stay at top');
        //   // Make sidenav sticky
        //   sideNav.offset({top: sideNavTop});
        // };
      }
  ;
  // call on start
  stickyNav();
  // also call everytime we scroll
  windoww.scroll(function(){
    stickyNav();
  });
});
