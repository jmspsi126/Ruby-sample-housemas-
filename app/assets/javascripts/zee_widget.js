$(function(){
  // Franchisee Side Nav
  var geoBlock = $('#geo_block'),
      triggerApiCall = geoBlock.attr('data-apicall'),
      territoryURL = geoBlock.attr('data-endpoint'),
      resetRequestInspectionLinks = function(){
        var currentPage = window.location.pathname, // so we can let endpoint know what page user is on
            topNavLink = $('li#request-inspection--top-nav'), // request inspection link in top nave
            footerLink = $('span#request-inspection--footer'), // request inspection link in footer
            data = {
              page: currentPage
            }
        ;
        $.ajax({
          url: '/request_inspection_links', // Where to make request
          type: 'GET', // HTTP method: "POST" or "GET"
          // contentType: 'application/javascript',
          data: data, // Object with data to send to the server resource
          dataType: 'json', // Expected return data: xml, html, text, json, script, or jsonp
          //timeout: 5000, // Milliseconds to wait before cancel (evokes error callback)
          cache: false, // Default true... use false to not cache the request
          success: function( response ){
            // console.log( 'SUCCESSFUL RETURN' );
            // console.log(response);
            topNavLink.html(response['top_link']);
            footerLink.html(response['footer_link']);

            // Let's replace top nav and footer request inspection links with returned HTML
          },
          error: function(response){
            // console.log( 'ERROR RETURN' );
            // console.log( response );
          },
         complete: function(){
            // Function always triggered after return
            // console.log( 'AJAX COMPLETE' );
          }
        });
      },
      loadZee = function(city, state, reset){
        var zeeSideNav = $('#owner-widget'),
            zeeLoader = zeeSideNav.find('.loading'),
            zeeContent = zeeSideNav.find('.content'),
            currentPage = window.location.pathname, // so we can let endpoint know what page user is on
            city = (typeof city === 'undefined') ? geoBlock.attr('data-city') : city,
            state = (typeof state === 'undefined') ? geoBlock.attr('data-state') : state,
            data = {
              city: city,
              state: state,
              page: currentPage
            }
        ;
        // only reset session data if user requests it
        if (typeof reset !== 'undefined'){
          data['reset'] = reset;
        }
        zeeContent.toggleClass('hidden');
        zeeLoader.toggleClass('hidden');

        // Housemaster City/State AJAX
        $.ajax({
          url: territoryURL, // Where to make request
          type: 'GET', // HTTP method: "POST" or "GET"
          // contentType: 'application/javascript',
          data: data, // Object with data to send to the server resource
          dataType: 'html', // Expected return data: xml, html, text, json, script, or jsonp
          //timeout: 5000, // Milliseconds to wait before cancel (evokes error callback)
          cache: false, // Default true... use false to not cache the request
          success: function( response ){
            // console.log( 'SUCCESSFUL RETURN' );
            /* var zeeContent = $('#owner-widget .content'); */
            // Let's load the html returned
            zeeContent
            .html(response);
          },
          error: function(response){
            // console.log( 'ERROR RETURN' );
            // console.log( response );
          },
         complete: function(){
            // Function always triggered after return
            // console.log( 'AJAX COMPLETE' );
            zeeLoader.toggleClass('hidden')
            zeeContent.toggleClass('hidden')
            // Trigger sliders in zeeContent
            zeeContent
            .find('.im-a-slider-nav')
            .each(function(){
              $(this).sliderNav();
            });
            // reload top/footer request inspection links
            resetRequestInspectionLinks();
          }
        });
      }
  ;
  $('form#ajax-find-hm-office')
  .on('submit', function(){
    var that = $(this),
        url = that.attr('action'),
        modal = that.attr('data-modal'), // modal to close when complete
        location = that.find('input[type=text][name=location]').val()
    ;
    // console.log('submitted');
    // console.log(location);
    // Validate location string
    $.ajax({
      url: url, // Where to make request
      type: 'GET', // HTTP method: "POST" or "GET"
      data: {
        location: location
      }, // Object with data to send to the server resource
      dataType: 'json', // Expected return data: xml, html, text, json, script, or jsonp
      cache: false, // Default true... use false to not cache the request
      success: function( response ){
        // console.log( 'SUCCESSFUL RETURN' );
        // console.log(response);
        loadZee(response.city, response.state, true);
        // If this was a modal popup, close it
        if (typeof modal !== 'undefined'){
          $('#' + modal).modal('hide');
        };
      },
      error: function(response){
        // console.log( 'ERROR RETURN' );
        // console.log( response );
        // console.log( response.responseJSON.error );
        // Output error
        var errorMsg = that.parent().find('.error-message');
        errorMsg.html(response.responseJSON.error)
        .css({'visibility':'visible','opacity':1}).delay(5000)
        .fadeTo(500, 0, function(){
          errorMsg.css('visibility','hidden');
        });
      },
      complete: function(){
        // Function always triggered after return
        // console.log( 'AJAX COMPLETE' );
      }
    });
    return false;
  });

  // if widget hasn't loaded first time, trigger api call
  if (triggerApiCall == 'yes'){
    // load zee slider content when page loads
    loadZee();
  };
});
