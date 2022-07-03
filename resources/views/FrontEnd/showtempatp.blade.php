<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="shortcut icon" href="{{ asset('assets/images/favicon/lungo.png') }}" type="image/png">

        <!--=============== REMIXICONS ===============-->
        <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

        <!--=============== SWIPER CSS ===============-->
        <link rel="stylesheet" href="{{ asset('./vendor/depan/assets/css/swiper-bundle.min.css') }}">

        <!--=============== CSS ===============-->
        <script src="https://kit.fontawesome.com/ad6395cc9e.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="{{ asset('./vendor/depan/assets/css/styles.css') }}">
        <link rel="stylesheet" href="{{asset('assets/css/toastr.min.css')}}">
        {{-- <script src="http://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script> --}}
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script src="{{asset('assets/js/toastr.min.js')}}"></script>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

        <title>Lungo.</title>
    </head>
    <body>

        <header class="header" id="header">
            <nav class="nav container">
                <a href="{{ url('/') }}" class="nav__logo">Lungo.</a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                            {{-- <a href="{{ url('/') }}" class="nav__link active-link">Home</a> --}}
                            <a href="{{ url('/') }}" class="nav__link ">Home</a>
                        </li>


                        @guest
                        <li class="nav__item">
                            <a href="{{ route('login') }}" class="nav__link">Login</a>
                        </li>
                        @else
                        @if(auth()->check()&& auth()->user()->role->id != 5)
                        <li class="nav__item">
                            <a href="{{ route('dashboard') }}" class="nav__link">Dashboard</a>
                        </li>
                        @else
                        <li class="nav__item">
                            <a href="{{ route('pesananku') }}" class="nav__link">Pesananku</a>
                        </li>
                        @if(!empty($kuliner))
                        <li class="nav__item">
                            <a href="{{ route('cart.kuliner') }}" class="nav__link">Cart</a>
                        </li>
                        @endif
                        @endif
                        <li class="nav__item">
                            <a href="{{ url('/profile') }}" class="nav__link">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a  href="{{ route('logout') }}" class="nav__link"
                            onclick="event.preventDefault();document.getElementById('logout-form').submit();" >
                              <i class="fas fa-power-off"></i>
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf

                            </form>

                        </li>
                        @endguest
                    </ul>

                    <div class="nav__dark">
                        <!-- Theme change button -->
                        <span class="change-theme-name">Dark mode</span>
                        <i class="ri-moon-line change-theme" id="theme-button"></i>
                    </div>

                    <i class="ri-close-line nav__close" id="nav-close"></i>
                </div>

                <div class="nav__toggle" id="nav-toggle">
                    <i class="ri-function-line"></i>
                </div>
            </nav>
        </header>

        <main class="main">
            {!! Toastr::message() !!}
            <!--==================== HOME ====================-->
            <section class="home" id="home">
                @if($tempat->image2==null)
                <img src=" {{ asset('./vendor/depan/assets/img/213.jpg') }}" alt="" class="home__img">

                @else
                <img src="{{asset('images')}}/{{$tempat->image2}}" alt="" class="home__img">
                @endif
                <div class="home__container container grid">
                    <div class="home__data">
                        <span class="home__data-subtitle">Temukan liburan Anda di</span>
                        <h1 class="home__data-title">{{ $tempat->name }}<br> <b>{{ $tempat->alamat }}</b></h1>
                        <a href="#booking" class="button">Booking</a>
                        <a href="#kamar" class="button">Kamar</a>
                        @isset($cekkamar)
                        <a href="#cek" class="button">Cek Hasil</a>
                        @endisset


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


                </div>
            </section>


                 <!--==================== EXPERIENCE ====================-->
                 <section class="experience section" id="booking">
                    {{-- <h2 class="section__title"> {{ $tempat->name }}  <br> </h2> --}}

                    <form action="{{url('/checkpenginapan',[$tempat->id]) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input class="form-control"  name="tempat_id" type="hidden" value="{{ $tempat->id }}">
                        <input class="form-control"  name="tempat_name" type="hidden" value="{{ $tempat->name }}">
                        <h2 class="section__title">Cari Kamar ?</h2>


                       <input class="form-control" type="hidden" value="1" name="jumlah_kamar" />

                        <h2 class="section__title"> Checkin &nbsp;&nbsp;&nbsp;<input name="checkin" type="date" class="form-control" id="datefield" placeholder="Checkin"   required> Sampai <input name="checkout" type="date" class="form-control" id="datefield2" placeholder="Checkout"   required> </h2>
                        {{-- <h2 class="section__title"> Chcekout &nbsp;&nbsp;<input name="checkout" type="date" class="form-control" id="datefield2" placeholder="Checkout"   required> </h2> --}}
                        <h2 class="section__title"> Berapa Orang  <input name="jumlah_orang" type="number" class="form-control" id="jml_orang" placeholder="Jumlah Orang"  min="1" required> Type

                            <select style="width:150px;height:30px;" name="kamar_type" required>

                                <option selected value=''>Pilih Tipe Kamar</option>
                                <option value="standard"> Standar </option>
                                <option value="vip"> VIP </option>

                                </select><!-- /.select-->
                        </h2>

                        <h5 class="section__title">
                            <button  class="button" type="submit">
                           {{-- Reserve Place --}}
                           Cari
                        </button>
                        </h5>
                    </form>

                <div class="experience__container container grid">
                    <div class="experience__content grid">
                        <div class="experience__data">
                            <h2 class="experience__number">{{App\Models\Kamar::where('tempat_id', $tempat->id)->where('type','standard')->where('status',1)->count()}}</h2>
                            <span class="experience__description">Kamar <br>Standar</span>
                        </div>
                        <div class="experience__data">
                            <h2 class="experience__number">{{App\Models\Kamar::where('tempat_id', $tempat->id)->where('type','vip')->where('status',1)->count()}}</h2>
                            <span class="experience__description">Kamar <br>VIP</span>
                        </div>

                        <div class="experience__data">
                            <h2 class="experience__number">{{App\Models\Detail_transaksi::where('tempat_id',$tempat->id)->count()}}+</h2>
                            <span class="experience__description">Pesanan <br> Selesai</span>
                        </div>


                    </div>


                </div>
            </section>

            @isset($cekkamar)
            <section class="experience section">
                <h2 class="section__title">  Kamar di {{ $tempat->name }} <br> Di Tanggal {{ $formatted_dt1->format('Y-m-d') }} sampai {{ $formatted_dt2->format('Y-m-d') }}</h2>
            </section>
            <!--==================== ABOUT ====================-->
            <section class="about section" id="cek">
                @foreach ($cekkamar as $key=>$cekkamar)
                <div class="about__container container grid">
                    <div class="about__data">
                        <h2 class="section__title about__title"> {{$cekkamar->name}}</h2>
                        <p class="about__description">{{ $cekkamar->deskripsi }} <br>{{ $cekkamar->deskripsi_harga }} Rp.{{ number_format($cekkamar->harga) }}
                        </p>
                                    <?php
                                         date_default_timezone_set('Asia/Jakarta');

                                        if ($formatted_dt1 >  $formatted_dt2) {
                                            $durasi = -1 * ($formatted_dt1->diffInDays($formatted_dt2));
                                        } else {
                                            $durasi = $formatted_dt1->diffInDays($formatted_dt2);
                                        }
                                        for ($i = 0; $i < $durasi; $i++) {
                                         $eventtgl = date('Y-m-d ', strtotime('+' . $i . 'day', strtotime($checkin)));

                                         $booked = App\Models\EventBooking::where('date', $eventtgl)->where('tempat_id', $tempat_id)->where('title',"Booked")->where('kamar_id', $cekkamar->kode_kamar)->exists();
                                        }
                                        ?>
                         {{-- @if(App\Models\EventBooking::where('date', $eventtgl)->where('tempat_id', $tempat_id)->where('title',"Booked")->where('kamar_id', $cekkamar->kode_kamar)->exists()) --}}
                         @if($booked == true)
                        Booked
                        @else
                        <form action="{{url('/penginapanpesan/'.$cekkamar->kode_kamar) }} " method="POST" enctype="multipart/form-data">
                            @csrf

                                        {{-- <input class="form-control"   type="text" value="{{ $tempat->name }}" disabled> --}}
                                        <input class="form-control"  name="kode_kamar" type="hidden" value="{{ $cekkamar->kode_kamar }}">
                                        <input class="form-control"  name="tempat_id" type="hidden" value="{{ $tempat->id }}">
                                        <input class="form-control"  name="tempat_name" type="hidden" value="{{ $tempat->name }}">
                                        <input class="form-control"  name="kamar_id" type="hidden" value="{{ $cekkamar->kode_kamar }}">
                                        <input class="form-control"  name="jumlah_kamar" type="hidden" value="1">
                                        <input class="form-control"  name="checkin" type="hidden" value="{{ $formatted_dt1->format('Y-m-d') }}">
                                        <input class="form-control"  name="checkout" type="hidden" value="{{ $formatted_dt2->format('Y-m-d') }}">
                                        <input class="form-control"  name="jumlah_orang" type="hidden" value="{{ $jumlah_orang }}">
                                        <input class="form-control"  name="durasi" type="hidden" value="{{ $durasi }}">
                                        <button  class="button" type="submit">
                                            {{-- Reserve Place --}}
                                            Booking
                                         </button>
                        </form>
                        @endif
                    </div>

                    <div class="about__img">

                        {{-- <div class="about__img-overlay">
                            <img src="{{ asset('./vendor/depan/assets/img/camping.jpg') }}" alt="" class="about__img-one">
                        </div> --}}

                        <div class="about__img-overlay">
                            <img src="{{asset('images')}}/{{$cekkamar->image}}" alt="" class="about__img-two">
                        </div>
                    </div>
                </div>
                @endforeach
            </section>
            @endisset


            <!--==================== Kamar====================-->
            <section class="discover section" id="kamar">
                <h2 class="section__title">Kamar <br> Yang Tersedia</h2>

                <div class="discover__container container swiper-container">
                    <div class="swiper-wrapper">
                        @if(count($kamar)>0)
                        @foreach($kamar as $key=>$whn)
                        <!--==================== DISCOVER 1 ====================-->
                        <div class="discover__card swiper-slide">
                            <img src="{{asset('images')}}/{{$whn->image}}" alt="" class="discover__img">
                            <div class="discover__data">

                                <h2 class="discover__title">{{ $whn->name }}</h2>

                                <span class="discover__description">
                                    @if($whn->harga=="0"||$whn->harga==null)
                                    Free
                                    @else
                                    <a disabled class="button"> Rp.{{ number_format($whn->harga) }}/ Malam</a>
                                    @endif

                                </span>
                            </div>


                        </div>

                        @endforeach
                        @else
                        Sedang Liburan
                        @endif


                    </div>
                </div>
            </section>




            <!--==================== VIDEO ====================-->
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
            
            <!--==================== KULINER ====================-->
              <?php 
             
             $ez2 = App\Models\Tempat::where('induk_id', $tempat->induk_id)->where('status',1)->get();
                // dd($ez2);
            ?>
           @if(count($ez2)>0)
            <section class="place section" id="place">
                <h2 class="section__title">Tempat Disekitar {{ $tempat->name }}</h2>
                <div class="place__container container grid">

                    @foreach($ez2 as $key=>$tempat2)
                    <!--==================== PLACES CARD 1 ====================-->
                    <div class="place__card">
                        <img src="{{asset('images')}}/{{$tempat2->image}}" alt="" class="place__img">

                        <div class="place__content">
                            <span class="place__rating">
                                <i class="ri-star-line place__rating-icon"></i>
                                <!--<span class="place__rating-number">4,8</span>-->
                            </span>

                            <div class="place__data">
                                <h3 class="place__title">{{ $tempat2->name }}</h3>

                                <span class="place__price">{{ $tempat2->kategori }}</span>
                            </div>
                        </div>
                      <a href="{{ url('./'.$tempat2->kategori.'/'.$tempat2->slug) }}">
                            <button  class="button button--flex place__button">
                                   <i class="ri-arrow-right-line"></i>
                            </button>
                            </a>

                    </div>
                    @endforeach

                </div>
            </section>
            @endif 










            <!--==================== SPONSORS ====================-->
            <section class="sponsor section">
                <div class="sponsor__container container grid">
                    <div class="sponsor__content">
                        <img src="{{ asset('./vendor/depan/assets/img/sponsors1.png') }}" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="{{ asset('./vendor/depan/assets/img/sponsors4.png') }}" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="{{ asset('./vendor/depan/assets/img/sponsors3.png') }}" alt="" class="sponsor__img">
                    </div>
                    <div class="sponsor__content">
                        <img src="{{ asset('./vendor/depan/assets/img/sponsors2.png') }}" alt="" class="sponsor__img">
                    </div>
                </div>


            </section>
        </main>

        <!--==================== FOOTER ====================-->
        <footer class="footer section">
            <div class="footer__container container grid">
                <div class="footer__content grid">
                    <div class="footer__data">
                        <h3 class="footer__title">Lungo.</h3>
                        <p class="footer__description">Kami Membantu <br> wisata anda,
                            dimanapun <br> dan kapanpun.
                        </p>
                        <div>
                            <a href="https://www.facebook.com/" target="_blank" class="footer__social">
                                <i class="ri-facebook-box-fill"></i>
                            </a>
                            <a href="https://twitter.com/" target="_blank" class="footer__social">
                                <i class="ri-twitter-fill"></i>
                            </a>
                            <a href="https://www.instagram.com/" target="_blank" class="footer__social">
                                <i class="ri-instagram-fill"></i>
                            </a>
                            <a href="https://www.youtube.com/" target="_blank" class="footer__social">
                                <i class="ri-youtube-fill"></i>
                            </a>
                        </div>
                    </div>

                    <div class="footer__data">
                        <h3 class="footer__subtitle">Kontak</h3>
                        <ul>
                            <li class="footer__item">
                                <a href="" class="footer__link">+6285882218939</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">alifudinniko@student.uns.ac.id</a>
                            </li>
                            <li class="footer__item">
                                <a href="" class="footer__link">Indonesia</a>
                            </li>
                        </ul>
                    </div>




                </div>

                <div class="footer__rights">
                    <p class="footer__copy">&#169; 2021 Lungo. All rigths reserved.</p>
                    <div class="footer__terms">
                        <a href="#" class="footer__terms-link">Terms & Agreements</a>
                        <a href="#" class="footer__terms-link">Privacy Policy</a>
                    </div>
                </div>
            </div>
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
<script>
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    if(dd<10){
            dd='0'+dd
        }
        if(mm<10){
            mm='0'+mm
        }

    today = yyyy+'-'+mm+'-'+dd;
    document.getElementById("datefield").setAttribute("min", today);
    document.getElementById("datefield2").setAttribute("min", today);
</script>

