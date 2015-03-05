    //= require jquery
    //= require bootstrap-sprockets
    //= require jquery_ujs
    //= require turbolinks
    //= require_tree .


    var ready = function () {
        timeFormatter();
        $('#meetings-table').DataTable();
        timeFormatter();
        $('#comments-table').DataTable();
    };


    $(document).ready(ready);
    $(document).on('page:load', ready);
