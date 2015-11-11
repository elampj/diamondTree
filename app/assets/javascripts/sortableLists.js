var ready, set_positions;

set_positions = function(){
    // loop through and give each task a data-pos
    // attribute that holds its position in the DOM
    $('.sortable-row').each(function(i){
        $(this).attr("data-pos",i+1);
    });

    //$('#sort-button').removeClass('disable-anchor');
    //ready();
}

update_list_order = function(){
    

    //$( '#sort-button' ).click(function (event) {

        updated_order = []
        
        $( '.sortable-row' ).each(function( index ) {

            updated_order.push({ id: $(this).attr("id"), position: $( this ).attr("data-pos") });
            //console.log( index + ": " + $( this ).text() );
            //console.log(updated_order[index]);
            event.preventDefault(); // Prevent link from following its href
        });

        $.ajax({
            type: "PUT",
            url: '/post_sections/sort',
            data: { order: updated_order }
        });

        //$(this).prev().fadeTo(100, 0.1).fadeTo(200, 1.0);

        //$('#sort-button').addClass('disable-anchor');

   // });
}

$( document ).ready(function() {

    $( '.up-priority' ).click(function (event) {
        swapRow = $(this).closest('tr');
        swapRow.insertBefore( swapRow.prev() );
        set_positions(); 
        swapRow.fadeTo(100, 0.1).fadeTo(200, 1.0);
    });

    $( '.down-priority' ).click(function (event) {
        swapRow = $(this).closest('tr');
        swapRow.insertAfter( swapRow.next() );
        set_positions();
        swapRow.fadeTo(100, 0.1).fadeTo(200, 1.0);
    });

    $( '#submit-btn' ).click(function (event) {
        event.preventDefault();
        update_list_order();
        $('form').submit();
    });
 });   


$( document ).ready(set_positions);
/**
 * if using turbolinks
 */
//$(document).on('page:load', ready);

// $( document ).ready(function() {
//     // call set_positions function
//     set_positions();

//   $('.sortable').sortable();

//   // after the order changes
//     $('.sortable').sortable().bind('sortupdate', function(e, ui) {
//         // array to store new order
//         updated_order = []
//         // set the updated positions
//         set_positions();

//         // populate the updated_order array with the new task positions
//         $('.panel-default').each(function(i){
//             updated_order.push({ id: $(this).data("id"), position: i+1 });
//         });

//         // send the updated order via ajax
//         $.ajax({
//             type: "PUT",
//             url: '/post_sections/sort',
//             data: { order: updated_order }
//         });
//     });
// });

// set_positions = function(){
//     // loop through and give each task a data-pos
//     // attribute that holds its position in the DOM
//     $('.panel-default').each(function(i){
//         $(this).attr("data-pos",i+1);
//     });
// }