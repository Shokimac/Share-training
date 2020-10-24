$(function() {
    $('.genreBox__genre--shapeUp').on('click', function () {
        $('.formBoxS').css('z-index', '1')
        $('.formBoxK').css('z-index', '0')
        $('.formBoxM').css('z-index', '0')
    })
    $('.genreBox__genre--metabolic').on('click', function () {
        $('.formBoxS').css('z-index', '0')
        $('.formBoxK').css('z-index', '0')
        $('.formBoxM').css('z-index', '1')
    })
    $('.genreBox__genre').on('click', function () {
        $('.formBoxS').css('z-index', '0')
        $('.formBoxK').css('z-index', '1')
        $('.formBoxM').css('z-index', '0')
    })
})