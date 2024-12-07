<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home - Indian Culture</title>
    <!-- Linking Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
    <!-- Linking Swiper CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <style>
        /* Google Fonts Link */
        @import url('https://fonts.googleapis.com/css2?family=Miniver&family=Poppins:wght@200;300;400;500;600;700&display=swap');

        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        :root {
            /* Colors */
            --white-color: #ffffff; /* White */
            --dark-color: #000000; /* Black */
            --primary-color: #003366; /* Dark Blue */
            --secondary-color: #3399ff; /* Light Blue */
            --light-pink-color: #faf4f5; /* Light Pink */
            --medium-gray-color: #ccc;

            /* Font size */
            --font-size-s: 0.9rem;
            --font-size-n: 1rem;
            --font-size-m: 1.12rem;
            --font-size-l: 1.5rem;
            --font-size-xl: 2rem;
            --font-size-xxl: 2.3rem;

            /* Font weight */
            --font-weight-normal: 400;
            --font-weight-medium: 500;
            --font-weight-semibold: 600;
            --font-weight-bold: 700;

            /* Border radius */
            --border-radius-s: 8px;
            --border-radius-m: 30px;
            --border-radius-circle: 50%;

            /* Site max width */
            --site-max-width: 1300px;
        }

        html {
            scroll-behavior: smooth;
        }

        /* Stylings for whole site */
        ul {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        button {
            cursor: pointer;
            background: none;
            border: none;
        }

        img {
            width: 100%;
        }

        :where(section, footer) .section-content {
            margin: 0 auto;
            padding: 0 20px;
            max-width: var(--site-max-width);
        }

        section .section-title {
            text-align: center;
            padding: 60px 0 100px;
            text-transform: uppercase;
            font-size: var(--font-size-xl);
        }

        section .section-title::after {
            content: "";
            width: 80px;
            height: 5px;
            display: block;
            margin: 10px auto 0;
            background: var(--secondary-color);
            border-radius: var(--border-radius-s);
        }

        /* Hero section styling */
        .hero-section {
            min-height: 100vh;
            background: var(--dark-color);
        }

        .hero-section .section-content {
            display: flex;
            padding-top: 40px;
            align-items: center;
            min-height: 100vh;
            justify-content: space-between;
        }

        .hero-section .hero-details {
            color: var(--white-color);
        }

        .hero-section .hero-details .title {
            font-size: var(--font-size-xxl);
            color: var(--secondary-color);
            font-family: "Miniver", sans-serif;
        }

        .hero-section .hero-details .subtitle {
            margin-top: 8px;
            max-width: 70%;
            font-size: var(--font-size-xl);
            font-weight: var(--font-weight-semibold);
        }

        .hero-section .hero-details .description {
            max-width: 70%;
            margin: 24px 0 40px;
            font-size: var(--font-size-m);
        }

        .hero-section .hero-details .buttons {
            display: flex;
            gap: 23px;
        }

        .hero-section .hero-details .button {
            padding: 10px 26px;
            display: block;
            border: 2px solid transparent;
            border-radius: var(--border-radius -m);
            background: var(--secondary-color);
            color: var(--dark-color);
            font-size: var(--font-size-m);
            font-weight: var(--font-weight-medium);
            transition: 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .hero-section .hero-details .button:hover,
        .hero-section .hero-details .button.contact-us {
            color: var(--white-color);
            border-color: var(--white-color);
            background: transparent;
        }

        .hero-section .hero-details .button.contact-us:hover {
            color: var(--dark-color);
            background: var(--secondary-color);
            border-color: var(--secondary-color);
        }

        .hero-section .hero-image-wrapper {
            max-width: 500px;
            margin-right: 30px;
        }

        /* About section styling */
        .about-section {
            padding: 120px 0;
            background: var(--light-pink-color);
        }

        .about-section .section-content {
            display: flex;
            gap: 50px;
            align-items: center;
            justify-content: space-between;
        }

        .about-section .about-image-wrapper .about-image {
            height: auto; /* Allow the height to adjust automatically */
            width: 100%; /* Make the image take the full width of its container */
            max-width: 400px; /* Limit the maximum width if needed */
            object-fit: cover; /* Cover the area while maintaining aspect ratio */
            border-radius: var(--border-radius-circle); /* Keep the border radius */
        }

        .about-section .about-details {
            max-width: 50%;
        }

        .about-section .about-details .section-title {
            padding: 0;
        }

        .about-section .about-details .text {
            line-height: 30px;
            margin: 50px 0 30px;
            text-align: center;
            font-size: var(--font-size-m);
        }

        .about-section .social-link-list {
            display: flex;
            gap: 25px;
            justify-content: center;
        }

        .about-section .social-link-list .social-link {
            color: var(--dark-color);
            font-size: var(--font-size-l);
            transition: 0.2s ease;
        }

        .about-section .social-link-list .social-link:hover {
            color: var(--secondary-color);
        }

        /* Monuments section styling */
        .menu-section {
            color: var(--white-color);
            background: var(--dark-color);
            padding: 50px 0 100px;
        }

        .menu-section .menu-list {
            display: flex;
            gap: 110px;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
        }

        .menu-section .menu-list .menu-item {
            display: flex;
            text-align: center;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
            width: calc(100% / 3 - 110px);
        }

        .menu-section .menu-list .menu-item .menu-image {
            width: 83%;
            aspect-ratio: 1;
            margin-bottom: 15px;
            object-fit: contain;
        }

        .menu-section .menu-list .menu-item .name {
            margin: 12px 0;
            font-size: var(--font-size-l);
            font-weight: var(--font-weight-semibold);
        }

        .menu-section .menu-list .menu-item .text {
            font-size: var(--font-size-m);
        }

        /* Cuisines section styling */
        .gallery-section {
            padding: 50px 0 100px;
        }

        .gallery-section .gallery-list {
            display: flex;
            gap: 32px;
            flex-wrap: wrap;
        }

        .gallery-section .gallery-list .gallery-item {
            overflow: hidden;
            border-radius: var(--border-radius-s);
            width: calc(100% / 3 - 32px);
        }

        .gallery-section .gallery-item .gallery-image {
            width: 100%;
            height: 100%;
            cursor: zoom-in;
            transition: 0.3s ease;
        }

        .gallery-section .gallery-item:hover .gallery-image {
            transform: scale(1.3);
        }

        /* Responsive media query code for max width 1024px */
        @media screen and (max-width: 1024px) {
            .menu-section .menu-list {
                gap: 60px;
            }

            .menu-section .menu-list .menu-item ```jsp
            {
                width: calc(100% / 3 - 60px);
            }
        }

        /* Responsive media query code for max width 900px */
        @media screen and (max-width: 900px) {
            :root {
                --font-size-m: 1rem;
                --font-size-l: 1.3rem;
                --font-size-xl: 1.5rem;
                --font-size-xxl: 1.8rem;
            }

            body.show-mobile-menu {
                overflow: hidden;
            }

            body.show-mobile-menu header::before {
                content: "";
                position: fixed;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                backdrop-filter: blur(5px);
                background: rgba(0, 0, 0, 0.2);
            }

            .navbar :is(#menu-open-button, #menu-close-button) {
                font-size: var(--font-size-l);
                display: block;
            }

            .navbar :is(#menu-open-button, #menu-close-button):hover {
                color: var(--secondary-color) !important;
            }

            .navbar #menu-open-button {
                color: #fff;
            }

            .navbar .nav-menu #menu-close-button {
                position: absolute;
                right: 30px;
                top: 30px;
            }

            .navbar .nav-menu {
                display: block;
                background: #fff;
                position: fixed;
                top: 0;
                left: -300px;
                height: 100%;
                width: 300px;
                display: flex;
                align-items: center;
                flex-direction: column;
                padding-top: 100px;
                transition: left 0.2s ease;
            }

            body.show-mobile-menu .nav-menu {
                left: 0;
            }

            .navbar .nav-menu .nav-link {
                display: block;
                margin-top: 17px;
                padding: 10px 22px;
                color: var(--dark-color);
                font-size: var(--font-size-l);
            }

            .hero-section .section-content {
                text-align: center;
                gap: 50px;
                padding: 30px 20px 20px;
                justify-content: center;
                flex-direction: column-reverse;
            }

            .hero-section .hero-details :is(.subtitle, .description),
            .about-section .about-details,
            .contact-section .contact-form {
                max-width: 100%;
            }

            .hero-section .hero-details .buttons {
                justify-content: center;
            }

            .hero-section .hero-image-wrapper {
                max-width: 270px;
                margin-right: 0;
            }

            .about-section .section-content {
                gap: 70px;
                flex-direction: column-reverse;
            }

            .about-section .about-image-wrapper .about-image {
                width: 100%;
                height: 100%;
                aspect-ratio: 1;
                max-width: 250px;
            }

            .menu-section .menu-list {
                gap: 30px;
            }

            .menu-section .menu-list .menu-item {
                width: calc(100% / 2 - 30px);
            }

            .menu-section .menu-list .menu-item .menu-image {
                max-width: 200px;
            }

            .gallery-section .gallery-list {
                gap: 30px;
            }

            .gallery-section .gallery-list .gallery-item {
                width: calc(100% / 2 - 30px);
            }

            .contact-section .section-content {
                align-items: center;
                flex-direction: column-reverse;
            }
        }

        /* Responsive media query code for max width 640px */
        @media screen and (max-width: 640px) {
            .menu-section .menu-list .menu-item,
            .gallery-section .gallery-list .gallery-item {
                width: 100%;
            }

            .menu-section .menu-list {
                gap: 60px;
            }

            .testimonials-section .slider-wrapper {
                margin: 0 0 30px;
            }

            .testimonials-section .swiper-slide-button {
                display: none;
            }

            .footer-section .section-content {
                flex-direction: column;
                gap: 20px;
            }
        }
    </style>
</head>
<body>

    <%@ include file="mainnavbar.jsp" %>

    <main>
        <!-- Hero section -->
        <section class="hero-section">
            <div class="section-content">
                <div class="hero-details">
                    <h2 class="title">Indian Heritage Explorer</h2>
                    <h3 class="subtitle">Dive into the richness of Indian culture and history</h3>
                    <p class="description">Explore famous monuments, historical sites, and immerse yourself in the heritage of India through virtual tours and interactive features.</p>
                </div>
                <div class="hero-image-wrapper">
                    <img src="images/logo.png" alt="Coffee" class="hero-image" />
                </div>
            </div>
        </section>

        <!-- About section -->
        <section class="about-section" id="about">
            <div class="section-content">
                <div class="about-image-wrapper">
                    <img src="images/aboutus.png" alt="About" class="about-image" />
                </div>
                <div class="about-details">
                    <h2 class="section-title">About Us</h2>
                    <p class="text">At Coffee House in Berndorf, Germany, we pride ourselves on being a go-to destination for coffee lovers and conversation seekers alike. We're dedicated to providing an exceptional coffee experience in a cozy and inviting atmosphere, where guests can relax, unwind, and enjoy their time in comfort.</p>
                    <div class="social-link-list">
                        <a href="#" class="social-link"><i class="fa-brands fa-facebook"></i></a>
                        <a href="#" class="social-link"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fa-brands fa-x-twitter"></i></a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Monuments section -->
        <section class="menu-section" id="monuments">
            <h2 class="section-title">Our Monuments</h2>
            <div class="section-content">
                <ul class="menu-list">
                    <li class="menu-item">
                        <img src="images/monument-1.png" alt="Taj Mahal" class="menu-image" />
                        <div class="menu-details">
                            <h3 class="name">Taj Mahal</h3>
                            <p class="text">The Taj Mahal is an ivory-white marble mausoleum on the south bank of the Yamuna river in the Indian city of Agra.</p>
                        </div>
                    </li>
                    <li class="menu-item">
                        <img src="images/monument-2.png" alt="Red Fort" class="menu-image" />
                        <div class="menu-details">
                            <h3 class="name">Red Fort</h3>
                            <p class="text">The Red Fort Complex was built as the palace fort of Shahjahanabad – the new capital of the fifth Mughal Emperor of India, Shah Jahan.</p>
                        </div>
                    </li>
                    <li class="menu-item">
                        <img src="images/monument-3.png" alt="Charminar" class="menu-image" />
                        <div class="menu-details">
                            <h3 class="name">Charminar</h3>
                            <p class="text">Charminar is one of the oldest monuments in India, and it is situated in Hyderabad, Telangana. Charminar was built in 1591 and is a symbol of Hyderabad.</p>
                        </div>
                    </li>
                    <li class="menu-item">
                        <img src="images/monument-4.png" alt="Adiyogi Shiva" class="menu-image" />
                        <div class="menu-details">
                            <h3 class="name">Adiyogi Shiva</h3>
                            <p class="text">The Adiyogi Shiva bust is a 34-metre tall (112 ft), 45-metre long (147 ft) and 25-metre wide (82 ft) steel bust of Shiva with Thirunamam at Coimbatore, Tamil Nadu.</p>
                        </div>
                    </li>
                    <li class="menu-item">
                        <img src="images/monument-5.png" alt="Gateway Of India" class="menu-image" />
                        <div class="menu-details">
                            <h3 class="name">Gateway Of India</h3>
                            <p class="text">The Gateway of India is an arch monument built during the 20th century in Bombay, India. The monument has also been referred to as the Taj Mahal of Mumbai.</p>
                        </div>
                    </li>
                    <li class="menu-item">
                        <img src="images/monument-6.png" alt="Mysore Palace" class="menu-image" />
                        <div class="menu-details">
                            <h3 class="name">Mysore Palace</h3>
 <p class="text">Mysuru palace was originally built in wood and was destroyed once by lightning (in 1638 AD), once by Tipu Sultan (in 1739 AD) and once again by fire in 1897 AD.</p>
                        </div>
                    </li>
                </ul>
            </div>
        </section>

        <!-- Cuisines section -->
        <section class="gallery-section" id="cuisines">
            <h2 class="section-title">Cuisines</h2>
            <div class="section-content">
                <ul class="gallery-list">
                    <li class="gallery-item">
                        <img src="images/cuisines1.png" alt="Cuisine Image" class="gallery-image" />
                    </li>
                    <li class="gallery-item">
                        <img src="images/cuisines2.png" alt="Cuisine Image" class="gallery-image" />
                    </li>
                    <li class="gallery-item">
                        <img src="images/cuisines3.png" alt="Cuisine Image" class="gallery-image" />
                    </li>
                    <li class="gallery-item">
                        <img src="images/cuisines4.png" alt="Cuisine Image" class="gallery-image" />
                    </li>
                    <li class="gallery-item">
                        <img src="images/cuisines5.png" alt="Cuisine Image" class="gallery-image" />
                    </li>
                    <li class="gallery-item">
                        <img src="images/cuisines6.png" alt="Cuisine Image" class="gallery-image" />
                    </li>
                </ul>
            </div>
        </section>
    </main>

    <!-- Linking Swiper script -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

    <!-- Custom script -->
    <script>
        const navbarLinks = document.querySelectorAll(".nav-menu .nav-link");
        const menuOpenButton = document.querySelector("#menu-open-button");
        const menuCloseButton = document.querySelector("#menu-close-button");

        menuOpenButton.addEventListener("click", () => {
            document.body.classList.toggle("show-mobile-menu");
        });

        menuCloseButton.addEventListener("click", () => menuOpenButton.click());

        navbarLinks.forEach((link) => {
            link.addEventListener("click", () => menuOpenButton.click());
        });

        /* Initializing Swiper */
        let swiper = new Swiper(".slider-wrapper", {
            loop: true,
            grabCursor: true,
            spaceBetween: 25,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
                dynamicBullets: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            breakpoints: {
                0: {
                    slidesPerView: 1,
                },
                768: {
                    slidesPerView: 2,
                },
                1024: {
                    slidesPerView: 3,
                },
            },
        });
    </script>
</body>
</html>