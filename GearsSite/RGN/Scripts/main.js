
$(window).on("scroll", function () {
    var scrollPos = $(window).scrollTop();
    if (scrollPos <= 100) {
        $('.navbar').addClass('top-of-page');
    } else {
        $('.navbar').removeClass('top-of-page');
    }
});