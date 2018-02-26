$( document ).ready(function(){
  // console.log('hammys here');
  $('form#ajax-newsletter-subscribe, form#ajax-request-inspection, form#ajax-franchise-opportunity')
  .on('submit', function(){
    var that = $(this), // this form
        url = that.attr('action'), // where form submits to
        loader = that.find('.loading'), // loading gif
        thanksSection = that.parents('.sections').find('.thanks'), // thanks for submitting form message
        data = that.serialize() // form data
    ;
    // disable submit button until we're done (only re-enable if problem)
    that.find('input[type=submit]').attr('disabled','disabled');
    loader.toggleClass('hidden'); // show loader

    // post data
    $.post(url, data)
    .done(function( data ){
      console.log('Success');
      console.log(data);

      // if successful response
      if (data["success"]) {
        loader.toggleClass('hidden'); // hide loader
        that.toggleClass('hidden'); // hide form
        thanksSection.toggleClass('hidden'); // show thank you message
      };
    }).fail(function( data ){
      console.log('Fail');
      console.log(data);

      // something else must have happened
      var errorMsg = that.find('.error-message'), // place to set error message
          error = (data.responseJSON["error"]) ? data.responseJSON["error"] : 'An unknown error occurred, please try again' // actual error messages to use
      ;

      that.find('input[type=submit]').removeAttr('disabled'); // re-enable submit
      loader.toggleClass('hidden'); // hide loader

      // output error
      errorMsg.html(error) // set error
      .css({'visibility':'visible','opacity':1}) // show error
      .delay(5000) // wait 5 seconds
      .fadeTo(500, 0, function(){ // fade set opacity to 0
        errorMsg.css('visibility','hidden'); // make sure element is hidden
      });
    });
    return false;
  });
});
