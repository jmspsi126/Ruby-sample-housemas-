// logic used here when multi zee widget loaded: /views/_shared/widget/_owner_multiple.html.erb
var zeeList = $('#zee-list').children(), // section of multi-zees to choose from
    resetWidgetRequestInspectionLink = function(){
      var currentPage = window.location.pathname, // so we can let endpoint know what page user is on
          topNavLink = $('li#request-inspection--top-nav'), // request inspection link in top nave
          footerLink = $('span#request-inspection--footer'), // request inspection link in footer
          widgetRequestLink = $('#request-inspection--multi-zee'), // request inspection link button
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
          widgetRequestLink.html(response['multi_widget_link']);

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
    setZeeSide = function(r,setUnset){
      // set default param value
      setUnset = typeof setUnset !== 'undefined' ? setUnset : 'set';

      var headerMulti = $('#header-multiple'), // header to show when we see multiple zees
          headerChosen = $('#header-chosen'), // header to show once a zee is selected
          zeeProfiles = $('#zee-profiles'), // list of multiple zee profiles
          chosenZeeProfile = $('#chosen-zee-profile'), // the profile of our selected zee
          chosenZeeContact = $('#chosen-zee-contact'), // contact info for our selected zee
          licenses = $('.owner-license') // licenses section
      ;
      // let's update zee info then show it, and hide multi zees
      if(setUnset == 'set'){
        var ownedByName = $('#chosen-zee-profile .owner-profile-info__name'), // owner display name
            ownedByImg = $('#chosen-zee-profile .owner-profile-info__img'), // owner image
            phone = $('.owner-contact__phone--link'), // phone
            email = $('.owner-contact__email--link'), // email
            address1 = $('.owner-contact__address1'), // address line 1
            address2 = $('.owner-contact__address2'), // address line 2
            license = $('.owner-license-info'), // license info section (list of licenses)
            r = JSON.parse(r) // convert string to json object
        ;
        ownedByName.html(r['display_name'].replace(' ','<br />'));
        phone.attr('href','tel:' + r['display_phone']).html(r['display_phone']);
        email.attr('href','mailto:' + r['display_email']).html(r['display_email']);
        // if address info present, un-hide and set info
        if (r['display_address_line_1'] !== null && r['display_address_line_2'] !== null) {
          address1.find('.address').html((r['display_address_line_1']));
          address1.removeClass('hidden');
          address2.find('.address').html((r['display_address_line_2']));
          address2.removeClass('hidden');
        } else {
          address1.addClass('hidden');
          address2.addClass('hidden');
        };
        // if licenses exist, populate them and show
        if (r['licenses'].length >= 1) {
          // make sure licenses is empty first
          license.empty();
          // add for each license
          for(var i = 0;r['licenses'].length > i;i++){
            license.append('' +
              '<p class="owner-license-info__name">' +
                r["licenses"][i].name +
              '</p>'
            );
          };
          // show licenses
          licenses.removeClass('hidden');
        } else {
          // hide licenses
          licenses.addClass('hidden');
        };
      } else {
        // hide licenses
        licenses.addClass('hidden');
      };
      // reset widget, top nav and footer request inspection links
      resetWidgetRequestInspectionLink();

      // show or hide the correct sections
      headerMulti.toggleClass('hidden');
      headerChosen.toggleClass('hidden');
      chosenZeeContact.toggleClass('hidden');
      chosenZeeProfile.toggleClass('hidden');
      zeeProfiles.toggleClass('hidden');
    }
;
// for each zee in area
zeeList
.each(function(){
  var that = $(this),
      index = zeeList.index( that )
  ;
  that
  .on('click',function(e){ // once clicked
    e.preventDefault(); // prevent default link action
    // set the selected zee in session
    $.post("/geo_owner_chosen", { selected: index })
    .done(function( data ){
      // console.log('Done setting selected zee');
      // console.log(data);
    });
    setZeeSide(that.attr('data-zee-info')); // set info for selected zee
  });
});
// "back" button for selected zee
$('a#show-multi-zees')
.on('click',function(e){
  var that = $(this);
  e.preventDefault(); // prevent default link action
  setZeeSide({},'unset'); // hide zee info and show all zees in area
});
