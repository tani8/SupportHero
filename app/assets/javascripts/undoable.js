$(document).on('page:change', function(){
// allows the user to only say one date is undoable
// disables other buttons once clicked one time
  $('input[type=submit]').on('click', function(event){
    event.preventDefault();
    $('#undoable').remove();
    $('input[type=submit]').prop('disabled', true);
    // $(this).parents('form').submit()
  });

});