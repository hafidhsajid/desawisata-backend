@extends('pesanan.master')

@section('content')
<link rel="stylesheet" href="{{ asset('assets/css/toastr.min.css') }}">
<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('assets/js/toastr.min.js') }}"></script>

{!! Toastr::message() !!}
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.dataTables.min.css">

<link rel="stylesheet" href="{{asset('assets/vendors/simple-datatables/style.css')}}">

<body>
    <nav class="navbar navbar-light">
        <div class="container d-block">



              <a href="{{ url('/') }}">
                <button class="btn btn-outline-primary me-1 mb-1"><i class="fas fa-home"></i></button>
            </a>
            <a href="{{ url('/profile') }}">
                <button class="btn btn-outline-primary me-1 mb-1"><i class="far fa-id-card"></i></button>
            </a>

        </div>
    </nav>


    <div class="container">
        <div class="row">
            {{-- <div class="col-6 col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body px-3 py-4-5">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="stats-icon purple">
                                    <i class="iconly-boldProfile"></i>
                                </div>
                            </div>
                            <div class="col-md-8">

                                <h6 class="text-muted font-semibold">Pesananku</h6>
                                <h6 class="font-extrabold mb-0">{{ App\Models\Tiket::where('user_id', Auth::user()->id)->count() }}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}
            <div class="col-6 col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body px-3 py-4-5">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="stats-icon blue">
                                    <i class="fas fa-receipt"></i>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <h6 class="text-muted font-semibold">Pilih Pembayaran</h6>
                                <h6 class="font-extrabold mb-0">{{App\Models\Tiket::where('user_id', Auth::user()->id)->where('status',0)->count()}}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body px-3 py-4-5">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="stats-icon blue">
                                    <i class="fas fa-spinner"></i>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <h6 class="text-muted font-semibold">Pending</h6>
                                <h6 class="font-extrabold mb-0">{{App\Models\Tiket::where('user_id', Auth::user()->id)->where('check',"pending")->count()}}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body px-3 py-4-5">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="stats-icon red">
                                    <i class="fas fa-times"></i>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <h6 class="text-muted font-semibold">Cancel / Expire</h6>
                                <?php $cancel = (App\Models\Tiket::where('user_id', Auth::user()->id)->where('check',"cancel")->count()) + (App\Models\Tiket::where('user_id', Auth::user()->id)->where('check',"expire")->count()) ?>

                                <h6 class="font-extrabold mb-0"> {{ $cancel }}</h6>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 col-lg-3 col-md-6">
                <div class="card">
                    <div class="card-body px-3 py-4-5">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="stats-icon green">
                                    <i class="fas fa-check"></i>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <h6 class="text-muted font-semibold">Berhasil</h6>
                                <h6 class="font-extrabold mb-0">{{App\Models\Tiket::where('user_id', Auth::user()->id)->where('check',"settlement")->count()}}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card">
            {{-- <div class="card-header">
                <h4 class="card-title text-center">Semua Pesanan An. {{ Auth::user()->name }} </h4>
            </div> --}}
            <div class="card-body">
                <div class="card-content">

                    <!-- table hover -->
                    <div class="table-responsive">
                        <table class="table table-hover" id="pesan">
                            <thead>
                                <tr >
                                    <th></th>
                                    <th scope="col">No</th>
                                    <th scope="col">Kode</th>
                                    <th scope="col">Kategori</th>
                                    <th scope="col">Tanggal</th>
                                    <th scope="col">Harga</th>
                                    <th scope="col"></th>
                                    <th scope="col">Status</th>
                                    <th scope="col"></th>



                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; $grandtotal=0; ?>

                                    @if(count($tiket)>0)
                                    @foreach($tiket as $key=>$tiket)
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            {{$key+1}}

                                        </td>


                                        <td>
                                            {{-- {{ $tiket->kode}}    --}}
                                            {{-- @foreach(App\Models\ambilmatkul::where('kode_mk', $ambilmatkul)->get() as $am)

                                                @endforeach --}}
                                            @if(App\Models\Detail_transaksi::where('kode_tiket', $tiket->kode)->distinct()->count() > 1 )

                                                {{ substr(App\Models\Detail_transaksi::where('kode_tiket', $tiket->kode)->pluck('name')->first(),0,20) }} , ...
                                             @else
                                                {{ substr(App\Models\Detail_transaksi::where('kode_tiket', $tiket->kode)->pluck('name')->first(),0,20) }}

                                            @endif
                                        </td>
                                        <td>
                                            {{ substr(App\Models\Detail_transaksi::where('kode_tiket', $tiket->kode)->pluck('kategori')->first(),0,10) }}
                                        </td>
                                        <td>
                                            {{ substr(App\Models\Detail_transaksi::where('kode_tiket', $tiket->kode)->pluck('tanggal_a')->first(),0,10) }}

                                            {{-- {{ substr($am->tanggal_a, 0 , 10) }} --}}


                                        </td>

                                        <td>
                                           Rp.  {{  number_format($tiket->harga) }}
                                        </td>
                                        <td>
                                            <a href="{{ url('/pesanan/detail/'.$tiket->kode) }}"><button class="btn  btn-outline-info"> Detail Pesanan </a>
                                        </td>
                                        <td>
                                            @if ($tiket->status == 0)

                                            <a href="{{url('bayar',[$tiket->id])}}"><button class="btn btn-primary"> Pilih Pembayaran</button></a>




                                            {{-- <a href="{{url('transaksi/batal',[$tiket->id])}}">Batal</a> --}}
                                            @else

                                            @foreach(App\Models\Pay::where('kodeku',$tiket->kode)->get() as $status)
                                                    @if ($status->transaction_status == "settlement")
                                                    <div class="btn-group dropdown me-1 mb-1">
                                                        <a href="{{url('bayar/status',[$tiket->kode])}}"><button class="btn btn-outline-primary">Berhasil Dibayar</button></a>
                                                        <button type="button"
                                                            class="btn btn-primary dropdown-toggle dropdown-toggle-split"
                                                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                                                            data-reference="parent">
                                                            <span class="sr-only"></span>
                                                        </button>
                                                        <div class="dropdown-menu">
                                                            <a class="dropdown-item"href="{{ url('/my-tiket/print/'.$tiket->kode) }}" target="_blank">Print</a>
                                                            <a class="dropdown-item" href="{{ url('/qrcode/'.$tiket->kode) }}">QrCode</a>

                                                        </div>
                                                    </div>


                                                    @elseif ($status->transaction_status =="pending")

                                                    <a href="{{url('bayar/status',[$tiket->kode])}}"><button class="btn btn-warning">Menunggu Dibayar</button>

                                                    {{-- <a href="{{ route('payment.cancel',[$tiket->kode])}}"><button class="btn btn-secondary"> Cancel</button></a> --}}

                                                    @elseif ($status->transaction_status == null)
                                                    @elseif ($status->transaction_status == "expire")
                                                    <a href="{{url('bayar/status',[$tiket->kode])}}"><button class="btn btn-danger"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Expire &nbsp; &nbsp; &nbsp; &nbsp;</button>
                                                    @elseif ($status->transaction_status == "cancel")
                                                    <a href="{{url('bayar/status',[$tiket->kode])}}"><button class="btn btn-danger"> &nbsp; &nbsp;  &nbsp;Dibatalkan&nbsp; &nbsp; &nbsp; </button>
                                                    @endif
                                            @endforeach
                                            @endif
                                        </td>
                                        <td>
                                            @if ($tiket->status == 0)
                                            @else
                                            @foreach(App\Models\Pay::where('kodeku',$tiket->kode)->get() as $status)
                                            @if ($status->transaction_status =="pending")
                                            <form class="forms-sample" action="{{route('payment.cancel',[$tiket->kode])}}" method="post" >
                                                @csrf
                                                @method('POST')
                                                    <button type="submit" class="btn bt-danger"    onclick="return confirm('Ingin Membatalkan Pesanan ini?')"><i class="fas fa-times"></i></span> </button>
                                            </form>
                                            @endif
                                            @endforeach
                                            @endif
                                        </td>
                                        <td>
                                            @if ($tiket->status == 0)
                                            <form class="forms-sample" action="{{route('transaksi.batal',[$tiket->id])}}" method="post" >
                                                @csrf
                                                @method('DELETE')

                                                    <button type="submit" class="btn bt-danger"    onclick="return confirm('Ingin Menghapus Pesanan ini?')"><i class="bi bi-trash"></i></span> </button>


                                            </form>
                                            @else

                                            @endif

                                        </td>
                                    </tr>
                                    @endforeach



                                </tbody>

                        </table>
                        @else
                        <td>No user to display</td>
                        @endif
                        <li class="breadcrumb breadcrumb">   <a href="{{ route('pesananku') }}">{{ __('Pesananku') }}</a>
                        {{-- <li class="breadcrumb breadcrumb-right">   <a href="{{url('bayar',[$tiket->id])}}"><button class="btn btn-outline-primary"> Pilih Pembayaran</button></a> </li> --}}
                    </div>

            </div>
        </div>
    </div>


</body>
<script src="{{asset('assets/vendors/simple-datatables/simple-datatables.js')}}"></script>
{{-- <script src="{{asset('assets/vendors/fontawesome/all.min.js')}}"></script> --}}
<script>
    // Simple Datatable
    let table1 = document.querySelector('#pesan');
    let dataTable = new simpleDatatables.DataTable(table1);
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
@endsection
