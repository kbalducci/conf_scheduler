// timeFormatter = ->
//   $('time').each (index) ->
//     { console.log($(this).text()
//       formatted = moment(new Date($(this).text())).fromNow()
//       console.log formatted
//       $(this).html formatted
//       return
//     return


var timeFormatter = function () {

    $('time').each(function (index) { console.log($(this).text());
        var formatted = moment( new Date($(this).text()) ).fromNow();
        console.log(formatted);
       $(this).html(formatted);
    });

};
