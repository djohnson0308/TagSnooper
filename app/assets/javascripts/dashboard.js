 // Place all the behaviors and hooks related to the matching controller here.
 // All this logic will automatically be available in application.js.
 // You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function(){
  $('#topic_search').on('change', function(e){
    e.preventDefault();
    var optionText = $('#topic_search option:selected').text();
    var url = '/dashboard?topic_name=' + optionText;
    window.location = url
    // $.get({
    //  url: '/topic/hashtags',
    //  data: {topicName: optionText}
  //  });
  });
});
