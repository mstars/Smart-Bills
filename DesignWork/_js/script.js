$('ul.nav li.dropdown').hover(function () {
    $(this).find('.dropdown-menu').stop(true, true).delay(600).fadeIn(500);
}, function () {
    $(this).find('.dropdown-menu').stop(true, true).delay(600).fadeOut(500);
});