@extends('admin.layouts2.master')
@section('title','Check')
@section('content')
<header class="mb-3">
    <a href="#" class="burger-btn d-block d-xl-none">
        <i class="bi bi-justify fs-3"></i>
    </a>
</header>
{{-- SCan --}}
<script type="text/javascript" src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
{{-- <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" /> --}}


<link rel="stylesheet" href="{{ asset('assets/css/toastr.min.css') }}">
<script src="{{ asset('js/jquery.min.js') }}"></script>
<script src="{{ asset('assets/js/toastr.min.js') }}"></script>
{!! Toastr::message() !!}
@isset($cek)

<div class="row">
<div class="col-12 col-md-6 col-lg-6">
    <form action="{{url('/wisata/checkw') }}" method="post">
        @csrf
        <div class="form-group">
            <h6>Check</h6>
            <div class="input-group">


                <input type="text" placeholder="Order id" class="form-control" id="order_id" name="order_id" value="@isset($default) {{ $default }} @endisset"/ required>
                <button class="btn btn-primary" type="submit" name="submit" value="todo" >Check</button>
            </div>
        </div>
        {{-- <button class="btn btn-success" type="submit" name="submit" value="table">Tabel</button> --}}

    </form>
</div>
<div class="col-md-6">
    <h6>Scan QR code</h6>
    <form action="{{url('/wisata/checkw') }}" method="post">
        @csrf
        <div class="input-group">


            <input type="text" name="order_id" id="text" readonly="" placeholder="scan qrcode" class="form-control">
            <button class="btn btn-primary" type="submit" name="submit" value="todo" >Check</button>
        </div>
</form>
</div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <video id="preview" width="100%" autoplay="true" id="video-webcam"></video>
        </div>
        <div class="col-md-6">

        </div>
    </div>
</div>
<div>



<script>
   let scanner = new Instascan.Scanner({ video: document.getElementById('preview')});
   Instascan.Camera.getCameras().then(function(cameras){
       if(cameras.length > 0 ){
           scanner.start(cameras[0]);
       } else{
           alert('No cameras found');
       }

   }).catch(function(e) {
       console.error(e);
   });

   scanner.addListener('scan',function(c){
       document.getElementById('text').value=c;
   });

</script>
@endisset
@isset($kosong)


@endisset

@isset($datacamp)
<section class="tasks">
    <div class="row">
<div class="col-lg-7">
    <div class="card widget-todo">
        <div
            class="card-header border-bottom d-flex justify-content-between align-items-center">
            <h4 class="card-title d-flex">
                <i class="bx bx-check font-medium-5 pl-25 pr-75"></i> Order  {{ $id }}
            </h4>

        </div>
        <table class="table table-hover" id="admin">
            <thead>
                <tr >
                    <th></th>
                    <th scope="col" >Nama</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Guest</th>

                    {{-- <th scope="col">Makan</th> --}}

                    {{-- <th scope="col">Camp</th> --}}
                    {{-- <th scope="col">Harga</th> --}}
                    {{-- <th scope="col">Status</th> --}}
                    <th scope="col"></th>

                </tr>
            </thead>
            <tbody>


                <tr>

                    <td>
                        <br>
                    </td>
                    <td>

                        {{ $datacamp->name}}
                    </td>
                    <td>
                        {{ substr($datacamp->date,0,10) }} Sampai
                        {{ substr($datacamp->date2,0,10) }}

                    </td>
                    <td>
                        {{ $datacamp->jumlah_orang }}
                     </td>
                     {{-- <td>
                         @if($datacamp->makan == "include")

                         {{ $datacamp->makan }}
                         @else
                         {{ $datacamp->makan }}
                         @endif

                     </td> --}}
                     {{-- <td> --}}
                         <?php
                        //  $data = App\Models\Detail_camp::where('kode_tiket',$datacamp->kode_tiket )->get();
                         ?>
                         {{-- @foreach($data as $key => $value)
                            @if(App\Models\Camp::where('kode_camp',$value->alat_id )->pluck('kategori')->first() == "alat" )
                                @if($datacamp->alat_id == null)
                                Tidak Sewa
                                @else

                                    @foreach(App\Models\EventCamping::where('kode',$datacamp->kode_tiket)->get() as $kc)
                                        @foreach(App\Models\Camp::where('kode_camp',$kc->camp_id)->get() as $kc)

                                        {{ $kc->name }},
                                        @endforeach

                                    @endforeach

                                @endif
                            @else
                            {{ App\Models\Camp::where('kode_camp',$value->alat_id )->pluck('name')->first() }}
                            @endif
                         @endforeach --}}


                     {{-- </td> --}}
                     {{-- <td>
                        {{ $datacamp->harga }}
                     </td> --}}
                     <td>
                         {{-- {{ dd($datades) }} --}}
                        @if ($datades->kedatangan == "0")
                        <i class="fas fa-times"></i>
                        @else
                        <i class="fas fa-check"></i>
                        @endif
                     </td>





                </tr>



            </tbody>
        </table>
        <table class="table table-hover" id="camp">
            <thead>
                <tr >
                    <th></th>
                    <th scope="col" >Nama</th>
                    <th scope="col">Item</th>
                    <th scope="col">Harga</th>
                    <th scope="col"></th>

                </tr>
            </thead>
            <tbody>
                @if(count($detailcamp2)>0)
                @foreach($detailcamp2 as $key=>$dtc)

                    <tr>
                        <td>
                            <br>
                        </td>
                        <td>
                            {{ $dtc->alat_id }} -
                            {{ App\Models\Camp::where('kode_camp',$dtc->alat_id)->pluck('name')->first() }}


                        </td>
                        <td>
                            {{ $dtc->alat_id }}
                        </td>
                        <td>
                            Rp. {{ number_format($dtc->harga) }}
                         </td>
                         <td>
                            @if(App\Models\Camp::where('kode_camp',$dtc->alat_id )->pluck('kategori')->first() == "alat" )
                            @if(!$datacamp->alat_id == null)
                                @if ($datacamp->status == 1)
                                {{-- {{ $datacamp->tgl_kembaliin }} --}}
                                <i class="fas fa-check-double"></i> Sudah Dikembalikan
                                @else
                                <form action="{{ url('wisata/backcamp',[$id])}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="about-btn">
                                       <button class="btn btn-warning"> Mengembalikan Alat</button>
                                    </div>
                                    <!--/.about-btn-->
                                </form>
                                @endif

                               @endif

                            @endif
                         </td>
                    </tr>
                    @endforeach

                    @else
                        <td>No data to display</td>
                     @endif
                </tbody>
            </table>


    </div>
</div>


<div class="col-lg-5">
    <div class="card widget-todo">
        <div
            class="card-header border-bottom d-flex justify-content-between align-items-center">
            <h4 class="card-title d-flex">
                <i class="bx bx-check font-medium-5 pl-25 pr-75"></i>{{$user->cust->name}}
            </h4>
            <i class="bx bx-check font-medium-5 pl-25 pr-75"></i>{{$user->cust->email}}

        </div>
        <div class="card-body px-0 py-1">
            <table class="table table-borderless">
                <tr>
                    <td class="col-8">
                    @if (!$pay == null )
                        @if ($pay->status_message == "settlement")
                        {{-- <button class="btn btn-outline-success">Berhasil Dibayar</button> --}}

                        @if ($datades->kedatangan == "0")
                        Berhasil Dibayar
                        &nbsp;
                        <a href="{{route('update.kedatangan',[$id])}}"><button class="btn btn-warning"> Konfirmasi Datang</button></a>
                        @else
                        @if(!$datacamp->alat_id == null)
                            @if ($datacamp->status == 1)
                                {{ $datacamp->tgl_kembaliin }}
                            <i class="fas fa-check-double"></i> <button class="btn btn-primary" disabled> Sudah Selesai</button>
                            @else
                            @endif
                       @endif







                        @endif
                        @elseif ($pay->status_message =="pending")
                        <a href="{{url('bayar/status',[$tiket->kode])}}"><button class="btn btn-warning">Menunggu Dibayar</button>
                        @elseif ($pay->status_message == null)

                        @elseif ($pay->status_message == "expire")
                        <button class="btn btn-danger"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Expire &nbsp; &nbsp; &nbsp; &nbsp;</button>
                        @elseif ($pay->status_message == "cancel")
                        <button class="btn btn-danger"> &nbsp; &nbsp;  &nbsp;Dibatalkan&nbsp; &nbsp; &nbsp; </button>
                        @endif
                    @else
                    Belum dibayar
                    @endif

                    <td class="col-6">
                        {{-- <button class="btn btn-success">Berhasil a</button> --}}
                        {{-- <div class="progress progress-info">
                            <div class="progress-bar" role="progressbar" style="width: 60%"
                                aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                        </div> --}}
                    </td>
                    <td class="col-3 text-center">


                    </td>
                </tr>

            </table>
        </div>
    </div>
</div>

</div>
</section>

@endisset
@isset ($data)
<section class="tasks">
    <div class="row">
<div class="col-lg-7">
    <div class="card widget-todo">
        <div
            class="card-header border-bottom d-flex justify-content-between align-items-center">
            <h4 class="card-title d-flex">
                <i class="bx bx-check font-medium-5 pl-25 pr-75"></i> Order  {{ $id }}
            </h4>

        </div> <table class="table table-borderless">
            @foreach ($data as $data)
            <tr>
                <td class="col-5">{{  $data->name  }}</td>
                <td class="col-2"> x {{ $data->jumlah }}</td>
                <td class="col-3"> x {{ $data->harga }}</td>

                <td class="col-2">
                    @if ($data->kedatangan == "0")
                    <i class="fas fa-times"></i>
                    @else

                        <i class="fas fa-check"></i>

                    @endif


                </td>


            </tr>
            @endforeach

        </table>

    </div>
</div>


<div class="col-lg-5">
    <div class="card widget-todo">
        <div
            class="card-header border-bottom d-flex justify-content-between align-items-center">
            <h4 class="card-title d-flex">
                <i class="bx bx-check font-medium-5 pl-25 pr-75"></i>{{$user->cust->name}}
            </h4>
            <i class="bx bx-check font-medium-5 pl-25 pr-75"></i>{{$user->cust->email}}

        </div>
        <div class="card-body px-0 py-1">
            <table class="table table-borderless">
                <tr>
                    <td class="col-8">
                    @if (!$pay == null )
                        @if ($pay->status_message == "settlement")
                        {{-- <button class="btn btn-outline-success">Berhasil Dibayar</button> --}}
                        <button class="btn btn-success">Berhasil Dibayar</button>
                        {{-- {{ dd($data) }} --}}
                        @if($data->kedatangan == 1)
                        Sudah Dipakai
                        @else
                        <a href="{{route('update.kedatangan',[$id])}}"><button class="btn btn-warning"> Konfirmasi</button></a>
                        @endif
                        @elseif ($pay->status_message =="pending")
                        <button class="btn btn-warning">Menunggu Dibayar</button>
                        @elseif ($pay->status_message == null)

                        @elseif ($pay->status_message == "expire")
                        <button class="btn btn-danger"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Expire &nbsp; &nbsp; &nbsp; &nbsp;</button>
                        @elseif ($pay->status_message == "cancel")
                        <button class="btn btn-danger"> &nbsp; &nbsp;  &nbsp;Dibatalkan&nbsp; &nbsp; &nbsp; </button>
                        @endif
                    @else
                    Belum dibayar
                    @endif

                    <td class="col-6">
                        {{-- <button class="btn btn-success">Berhasil a</button> --}}
                        {{-- <div class="progress progress-info">
                            <div class="progress-bar" role="progressbar" style="width: 60%"
                                aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                        </div> --}}
                    </td>
                    <td class="col-3 text-center">


                    </td>
                </tr>

            </table>
        </div>
    </div>
</div>

</div>
</section>
@endisset



<script type="text/javascript">
    // seleksi elemen video
    var video = document.querySelector("#video-webcam");

    // minta izin user
    navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia || navigator.oGetUserMedia;

    // jika user memberikan izin
    if (navigator.getUserMedia) {
        // jalankan fungsi handleVideo, dan videoError jika izin ditolak
        navigator.getUserMedia({ video: true }, handleVideo, videoError);
    }

    // fungsi ini akan dieksekusi jika  izin telah diberikan
    function handleVideo(stream) {
        video.srcObject = stream;
    }

    // fungsi ini akan dieksekusi kalau user menolak izin
    function videoError(e) {
        // do something
        alert("Izinkan menggunakan webcam untuk demo!")
    }
</script>
@endsection
