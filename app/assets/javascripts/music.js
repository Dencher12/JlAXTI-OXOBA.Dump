$(document).ready(function(){
    var audio = document.querySelector('.radio-nevski');
    var button = $('.nevski-play');
    button.click(function(e){
        if(audio.paused) {
            audio.play();
        } else {
            audio.pause();
        }
    });

    button.mouseenter(function(e) {
        button.attr('src', '/assets/music2.png');
    });

    button.mouseleave(function(e) {
        button.attr('src', '/assets/music.png');
    });
});