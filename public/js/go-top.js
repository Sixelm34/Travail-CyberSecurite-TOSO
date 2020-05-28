$(document).ready(function() {
    if ($(".scrollTop").length > 0) {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 100) {
                $('.scrollTop').fadeIn();
            } else {
                $('.scrollTop').fadeOut();
            }
        });
        $('.scrollTop').click(function() {
            $("html, body").animate({scrollTop: 0}, 350);
            return false;
        });
    }
});