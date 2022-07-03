<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="{{ asset('assets/images/favicon/lungo.png') }}" type="image/png">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!--=============== REMIXICONS ===============-->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href="{{ asset('./vendor/depan/assets/css/swiper-bundle.min.css') }}">

    <!--=============== CSS ===============-->
    <script src="https://kit.fontawesome.com/ad6395cc9e.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="{{ asset('./vendor/depan/assets/css/styles.css') }}">

    <title>Lungo.</title>
</head>

<body>
    <header class="header" id="header">
        @include('FrontEnd.navbar')
    </header>

    <main class="main">
        @yield('content')
    </main>

    <!--==================== SPONSORS ====================-->
    <section class="sponsor section">
        <div class="sponsor__container container grid">
            @if (!$setting->sponsor1 == null)
                <div class="sponsor__content">
                    <img src="{{ asset('images/setting') }}/{{ $setting->sponsor1 }}" alt="" class="sponsor__img">
                </div>
            @endif
            @if (!$setting->sponsor2 == null)
                <div class="sponsor__content">
                    <img src="{{ asset('images/setting') }}/{{ $setting->sponsor2 }}" alt="" class="sponsor__img">
                </div>
            @endif
            @if (!$setting->sponsor3 == null)
                <div class="sponsor__content">
                    <img src="{{ asset('images/setting') }}/{{ $setting->sponsor3 }}" alt="" class="sponsor__img">
                </div>
            @endif
            @if (!$setting->sponsor4 == null)
                <div class="sponsor__content">
                    <img src="{{ asset('images/setting') }}/{{ $setting->sponsor4 }}" alt=""
                        class="sponsor__img">
                </div>
            @endif
        </div>
        <!--==================== FOOTER ====================-->
        <footer class="footer section">
            @include('FrontEnd.footer')
        </footer>

        <!--========== SCROLL UP ==========-->
        <a href="#" class="scrollup" id="scroll-up">
            <i class="ri-arrow-up-line scrollup__icon"></i>
        </a>

        <!--=============== SCROLL REVEAL===============-->
        <script src="{{ asset('./vendor/depan/assets/js/scrollreveal.min.js') }}"></script>

        <!--=============== SWIPER JS ===============-->
        <script src="{{ asset('./vendor/depan/assets/js/swiper-bundle.min.js') }}"></script>

        <!--=============== MAIN JS ===============-->
        <script src="{{ asset('./vendor/depan/assets/js/main.js') }}"></script>
</body>

</html>
