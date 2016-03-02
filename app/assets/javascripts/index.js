$(document).ready(function() {

  $("#modal_show").on('click', function() {
    $('.ui.basic.modal')
    .modal('setting', 'transition', 'scale')
    // .modal({blurring: true})
    .modal('show');
  })
})
