<script>
  $( ".expand-button" ).click(function() {

    //$(this).siblings().children().each(function( index ) {
      //$(this).next().children().each(function( index ) {
      var currentId = $(this).attr('id');
      $('.'+currentId).each(function( index ) {   
        if ($( this ).hasClass('hidden'))
        { 
          $( this ).removeClass('hidden');
        $( this ).addClass('expanded');
      }
      else if ($( this ).hasClass('expanded'))
        { 
          $( this ).removeClass('expanded');
        $( this ).addClass('hidden');
      }       

    });

    if ($( this ).hasClass('expand-button'))
    {
      //$( this ).removeClass('expand-button');
      //$( this ).addClass('less-button');
      $( this ).addClass('hidden');
      
    }
    else if ($( this ).hasClass('less-button'))
    {
      $( this ).removeClass('less-button');
      $( this ).addClass('expand-button');
      //$( this ).html('&darr; More');
    }

  });
</script>