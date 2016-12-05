 // Place all the behaviors and hooks related to the matching controller here.
 // All this logic will automatically be available in application.js.
 // You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function(){
  $('#topic_search').on('change', function(e){
    e.preventDefault();
    var optionText = $('#topic_search option:selected').text();
    var url = '/dashboard?topic_name=' + optionText;
    window.location = url
  });
});

function deleteTopic() {
  swal({
    title: "Are you sure?",
    text: "Are you sure that you want to delete this topic?",
    type: "warning",
    showCancelButton: true,
    closeOnConfirm: false,
    confirmButtonText: "Yes, delete it!",
    confirmButtonColor: "#ec6c62"
  }, function() {
    var deleteTopicName = $('#topic_search option:selected').text();
    var url = '/topics/' + deleteTopicName;
    $.ajax({
      url: url,
      type: 'DELETE'
    });
  });
}
