$( document ).ready(function() {
    // call set_positions function
    set_positions();

  $('.sortable').sortable();

  // after the order changes
    $('.sortable').sortable().bind('sortupdate', function(e, ui) {
        // array to store new order
        updated_order = []
        // set the updated positions
        set_positions();

        // populate the updated_order array with the new task positions
        $('.panel-default').each(function(i){
            updated_order.push({ id: $(this).data("id"), position: i+1 });
        });

        // send the updated order via ajax
        $.ajax({
            type: "PUT",
            url: '/post_sections/sort',
            data: { order: updated_order }
        });
    });
});

set_positions = function(){
    // loop through and give each task a data-pos
    // attribute that holds its position in the DOM
    $('.panel-default').each(function(i){
        $(this).attr("data-pos",i+1);
    });
}