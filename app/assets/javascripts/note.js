$(document).ready(function(){
    $('.note').click(function(){
        $(this).children('.note-body, .attachments').toggle();
    });
});    