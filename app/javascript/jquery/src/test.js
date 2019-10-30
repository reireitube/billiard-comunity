var $ = require("jquery");
$(document).on('turbolinks:load', function(){

    $("#image").hide().fadeIn(1000);
    $("#Nationwide").hide().fadeIn();
    $("#kenn_list li").hide().fadeIn();
   
    //いまいちスライドリンク上手くいってない
    $("a[href^=#]").click(function(){
        var speed = 400;
        var href = $(this).attr("href");
        var target = $(href == "#" || href == "" ? "html" : href);
        var position = target.offset().top;
        $("body,html").animate({scrollTop:position}, speed, "swing");
        return false;
    });
    // 隠れフィールド
});

