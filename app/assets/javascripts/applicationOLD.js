// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
// require jquery
// require jquery_ujs
// require turbolinks
// require_tree .

// $(function(){
  // $(document).foundation();

  // // Accordion Triggers (for nav accordions)
  // $('a.accordion-trigger')
  // .each(function(){
  //   var that = $(this),
  //       target = $('a.accordion-nav[href=' + that.attr('href') + ']')
  //   ;
  //   that
  //   .on("click", function(){
  //     target.trigger('click')
  //     return false;
  //   })
  // });
  // // Accordion nav logic
  // $('a.accordion-nav')
  // .each(function(){
  //   var that = $(this);

  //   // when clicked, slide open corresponding accordion content
  //   that
  //   .on("click", function(){
  //     var elem_id = that.attr('href'),
  //         elem = $('li'+elem_id)
  //     ;
  //     // If this is already active, remove
  //     if (that.hasClass('active')){
  //       that.removeClass('active'); // Remove nav active class
  //       elem.slideUp().removeClass('active'); // Hide content
  //     } else {
  //       // If any other navs are active, remove
  //       $('a.accordion-nav.active')
  //       .each(function(){
  //         $(this).removeClass('active');
  //       });
  //       // If any other are active, hide
  //       $('ul.accordion-content li.active')
  //       .each(function(){
  //         $(this).slideUp().removeClass('active');
  //       });
  //       that.addClass('active'); // Assign clicked nav item as active
  //       elem.slideDown().addClass('active'); // Show content
  //     };

  //     return false;
  //   });
  // });

  // // Services section nav
  // // clicking name shows corresponding slide
  // $('ul.slider-8-nav li.slide-nav')
  // .each(function(){
  //   var that = $(this), // This slide nav
  //       slideIndex = that.attr('data-slick-index') // Index of slide to show
  //   ;
  //   // When clicked, update slider with corresponding slide
  //   that
  //   .click(function(){
  //     $('.slider-8').slick('slickGoTo', parseInt(slideIndex) ); // Navigate to this slide
  //   });
  // });

  // // All articles section
  // // when article block hovered state, show content text
  // $('div.all-articles div.article.no-blank')
  // .each(function(){
  //   var that = $(this), // This article block
  //       content = that.find('div.content') // Content for this block
  //   ;
  //   that
  //   .mouseover(function(){
  //     content.slideDown(); // Show content
  //   })
  //   .mouseleave(function(){
  //     content.slideUp(); // Hide content
  //   })
  // });

  // // Search articles
  // // Input side button to show/hide filters section
  // $('a#search-articles-filter')
  // .click(function(e){
  //   e.preventDefault();
  //   $('div#articles-filter').toggleClass('hide'); // show/hide filters
  // });
  // // Show all articles btn
  // $('a#articles-show-all')
  // .click(function(e){
  //   var that = $(this),
  //       value = that.html()
  //   ;
  //   e.preventDefault();
  //   $('div.hidden').toggle(); // show/hide toggle articles
  //   if (value.toLowerCase() == 'show all'){
  //     that.html('HIDE ALL'); // Update btn to hide
  //   } else {
  //     that.html('SHOW ALL'); // Update btn to show
  //   };
  // });
  // // show/hide articles based on searched text
  // $('input#search-articles')
  // .keyup(function(){
  //   var that = $(this),
  //       search = that.val()
  //   ;
  //   console.log(search);
  //   $('div.all-articles div.article.searchable')
  //   .each(function(){
  //     var thatt = $(this), // This article block
  //         content = thatt.find('div.content p.desc'), // Content for this block
  //         keywords = content.attr('data-content-keywords'), // Keywords for this block
  //         desc = content.html().toLowerCase() // The description of this block
  //     ;
  //     if (desc.indexOf(search) >= 0){
  //       thatt.show(); // Show if search string found
  //     } else {
  //       thatt.hide(); // Hide if not found
  //     };
  //   });
  // });
  // // show/hide (and allow block to be searchable) based on checkbox checked
  // $('div.keywords input[type=checkbox]')
  // .each(function(){
  //   $(this)
  //   .click(function(){
  //     // whenever any gets checked, grab all boxes that are checked
  //     // and only show articles
  //       var checkedboxes = $('div.keywords input[type=checkbox]:checked'),
  //           keywords = []
  //       ;
  //       // Loop through each checked box, add value to keywords array
  //       checkedboxes.each(function(){
  //         keywords.push($(this).val().toLowerCase());
  //       });
  //     $('div.all-articles div.article')
  //     .each(function(){
  //       var that = $(this), // This article block
  //           content = that.find('div.content p.desc'), // Content for this block
  //           blockKeywords = content.attr('data-content-keywords').split(','), // Keywords for this block
  //           matches = 0 // number of keyword matches found in block
  //       ;
  //       for(var i = 0; i < blockKeywords.length; i++){
  //         // for all keywords found in this block, increment value
  //         if ($.inArray($.trim(blockKeywords[i].toLowerCase()), keywords) >= 0){
  //           matches++; // increment matches found
  //         }
  //       };
  //       // if block has all keywords that have been clicked, show it
  //       if (matches == keywords.length) {
  //         // add searchable class and show
  //         that.addClass('searchable').show();
  //       } else {
  //         // remove searchable class and hide
  //         that.removeClass('searchable').hide();
  //       };
  //     });
  //   });
  // });

  // // Franchisee Side Nav
  // var zeeSideNav = $('div.zee-sidenav'),
  //     zeeLoader = zeeSideNav.find('.loading'),
  //     zeeContent = zeeSideNav.find('.content'),
  //     geoBlock = $('#geo_block'),
  //     territoryURL = geoBlock.attr('data-endpoint'),
  //     loadZee = function(city, state){
  //       var city = (typeof city === 'undefined') ? geoBlock.attr('data-city') : city,
  //           state = (typeof state === 'undefined') ? geoBlock.attr('data-state') : state
  //       ;
  //       zeeContent.hide();
  //       zeeLoader.show();
  //       // Housemaster City/State AJAX
  //       $.ajax({
  //         url: territoryURL, // Where to make request
  //         type: 'GET', // HTTP method: "POST" or "GET"
  //         // contentType: 'application/javascript',
  //         data: {
  //           city: city,
  //           state: state
  //         }, // Object with data to send to the server resource
  //         dataType: 'html', // Expected return data: xml, html, text, json, script, or jsonp
  //         //timeout: 5000, // Milliseconds to wait before cancel (evokes error callback)
  //         cache: false, // Default true... use false to not cache the request
  //         success: function( response ){
  //           // console.log( 'SUCCESSFUL RETURN' );
  //           var zeeContent = $('.zee-sidenav .content');
  //           // Let's load the html returned
  //           zeeContent
  //           .html(response);
  //         },
  //         error: function(response){
  //           // console.log( 'ERROR RETURN' );
  //           // console.log( response );
  //         },
  //        complete: function(){
  //           // Function always triggered after return
  //           console.log( 'AJAX COMPLETE' );
  //           zeeLoader.hide();
  //           zeeContent.show();
  //         }
  //       });
  //     }
  // ;
  // $('form#ajax-find-hm-office')
  // .on('submit', function(){
  //   var that = $(this),
  //       url = that.attr('action'),
  //       location = that.find('input[type=text][name=location]').val()
  //   ;
  //   console.log('submitted');
  //   console.log(location);
  //   // Validate location string
  //   $.ajax({
  //     url: url, // Where to make request
  //     type: 'GET', // HTTP method: "POST" or "GET"
  //     data: {
  //       location: location
  //     }, // Object with data to send to the server resource
  //     dataType: 'json', // Expected return data: xml, html, text, json, script, or jsonp
  //     cache: false, // Default true... use false to not cache the request
  //     success: function( response ){
  //       // console.log( 'SUCCESSFUL RETURN' );
  //       // console.log(response);
  //       loadZee(response.city, response.state);
  //     },
  //     error: function(response){
  //       console.log( 'ERROR RETURN' );
  //       console.log( response );
  //       console.log( response.responseJSON.error );
  //       // Output error
  //       that.parent().find('.message').html(response.responseJSON.error).show().delay(10000).fadeOut()
  //     },
  //    complete: function(){
  //       // Function always triggered after return
  //       console.log( 'AJAX COMPLETE' );
  //       // If this was a modal popup, close it
  //       that.parents('.reveal-modal').foundation('reveal', 'close');
  //     }
  //   });
  //   return false;
  // });

  // loadZee();
// });

// $(window).load(function(){
//   // Sticky Nav
//   var navbar = $('div.main-nav'), // Main top nav
//       navbarTop = navbar.offset().top, // Top position of nav
//       sideNav = $('.side-nav'), // Sidenav
//       sideNavTop = sideNav.offset().top, // Top position of sidenav
//       bodyContent = $('.body-content'), // Main body of content
//       scrollPoint = bodyContent.offset().top, // Top position of body, where nav initially snaps to
//       windoww = $(window), // The window of browser
//       stickyNav = function(){
//         var scrollTop = windoww.scrollTop(), // Top position of window
//             sideNewTop = scrollTop - sideNavTop
//         ;
// 
//         // Once window top is past nav snap point, make it snap to top of window
//         if (scrollTop > scrollPoint){
//           // Make stick to top
//           navbar.removeClass('pos-absolute').addClass('pos-fixed');
//           // TODO, uncomment to make sidenave sticky again
//           // // Make sidenav sticky
//           // // sideNav.removeClass('pos-absolute').addClass('pos-fixed');
//           // sideNav.stop().animate({
//           //   top: sideNewTop
//           // // }, { duration: 800, easing: 'easeOutBounce' });
//           // // }, { duration: 800, easing: 'easeOutElastic' });
//           // // }, { duration: 800, easing: 'swing' });
//           // }, { duration: 800, easing: 'easeOutCubic' });
//         } else {
//           // Make stick to orig location
//           navbar.removeClass('pos-fixed').addClass('pos-absolute');
//           // TODO, uncomment to make sidenave sticky again
//           // // Make sidenav sticky
//           // // sideNav.removeClass('pos-fixed').addClass('pos-absolute');
//           // sideNav.offset({top: sideNavTop});
//         };
//       }
//   ;
//   // call on start
//   stickyNav();
//   // also call everytime we scroll
//   windoww.scroll(function(){
//     stickyNav();
//   });
// });
