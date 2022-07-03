@extends('FrontEnd.main')
@section('content')

    <main class="main">
        <!--==================== HOME ====================-->
        <section class="home" id="home">
            <img src="{{ asset('images/setting') }}/{{ $setting->home1 }}" alt="" class="home__img">
            <!--<a href='https://www.freepik.com/vectors/background'>Background vector created by freepik - www.freepik.com</a>-->

            <div class="home__container container grid">
                <div class="home__data">
                    <span class="home__data-subtitle">Temukan liburan Anda</span>
                    <h1 class="home__data-title">Ayo Liburan<br> <b>Bersama Kami</b></h1>
                    <a href="#discover" class="button">Explore</a>
                    <a href="{{ url('./wisata/wisata-watu-gambir') }}" class="button">Watu Gambir</a>


                </div>

                <div class="home__social">
                    <a href="https://www.facebook.com/" target="_blank" class="home__social-link">
                        <i class="ri-facebook-box-fill"></i>
                    </a>
                    <a href="https://www.instagram.com/" target="_blank" class="home__social-link">
                        <i class="ri-instagram-fill"></i>
                    </a>
                    <a href="https://twitter.com/" target="_blank" class="home__social-link">
                        <i class="ri-twitter-fill"></i>
                    </a>
                </div>
                <?php
                $kegi = App\Models\Kegiatan::where('status', 1)->count();
                ?>
                @if ($kegi > 0)
                    <div class="home__info">
                        <div>
                            <?php
                            $keg = App\Models\Kegiatan::where('status', 1)
                                ->orderby('id', 'DESC')
                                ->first();
                            ?>
                            <span class="home__info-title">Event yang seru </span>

                            <a href="{{ url('/event') }}" class="button button--flex button--link home__info-button">
                                More <i class="ri-arrow-right-line"></i>
                            </a>
                        </div>

                        <div class="home__info-overlay">
                            <img src="{{ asset('images') }}/{{ $keg->image }}" alt="" class="home__info-img">
                        </div>
                    </div>
                @endif


            </div>
        </section>

        <!--==================== ABOUT ====================-->
        <section class="about section" id="about">
            <div class="about__container container grid">
                <div class="about__data">
                    <h2 class="section__title about__title">Apa itu<br> Lungo.</h2>
                    <p class="about__description">Lungo membantu Anda untuk dapat menemukan tempat wisata yang paling
                        keren dan
                        menyenangkan
                        dengan harga terbaik ,<br> Cari tempat liburan anda sekarang!

                    </p>
                    {{-- <a href="#" class="button">Reserve a place</a> --}}
                </div>

                <div class="about__img">
                    <div class="about__img-overlay">
                        <img src="{{ asset('images/setting') }}/{{ $setting->about1 }}" alt="" class="about__img-one">
                    </div>

                    <div class="about__img-overlay">
                        <img src="{{ asset('images/setting') }}/{{ $setting->about2 }}" alt="" class="about__img-two">
                    </div>
                </div>
            </div>
        </section>

        <!--==================== DISCOVER ====================-->
        <section class="discover section" id="discover">
            <h2 class="section__title">Temukan Tempat Wisata <br> Di Desa Wisata Paling Menarik</h2>

            <div class="discover__container container swiper-container">
                <div class="swiper-wrapper">
                    @if (count($tempat) > 0)
                        @foreach ($tempat as $key => $tempat)
                            <!--==================== DISCOVER 1 ====================-->
                            <div class="discover__card swiper-slide">
                                <img src="{{ asset('images') }}/{{ $tempat->image }}" alt="" class="discover__img">
                                <div class="discover__data">
                                    <h2 class="discover__title">{{ $tempat->name }}</h2>
                                    {{-- <span class="discover__description">{{App\Models\Detail_transaksi::where('tempat_id',$tempat->id)->where('kategori','tiket')->count()}} Pemesanan</span> --}}
                                </div>
                                <a href="{{ url('./' . $tempat->kategori . '/' . $tempat->slug) }}">
                                    <button class="button button--flex place__button">
                                        <i class="ri-arrow-right-line"></i>
                                    </button>
                                </a>
                            </div>
                        @endforeach
                    @else
                        Sedang Liburan
                    @endif


                </div>
            </div>
        </section>

        <!--==================== EXPERIENCE ====================-->
        <section class="experience section">
            <h2 class="section__title">Lungo. <br> </h2>

            <div class="experience__container container grid">
                <div class="experience__content grid">
                    <div class="experience__data">
                        <h2 class="experience__number">{{ App\Models\User::where('role_id', 5)->count() }}+</h2>
                        <span class="experience__description">Pengunjung <br> Aktif</span>
                    </div>

                    <div class="experience__data">
                        <h2 class="experience__number">{{ App\Models\Tiket::where('check', 'settlement')->count() }}+
                        </h2>
                        <span class="experience__description">Pesanan <br> Selesai</span>
                    </div>

                    <div class="experience__data">
                        <h2 class="experience__number">{{ App\Models\Tempat::count() }}+</h2>
                        <span class="experience__description">Tempat <br> Destinasi</span>
                    </div>

                </div>

                <div class="experience__img grid">
                    <div class="experience__overlay">
                        <img src="{{ asset('images/setting') }}/{{ $setting->experience1 }}" alt=""
                            class="experience__img-one">
                    </div>

                    <div class="experience__overlay">
                        <img src="{{ asset('images/setting') }}/{{ $setting->experience2 }}" alt=""
                            class="experience__img-two">
                    </div>
                </div>
            </div>
        </section>



        @if (!$setting->video == null)
            <!--==================== VIDEO ====================-->
            <section class="video section">
                <h2 class="section__title">Video Tour</h2>

                <div class="video__container container">
                    <p class="video__description">Cari tahu lebih lanjut dengan video kami ini dan cari
                        tempat yang menyenangkan untuk Anda dan keluarga.
                    </p>

                    <div class="video__content">
                        <video id="video-file">

                            {{-- <source src="https://www.youtube.com/watch?v=zJNIFyVAmQw" type="video/mp4"> --}}
                            <source src="{{ asset('videos') }}/{{ $setting->video }}" type="video/mp4">
                            {{-- <source src="{{ asset('./vendor/depan/assets/video/video.mp4') }}" type="video/mp4"> --}}
                        </video>

                        <button class="button button--flex video__button" id="video-button">
                            <i class="ri-play-line video__button-icon" id="video-icon"></i>
                        </button>
                    </div>
                </div>
            </section>
        @else
            <section class="video section">
                {{-- <h2 class="section__title">Video Tour</h2> --}}

                <div class="video__container container">
                    {{-- <p class="video__description">Cari tahu lebih lanjut dengan video kami ini dan cari
                        tempat yang menyenangkan untuk Anda dan keluarga.
                    </p> --}}

                    <div class="video__content">
                        <video id="video-file">
                            {{-- <source src="{{ asset('./vendor/depan/assets/video/video.mp4') }}" type="video/mp4"> --}}
                        </video>

                        <button class="button button--flex video__button" id="video-button" type="hidden">

                        </button>
                    </div>
                </div>
            </section>
        @endif
        </section>
    </main>
@endsection
