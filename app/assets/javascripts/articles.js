// Need to include show/hide logic for articles
//= require shared/show_hide_button

$( document ).ready(function(){
  // Search articles
  // Input side button to show/hide filters section
  $('#search-articles-filter')
  .click(function(e){
    e.preventDefault();
    $('#articles-filter').toggleClass('hidden'); // show/hide filters
  });

  // show/hide articles based on searched text
  var articleItems = $('section.article-items .article-item'), // array of all articles
      search = $('input#search-articles'), // search input
      checkedBoxes = $('div.keywords input[type=checkbox]:checked') // keywords selected
  ;
  search
  .keyup(function(){
    var that = $(this), // this input
        showHideBtn = $('.show-hide-button') // the show/hide button when too many articles
    ;
    // console.log(search.val());

    // need to make sure show/hide button logic isn't screwed up when we search
    if (search.val() === ''){
      if (checkedBoxes.length == 0){
        showHideBtn.removeClass('hidden');
      };
    } else {
      showHideBtn.addClass('hidden');
    };

    articleItems
    .each(function(){
      var a = $(this), // This article block
          title = a.find('.searchable .article-title'), // Content for this block
          content = a.find('.searchable .article-content'), // Content for this block
          keywords = content.attr('data-content-keywords'), // Keywords for this block
          desc = content.html().toLowerCase() + ' ' + title.html().toLowerCase() // all text associated with block
      ;

      // if the article has a match with the search
      if (desc.indexOf(search.val()) >= 0){
        a.removeClass('hidden').addClass('show'); // Show if search string found
      } else {
        a.removeClass('show').addClass('hidden'); // Hide if not found
      };

      // if nothing in search and no checked keywords, re-apply show/hide button logic
      if (search.val() === '' && checkedBoxes.length == 0){
        // articles hidden and shown with button have toggle class
        if (that.hasClass('toggle')){
          that.removeClass('show').addClass('hidden'); // Make sure hidden when done searching
        };
      };
    });
  });
  // when document finishes loading, and if url has search query,
  // trigger keyup as the user clicked "read more" from services
  if(location.search.indexOf('?s=') > -1 || location.search.indexOf('&s=') > -1){
    search.trigger('keyup');
  };

  // show/hide (and allow block to be searchable) based on checkbox checked
  $('div.keywords input[type=checkbox]')
  .each(function(){
    $(this)
    .click(function(){
      // whenever any gets checked, grab all boxes that are checked
      // and only show articles
      var showHideBtn = $('.show-hide-button') // the show/hide button when too many articles
          keywords = [] // empty array to place matches in
      ;
      // whenever a keyword is clicked, we need to reset this value
      checkedBoxes = $('div.keywords input[type=checkbox]:checked'); // keywords selected
      // Loop through each checked box, add value to keywords array
      checkedBoxes.each(function(){
        keywords.push($(this).val().toLowerCase());
      });

      // need to make sure show/hide button logic isn't screwed up when we search
      if (checkedBoxes.length > 0){
        showHideBtn.addClass('hidden');
      } else {
        if (search.val() === ''){
          showHideBtn.removeClass('hidden');
        };
      };

      articleItems
      .each(function(){
        var that = $(this), // This article block
            content = that.find('.searchable .article-content'), // Content for this block
            blockKeywords = content.attr('data-content-keywords').split(','), // Keywords for this block
            matches = 0 // number of keyword matches found in block
        ;
        for(var i = 0; i < blockKeywords.length; i++){
          // for all keywords found in this block, increment value
          if ($.inArray($.trim(blockKeywords[i].toLowerCase()), keywords) >= 0){
            matches++; // increment matches found
          }
        };
        // if block has all keywords that have been clicked, show it
        if (matches == keywords.length) {
          // add searchable class and show
          // depending if we've already started a search, add onto search instead of override
          if (search.val() === ''){
            // search not started, let's go ahead and show all matching
            that.addClass('searchable').addClass('show').removeClass('hidden');
          } else {
            // search already started, don't reshow what's already been hidden
            that.addClass('searchable');
          };
        } else {
          // remove searchable class and hide
          that.removeClass('searchable').addClass('hidden').removeClass('show');
        };

        // if nothing in search and no checked keywords, re-apply show/hide button logic
        if (search.val() === '' && checkedBoxes.length == 0){
          // articles hidden and shown with button have toggle class
          if (that.hasClass('toggle')){
            that.removeClass('show').addClass('hidden'); // Make sure hidden when done searching
          };
        };
      });
    });
  });
});
