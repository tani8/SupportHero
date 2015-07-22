$(document).on('page:change', function(){
// allows the user to only say one date is undoable
// disables other buttons once clicked one time
  $('input[value=Undoable]').on('click', function(event){
    event.preventDefault();
    $('#undoable').remove();
    $('input[type=submit]').prop('disabled', true);
    // $(this).parents('form').submit()
  });
  // allows the user to swap a date with another user
  $('input[value=Swap]').on('click', function(event){
    event.preventDefault();
    $('#swap').remove();
    // user can only swap one date, then the button is disabled
    $('input[type=submit]').prop('disabled', true);
  });

});
