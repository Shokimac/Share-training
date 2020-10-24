$(function() {
    $('.genreBox__genre--shapeUp').on('click', function () {
        $('.genreBox__genre--shapeUp').css({
            'color': '#000000',
            'background-color': '#ffffff'
        })
        $('.genreBox__genre').css({
            'background-color': '#202020',
            'color': '#ffffff'
        })
        $('.genreBox__genre--metabolic').css({
            'background-color': '#202020',
            'color': '#ffffff'
        })
        $('.formBoxS').css('z-index', '1')
        $('.formBoxK').css('z-index', '0')
        $('.formBoxM').css('z-index', '0')
    })
    $('.genreBox__genre--metabolic').on('click', function () {
        $('.genreBox__genre--metabolic').css({
            'color': '#000000',
            'background-color': '#ffffff'
        })
        $('.genreBox__genre').css({
            'background-color': '#202020',
            'color': '#ffffff'
        })
        $('.genreBox__genre--shapeUp').css({
            'background-color': '#202020',
            'color': '#ffffff'
        })
        $('.formBoxS').css('z-index', '0')
        $('.formBoxK').css('z-index', '0')
        $('.formBoxM').css('z-index', '1')
    })
    $('.genreBox__genre').on('click', function () {
        $('.genreBox__genre').css({
            'color': '#000000',
            'background-color': '#ffffff'
        })
        $('.genreBox__genre--shapeUp').css({
            'background-color': '#202020',
            'color': '#ffffff'
        })
        $('.genreBox__genre--metabolic').css({
            'background-color': '#202020',
            'color': '#ffffff'
        })
        $('.formBoxS').css('z-index', '0')
        $('.formBoxK').css('z-index', '1')
        $('.formBoxM').css('z-index', '0')
    })
})