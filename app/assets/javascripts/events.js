$(document).on('ready page:load',function(){

    console.log("document is ready");
      //Drop down date and time picker

   $(".dropdown-toggle").dropdown(); // to display the drop down menu in the pages

   // Adding group of guests when the + is clicked 

  // send invites mail 
  $('.send_invites'). on('submit', function(event) {
    event.preventDefault();
    var details = [];
    $("input[type=checkbox]:checked").each( function (i, input) { 
      var data = {};
      data.name = $(input).data("name");
      data.email = $(input).data("email");
      details.push( data );
    });
    // console.log( details );

    $.ajax({
      url: window.location.pathname + "/mail",
      data: {
        details: JSON.stringify( details )
      },
      method: "POST",
      success: function (data) {
        console.log( data );
      },
      error: function (data) {
        console.log( data );
      }
    })

  });

});
