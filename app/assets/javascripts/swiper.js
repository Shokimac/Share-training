$(document.addEventListener('DOMContentLoaded', function () {
    const hero = new HeroSlider('.swiper-container');
    hero.start();
}));

class HeroSlider {
    constructor(el) {
        this.el = el;
        this.swiper = this._initSwiper();
    }

    _initSwiper() {
        return this.swiper = new Swiper(this.el, {
            // Optional parameters
            // direction: 'vertical',
            loop: true,
            effect: 'coverflow',
            grabCursor: true,
            centeredSlides: true,
            slidesPerView: 1,
            speed: 1000,
            // breakpoints: {
            //     1024: {
            //         slidesPerView: 2,
            //     }
            // },
            
            // If we need pagination
            // pagination: {
            //     el: '.swiper-pagination',
            // },
    
            // // Navigation arrows
            // navigation: {
            //     nextEl: '.swiper-button-next',
            //     prevEl: '.swiper-button-prev',
            // },
    
            // // And if we need scrollbar
            // scrollbar: {
            //     el: '.swiper-scrollbar',
            // },
        })
    }

    start() {
        this.swiper.params.autoplay = {
            delay: 4000,
            disableOnInteraction: false,
        }
        this.swiper.autoplay.start();
    }
}
