/**
 * @function
 * autocall
 *//* 
(function () {
    navBarControler();
    carouselAnimated();
})(); */
    
/**
 * @function
 * define the navigation-bar behavior on scroll
 */
function navBarControler() {
    /**
     * @var
     * Query of header
     */
    let header = document.querySelector('header');

    /**
     * @var
     * Query of nav in header
     */
    let nav = header.querySelector('nav');

    /**
     * @var
     * If the nav is fixed or not
     */
    let fixedNav = false;

    /**
     * @event EventListener on the scroll of the Window
     */
    document.addEventListener("scroll", function (event) {

        if (window.innerWidth > 500) {
            if (window.scrollY > 50 && fixedNav == false) {
                fixedNav = true; // set the bool for optimisation
                nav.classList.remove("header_nav_init"); // remove the 'nav_init' class
                nav.classList.add("header_nav_fixed"); // add the 'nav_fixed' class

                //console.log("window.scrollY > 350");
            } else if (window.scrollY < 50 && fixedNav == true) {
                fixedNav = false; // set the bool for optimisation
                nav.classList.remove("header_nav_fixed"); // remove the 'nav_fixed' class
                nav.classList.add("header_nav_init"); // add the 'nav_init' class

                //console.log("window.scrollY < 50 && fixedNav");
            }
        } else {
            if (window.scrollY > 114 && fixedNav == false) {
                fixedNav = true; // set the bool for optimisation
                nav.classList.remove("header_nav_init"); // remove the 'nav_init' class
                nav.classList.add("header_nav_fixed"); // add the 'nav_fixed' class

                //console.log("window.scrollY > 350");
            } else if (window.scrollY < 114 && fixedNav == true) {
                fixedNav = false; // set the bool for optimisation
                nav.classList.remove("header_nav_fixed"); // remove the 'nav_fixed' class
                nav.classList.add("header_nav_init"); // add the 'nav_init' class

                //console.log("window.scrollY < 50 && fixedNav");
            }
        }

    });
}

/**
 * @function
 * define the animation jumbotron-carousel behavior
 */
function carouselAnimated() {
    let carousel = document.querySelector("#jumbotron_carousel");
    let animationIndex = 0;

    var x = setInterval(function () {

        carousel.classList.remove("jumbotron_carousel_animation_" + animationIndex); // remove the 'nav_fixed' class

        animationIndex++;
        if (animationIndex > 3) {
            animationIndex = 1;
        }

        carousel.classList.add("jumbotron_carousel_animation_" + animationIndex); // add the 'nav_init' class
    }, 4000);
}