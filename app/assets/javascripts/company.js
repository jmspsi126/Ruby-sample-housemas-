// Need to include show/hide logic for articles
//= require shared/show_hide_button

$(document).ready(function(){
  // update which nav item is active based off of anchor tag in url
  var links = $('.company-side-nav__link') // all links in side-nav
      anchorLink = document.location.hash, // the anchor tag in url
      anchorCheck = function(anchor){ // function to update side-nav active link
        // if we passed anchor param in, use that instead
        anchorLink = (typeof anchor !== 'undefined') ? anchor : anchorLink;
        links
        .each(function(){
          var that = $(this); // this link
          // if this link matches the anchorLink
          console.log(that.attr('href'));
          console.log(anchorLink == '');
          if(anchorLink != '' && that.attr('href').indexOf(anchorLink) > -1){
            that.addClass('active') // add class to link
            .parent('li').addClass('active'); // add class to parent <li>
          } else {
            that.removeClass('active') // remove class from link
            .parent('li').removeClass('active'); // remove class from parent <li>
          };
        });
      };
  ;
  // call once page loads
  anchorCheck();
  // whenever a link is clicked, update active
  links
  .each(function(){
    var that = $(this), // this link
        link = that.attr('href') // href of link
    ;
    that
    .on('click',function(){ // once clicked
      // document.location.hash takes too long to update after we click on link
      // so let's pass the value in ourselves
      anchorCheck(link);
    });
  });
});
