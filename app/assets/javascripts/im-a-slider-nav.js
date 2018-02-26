(function( $ ) {

  $.fn.sliderNav = function() {

    var thisNav = $(this), // this nav
        navBtns = thisNav.find('.arrows'), // next/prev buttons for this slider nav
        navBullets = thisNav.find('.bullets').children('.bullet') // bullet dots/links for this slider nav
    ;
    thisNav.css('visibility','visible'); // now that window is loaded, show the nav (if originally hidden)

    navBullets
    .each(function(){ // cycle through each slide bullet/link
      var that = $(this); // this bullet

      that
      .on('click',function(){ // when this bullet is clicked
        var showSlideId = navBullets.index( that ), // id of the clicked bullet
            target = $('.' + thisNav.attr('data-target') ) // the slider this bullet list is targeting
        ;
        target
        .each(function(){ // for each target (if hitting multiple sliders)
          var that = $(this), // this target slider
              mySlides = that.find('.slide-group').children(), // all children slides
              currentId = mySlides.index( mySlides.filter('.active') ), // ID of current active slide
              currentSlides = mySlides.filter('.active'), // all slides currently visible
              activeCount = currentSlides.length // how many active slides do we have
          ;

          // if clicked bullet/link other than the current
          if( showSlideId != currentId ){
            // console.log('next please!');
            $( navBullets[currentId] ).removeClass('active'); // remove active from current bullet
            $( navBullets[showSlideId] ).addClass('active'); // add active to clicked bullet

            // remove .active on all active slides
            $.each(currentSlides, function(index, slide){
              $( slide ).removeClass('active').hide(); // remove active and hide
            });

            // add .active to clicked bullet/link
            for(i=0;i<activeCount;i++){ // for loop in case multiple slides show active
              $( mySlides[showSlideId + i] ).addClass('active').show(); // add active and show
            }
          };
        });
      });
    });

    navBtns
    .each(function(){ // cycle through each slide navigation btns
      var that = $(this), // this navBtn
          prevBtn = navBtns.filter('.prev'), // the prev button
          nextBtn = navBtns.filter('.next'), // the next button
          hideBtn = (that.attr('data-hide-when')) ? 'hide' : '', // hide prev on first slide, next on last
          direction = that.attr('data-direction') // slider button direction (next or previous)
      ;

      that
      .on('click',function(){ // when this button is clicked
        var target = $('.' + thisNav.attr('data-target') ); // the slider this button is targeting

        target
        .each(function(){ // for each target (if hitting multiple sliders)
          var that = $(this), // this target slider
              mySlides = that.find('.slide-group').children(), // all children slides
              currentSlides = mySlides.filter('.active'), // all slides currently visible
              hideSlide, // slide id's to hide
              nextSlide, // new/next slide to show
              hideId, // current slide id to hide
              nextId // next slide id
          ;

          if(direction.toLowerCase() == 'next'){ // if button clicked is next direction
            hideSlide = currentSlides[0]; // slide id's to hide
            nextSlide = ( (mySlides.index( currentSlides[currentSlides.length - 1] ) + 1) == (mySlides.length) ) ? 'STOP' : mySlides[mySlides.index( currentSlides[currentSlides.length - 1] ) + 1]; // new/next slide to show
            // id of next slide, or 'STOP' if on last slide
            nextId = (nextSlide == 'STOP') ? mySlides.length : mySlides.index( nextSlide );
            // show/hide prev/next depending on position
            if (nextSlide == 'STOP' || (mySlides.index( nextSlide ) + 1) == (mySlides.length)){
              nextBtn.addClass('hidden');
              prevBtn.removeClass('hidden');
            } else {
              prevBtn.removeClass('hidden');
              nextBtn.removeClass('hidden');
            };
          } else { // if button clicked is previous direction
            hideSlide = currentSlides[currentSlides.length - 1]; // slide id's to hide
            nextSlide = ( (mySlides.index( currentSlides[0] ) - 1) < 0 ) ? 'STOP' : mySlides[mySlides.index( currentSlides[0] ) -1]; // new/next slide to show
            // id of previous slide, or 'STOP' if on first slide
            nextId = (nextSlide == 'STOP') ? mySlides.length : mySlides.index( nextSlide );
            // show/hide prev/next depending on position
            if (nextSlide == 'STOP' || (mySlides.index( nextSlide )) == 0){
              prevBtn.addClass('hidden');
              nextBtn.removeClass('hidden');
            } else {
              prevBtn.removeClass('hidden');
              nextBtn.removeClass('hidden');
            };
          }

          // id of current slide we need to hide
          hideId = mySlides.index( hideSlide );

          if( nextSlide != 'STOP' ){
            $( hideSlide ).removeClass('active').hide(); // unset current as active and then hide
            $( nextSlide ).addClass('active').show(); // make next slide actice and show

            // reset all slides currently visible
            currentSlides = mySlides.filter('.active');
            // remove active from previous slide bullet
            $( navBullets[hideId] ).removeClass('active');
            // add active to bullet of current slide
            $( navBullets[mySlides.index( currentSlides[0] )] ).addClass('active');
          }
        });
      });
    });

    return this;
  };
}( jQuery ));
