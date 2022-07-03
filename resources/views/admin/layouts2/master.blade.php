<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>@yield('title')</title>

    {{-- <link rel="shortcut icon" href="{{ asset('assets/images/favicon/lungo.png') }}" type="image/png"> --}}
    <script src="https://kit.fontawesome.com/ad6395cc9e.js" crossorigin="anonymous"></script>


    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}">

    <link rel="stylesheet" href="{{ asset('assets/vendors/iconly/bold.css') }}">



    <link rel="stylesheet" href="{{ asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/bootstrap-icons/bootstrap-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/app.css') }}">
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.svg') }}" type="image/x-icon">
</head>

<body>

    <div id="app">
        <div id="sidebar" class="active">
            <div class="sidebar-wrapper active">
                <div class="sidebar-header">
                    <div class="d-flex justify-content-between">
                        <div class="logo">
                            <a href="{{ url('/') }}"><img src="{{ asset('assets/images/logo/logo.png') }}"
                                    alt="Logo" srcset=""></a>
                            {{-- <a href="index.html"><img src="assets/images/logo/logo.png" alt="Logo" srcset=""></a> --}}

                        </div>
                        <div class="toggler">
                            <a href="#" class="sidebar-hide d-xl-none d-block">
                                <i class="bi bi-house-fill"></i>
                                {{-- <i class="bi bi-x bi-middle"></i> --}}
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class="sidebar-item  {{ request()->is('dashboard') ? 'active' : '' }}">
                            <a href="{{ url('/dashboard') }}" class='sidebar-link'>
                                <i class="bi bi-grid-fill"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>
                        <br>


                        {{-- <li class="sidebar-item">
                            <div class="card-body">
                                <div class="badges">
                                     @if (auth()->check() && auth()->user()->role->name === 'admin')
                                    <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                    <br>
                                    <br>
                                    <span>Role Name:</span>
                                    <span class="badge bg-success">Super Admin</span>
                                    @endif
                                    @if (auth()->check() && auth()->user()->role->name === 'wisata')
                                        <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                        <br>
                                        <br>
                                        <span>Role Name:</span>
                                        <span class="badge bg-info">Admin Wisata</span>
                                    @endif
                                    @if (Auth::user()->role_name == 'wisata')
                                        <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                        <hr>
                                        <span>Role Name:</span>
                                        <span class="badge bg-warning">User Normal</span>
                                    @endif
                                    @if (auth()->check() && auth()->user()->role->name === 'kuliner')
                                    <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                        <br>
                                        <br>
                                        <span>Role Name:</span>
                                        <span class="badge bg-info">Admin Kuliner</span>
                                    @endif
                                    @if (auth()->check() && auth()->user()->role->name === 'penginapan')
                                    <span>Name: <span class="fw-bolder">{{ Auth::user()->name }}</span></span>
                                        <br>
                                        <br>
                                        <span>Role Name:</span>
                                        <span class="badge bg-info">Admin Penginapan</span>
                                    @endif
                                </div>
                            </div>
                        </li> --}}
                        {{-- <hr> --}}
                        {{-- <li class="sidebar-title">Menu</li> --}}

                        {{-- <li class="sidebar-item active "> --}}

                        @if (auth()->check() && auth()->user()->role->name === 'desa')
                            Tempat
                            <li class="sidebar-item  {{ request()->is('adesa/desa*') ? 'active' : '' }}">
                                <a href="{{ route('desa.index') }}" class='sidebar-link'>
                                    <i class="fas fa-map-marked-alt"></i>
                                    <span>Desa</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('adesa/tempatd*') ? 'active' : '' }}">
                                <a href="{{ route('tempat.indexd') }}" class='sidebar-link'>
                                    <i class="fas fa-location-arrow"></i>
                                    <span>Tempat</span>
                                </a>
                            </li>

                            <li class="sidebar-item  {{ request()->is('adesa/admind*') ? 'active' : '' }}">
                                <a href="{{ route('admind.index') }}" class='sidebar-link'>
                                    <i class="fas fa-user-tie"></i>
                                    <span>Admin</span>
                                </a>
                            </li>

                            {{-- <li class="sidebar-item  {{ (request()->is('desa/tempat*')) ? 'active' : '' }}">
                            <a href="{{ route('tempatf.kelola') }}" class='sidebar-link'>
                                <i class="fas fa-location-arrow"></i>
                                <span>Kelola</span>
                            </a>
                        </li> --}}
                            <hr>
                            <li class="sidebar-item  {{ request()->is('adesa/rekapd*') ? 'active' : '' }}">
                                <a href="{{ route('rekapd.index') }}" class='sidebar-link'>
                                    <i class="far fa-file"></i>
                                    <span>Rekap Data</span>
                                </a>
                            </li>
                        @endif

                        @if (auth()->check() && auth()->user()->role->name === 'kuliner')
                            <li class="sidebar-item  {{ request()->is('kegiatan*') ? 'active' : '' }}">
                                <a href="{{ url('/kegiatan') }}" class='sidebar-link'>
                                    <i class="fas fa-child"></i>
                                    <span>Kegiatan</span>
                                </a>
                            </li>
                            <hr>
                            Pemesanan
                            {{-- <li class="sidebar-item  {{ (request()->is('wisata/tiket*')) ? 'active' : '' }}">
                            <a href="{{ route('tiket.index') }}" class='sidebar-link'>

                                <i class="fas fa-ticket-alt"></i>
                                <span>Tiket</span>
                            </a>
                        </li> --}}
                            <li class="sidebar-item  {{ request()->is('akuliner/checkk*') ? 'active' : '' }}">
                                <a href="{{ route('checkk.index') }}" class='sidebar-link'>
                                    <i class="fas fa-clipboard-check"></i>
                                    <span>Check</span>
                                </a>
                            </li>

                            <li class="sidebar-item  {{ request()->is('akuliner/todayk*') ? 'active' : '' }}">
                                <a href="{{ route('todaykuliner.index') }}" class='sidebar-link'>
                                    <i class="far fa-clock"></i>
                                    <span>Today</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/orderk*') ? 'active' : '' }}">
                                <a href="{{ route('orderk.index') }}" class='sidebar-link'>
                                    <i class="fas fa-inbox"></i>
                                    <span>Order</span>
                                </a>
                            </li>

                            <hr>
                            Pemasukan
                            <li class="sidebar-item  {{ request()->is('akuliner/dana*') ? 'active' : '' }}">
                                <a href="{{ route('danak.index') }}" class='sidebar-link'>
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <span>Dana</span>
                                </a>
                            </li>
                            <hr>
                            Data
                            <li class="sidebar-item  {{ request()->is('akuliner/kuliner*') ? 'active' : '' }}">
                                <a href="{{ route('kuliner.index') }}" class='sidebar-link'>
                                    <i class="fas fa-utensils"></i>
                                    <span>Makanan / Minuman</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/tempatk*') ? 'active' : '' }}">
                                <a href="{{ route('atf.kuliner') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-store-alt"></i>
                                    <span>Tempat</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/rekapk*') ? 'active' : '' }}">
                                <a href="{{ route('rekapk.index') }}" class='sidebar-link'>
                                    <i class="fas fa-file-invoice"></i>
                                    {{-- <i class="bi bi-house-fill"></i> --}}
                                    <span>Rekap Data</span>
                                </a>
                            </li>
                        @endif

                        @if (auth()->check() && auth()->user()->role->name === 'wisata')
                            <li class="sidebar-item  {{ request()->is('kegiatan*') ? 'active' : '' }}">
                                <a href="{{ url('/kegiatan') }}" class='sidebar-link'>
                                    <i class="fas fa-child "></i>
                                    <span>Kegiatan</span>
                                </a>
                            </li>
                            <hr>
                            Pemesanan
                            {{-- <li class="sidebar-item  {{ (request()->is('wisata/tiket*')) ? 'active' : '' }}">
                            <a href="{{ route('tiket.index') }}" class='sidebar-link'>

                                <i class="fas fa-ticket-alt"></i>
                                <span>Tiket</span>
                            </a>
                        </li> --}}
                            <li class="sidebar-item  {{ request()->is('wisata/checkw*') ? 'active' : '' }}">
                                <a href="{{ route('checkw.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-clipboard-check"></i>
                                    <span>Check</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('wisata/order*') ? 'active' : '' }}">
                                <a href="{{ route('order.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-inbox"></i>
                                    <span>Order</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('wisata/jadwalcamp*') ? 'active' : '' }}">
                                <a href="{{ route('jadwalcamp.index') }}" class='sidebar-link'>
                                    <i class="fas fa-calendar-alt"></i>
                                    <span>Jadwal Camp</span>
                                </a>
                            </li>
                            <hr>
                            Pemasukan
                            <li class="sidebar-item  {{ request()->is('wisata/dana*') ? 'active' : '' }}">
                                <a href="{{ route('dana.index') }}" class='sidebar-link'>
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <span>Dana</span>
                                </a>
                            </li>
                            <hr>
                            Tempat
                            <li class="sidebar-item  {{ request()->is('wisata/tempatf*') ? 'active' : '' }}">
                                <a href="{{ route('tempatf.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-location-arrow"></i>
                                    <span>Kelola</span>
                                </a>
                            </li>
                            <hr>
                            Data
                            <li class="sidebar-item  {{ request()->is('wisata/camping*') ? 'active' : '' }}">
                                <a href="{{ route('camping.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-campground"></i>
                                    {{-- <i class="fas fa-fire"></i> --}}
                                    <span>Camp</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('wisata/wahana*') ? 'active' : '' }}">
                                <a href="{{ route('wahana.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-gamepad"></i>

                                    <span>Wahana</span>
                                </a>
                            </li>

                            <li class="sidebar-item  {{ request()->is('wisata/wisata*') ? 'active' : '' }}">
                                <a href="{{ route('wisata.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    {{-- <i class="fas fa-user"></i> --}}
                                    <i class="far fa-map"></i>
                                    <span>Wisata</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('wisata/rekapw*') ? 'active' : '' }}">
                                <a href="{{ route('rekapw.index') }}" class='sidebar-link'>
                                    <i class="bi bi-grid-fill"></i>
                                    {{-- <i class="bi bi-house-fill"></i> --}}
                                    <span>Rekap Data</span>
                                </a>
                            </li>
                        @endif
                        @if (auth()->check() && auth()->user()->role->name === 'penginapan')
                            Kegiatan
                            <li class="sidebar-item  {{ request()->is('kegiatan*') ? 'active' : '' }}">
                                <a href="{{ url('/kegiatan') }}" class='sidebar-link'>
                                    <i class="fas fa-child"></i>
                                    <span>Kegiatan</span>
                                </a>
                            </li>
                            <hr>
                            Pesanan
                            <li class="sidebar-item  {{ request()->is('penginapan/checkp*') ? 'active' : '' }}">
                                <a href="{{ route('checkp.index') }}" class='sidebar-link'>
                                    <i class="fas fa-clipboard-check"></i>
                                    <span>Check</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('penginapan/jadwalkamar*') ? 'active' : '' }}">
                                <a href="{{ route('jadwalkamar.index') }}" class='sidebar-link'>
                                    <i class="fas fa-calendar-alt"></i>
                                    <span>Jadwal Kamar</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('penginapan/booking*') ? 'active' : '' }}">
                                <a href="{{ route('booking.index') }}" class='sidebar-link'>
                                    <i class="fas fa-inbox"></i>
                                    <span>Booking</span>
                                </a>
                            </li>
                            <br>
                            Pemasukan
                            <li class="sidebar-item  {{ request()->is('penginapan/dana*') ? 'active' : '' }}">
                                <a href="{{ route('danap.index') }}" class='sidebar-link'>
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <span>Dana</span>
                                </a>
                            </li>
                            <hr>
                            Data
                            <li class="sidebar-item  {{ request()->is('penginapan/kamar*') ? 'active' : '' }}">
                                <a href="{{ route('kamar.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-bed"></i>

                                    <span>Kamar</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('penginapan/tempatp*') ? 'active' : '' }}">
                                <a href="{{ route('atf.penginapan') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-store-alt"></i>
                                    <span>Tempat</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('penginapan/rekapp*') ? 'active' : '' }}">
                                <a href="{{ route('rekapp.index') }}" class='sidebar-link'>
                                    <i class="bi bi-grid-fill"></i>
                                    {{-- <i class="bi bi-house-fill"></i> --}}
                                    <span>Rekap Data</span>
                                </a>
                            </li>
                        @endif







                        @if (auth()->check() && auth()->user()->role->name === 'admin')
                            {{-- <li class="sidebar-item  {{ (request()->is('admin/pesananc*')) ? 'active' : '' }}">
                            <a href="{{ route('pesananc.index') }}" class='sidebar-link'>
                                <i class="fas fa-inbox"></i>
                                <span>Pesanan</span>
                            </a>
                        </li> --}}
                            <li class="sidebar-item  {{ request()->is('admin/adana*') ? 'active' : '' }}">
                                <a href="{{ route('admin.dana') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <span>Konfirmasi Dana</span>
                                </a>
                            </li>
                            <hr>
                            <li class="sidebar-item  {{ request()->is('admin/tempat*') ? 'active' : '' }}">
                                <a href="{{ route('tempat.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-map-marker"></i>
                                    <span>Tempat</span>
                                </a>
                            </li>
                            {{-- <li class="sidebar-title">Data Master</li> --}}
                            <li class="sidebar-item  {{ request()->is('admin/pelanggan*') ? 'active' : '' }}">
                                <a href="{{ route('pelanggan.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-user"></i>
                                    <span>Pelanggan</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('admin/admin*') ? 'active' : '' }}">
                                <a href="{{ route('admin.index') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-user-tie"></i>
                                    <span>Admin</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('admin/setting*') ? 'active' : '' }}">
                                <a href="{{ route('setting.index') }}" class='sidebar-link'>
                                    <i class="fas fa-cogs"></i>
                                    <span>Setting</span>
                                </a>
                            </li>
                        @endif

                        @if (auth()->check() && auth()->user()->role->name === 'event & sewa tempat')
                            <hr>
                            Manajemen Data
                            <li class="sidebar-item  {{ request()->is('kategorievent*') ? 'active' : '' }}">
                                <a href="/kategorievent" class='sidebar-link'>
                                    <i class="fas fa-film
                                    .ik-film"></i>
                                    <span>Kategori Event</span>
                                </a>
                            </li>

                            <li class="sidebar-item  {{ request()->is('akuliner/todayk*') ? 'active' : '' }}">
                                <a href="{{ route('todaykuliner.index') }}" class='sidebar-link'>
                                    <i class="far fa-image
                                    .ik-image"></i>
                                    <span>Event</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/orderk*') ? 'active' : '' }}">
                                <a href="{{ route('orderk.index') }}" class='sidebar-link'>
                                    <i class="fas fa-home
                                    .ik-home"></i>
                                    <span>Tempat Sewa</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/orderk*') ? 'active' : '' }}">
                                <a href="{{ route('orderk.index') }}" class='sidebar-link'>
                                    <i class="fas fa-user-plus
                                    .ik-user-plus"></i>
                                    <span>Peserta Event</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/orderk*') ? 'active' : '' }}">
                                <a href="{{ route('orderk.index') }}" class='sidebar-link'>
                                    <i class="fas fa-users
                                    .ik-users"></i>
                                    <span>Penyewa Tempat</span>
                                </a>
                            </li>

                            <hr>
                            Pemesanan
                            <li class="sidebar-item  {{ request()->is('akuliner/dana*') ? 'active' : '' }}">
                                <a href="{{ route('danak.index') }}" class='sidebar-link'>
                                    <i class="fas fa-clipboard-check"></i>
                                    <span>Check</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/dana*') ? 'active' : '' }}">
                                <a href="{{ route('danak.index') }}" class='sidebar-link'>
                                    <i class="far fa-clock"></i>
                                    <span>Today</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/dana*') ? 'active' : '' }}">
                                <a href="{{ route('danak.index') }}" class='sidebar-link'>
                                    <i class="fas fa-inbox"></i>
                                    <span>Orders</span>
                                </a>
                            </li>
                            <hr>
                            Pemasukan
                            <li class="sidebar-item  {{ request()->is('akuliner/kuliner*') ? 'active' : '' }}">
                                <a href="{{ route('kuliner.index') }}" class='sidebar-link'>
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <span>Dana Event</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/tempatk*') ? 'active' : '' }}">
                                <a href="{{ route('atf.kuliner') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-hand-holding-usd"></i>
                                    <span>Dana Penyewaan Tempat</span>
                                </a>
                            </li>
                            <hr>
                            Penilaian
                            <li class="sidebar-item  {{ request()->is('akuliner/kuliner*') ? 'active' : '' }}">
                                <a href="{{ route('kuliner.index') }}" class='sidebar-link'>
                                    <i class="fas fa-thumbs-up
                                    .ik-thumbs-up"></i>
                                    <span>Testimoni Event</span>
                                </a>
                            </li>
                            <li class="sidebar-item  {{ request()->is('akuliner/tempatk*') ? 'active' : '' }}">
                                <a href="{{ route('atf.kuliner') }}" class='sidebar-link'>
                                    {{-- <i class="bi bi-person-badge-fill"></i> --}}
                                    <i class="fas fa-star
                                    .ik-star"></i>
                                    <span>Testimoni Penyewaan Tempat</span>
                                </a>
                            </li>
                            <hr>
                        @endif
                        <li class="sidebar-item">

                            <a class='sidebar-link' href="{{ route('logout') }}" onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();"> <i
                                    class="bi bi-box-arrow-right"></i>
                                <span>Log Out</span>
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                class="d-none">
                                @csrf
                            </form>
                        </li>
                        </form>





                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        <div id="main">
            @yield('content')
        </div>
    </div>
    <script src="{{ asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>

    {{-- <script src="{{asset('assets/vendors/apexcharts/apexcharts.js')}}"></script>
    <script src="{{asset('assets/js/pages/dashboard.jss')}}"></script> --}}

    <script src="{{ asset('assets/js/main.js') }}"></script>

</body>

</html>
