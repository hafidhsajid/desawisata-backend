@extends('pesanan.master')

@section('content')

@if(empty($desc) || count($desc)==0)
<body>
    <nav class="navbar navbar-light">
        <div class="container d-block">

            <button onclick="goBack()" class=""><i class="bi bi-chevron-left"></i> Kembali</button>

        </div>
    </nav>

    <div class="container">
        <div class="card mt-5">
            <div class="card-header">
                <h4 class="card-title">Detail Pesanan</h4>
            </div>
            <div class="card-body">
                <p>Tidak ada apapun dikeranjang.. mari pesan :)</p>
            </div>
        </div>
    </div>


</body>
@else
<body>
    <nav class="navbar navbar-light">
        <div class="container d-block">


            <button class="badge bg-primary" onclick="goBack()"><i class="bi bi-chevron-left"></i> Kembali</button>

        </div>
    </nav>


    <div class="container">
        <div class="card mt-5">
            <div class="card-header">
                <h4 class="card-title">Detail Pesanan
                    @if($des->status == "1")
                    @if($des->kedatangan =="1")
                    <a href="#" class="btn btn-sm btn-info">Sudah Kepakai</a>
                    @else
                    <a href="#" class="btn btn-sm btn-warning">Belum Kepakai</a>
                    @endif </h4>
                    @else
                    @endif
            </div>
            <div class="card-body">
                <div class="card-content">

                    <!-- table hover -->
                    <div class="table-responsive">
                        <table class="table table-hover" id="cart">
                            <thead>
                                <tr >
                                    <th></th>
                                    <th scope="col" >No</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Durasi</th>

                                    <th scope="col"></th>
                                    <th scope="col"></th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; $grandtotal=0; ?>


                        @if($des->kategori=="camping")
                               <?php
                                    $de = App\Models\Detail_camp::where('kode_tiket',$des->kode_tiket )->first();
                                ?>
                            <div class="form-body">

                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <div class="position-relative">
                                                A/n {{ Auth::user()->name }}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Tempat</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <div class="position-relative">
                                                {{-- {{ dd($des) }} --}}
                                                {{App\Models\Tempat::where('id',$des->tempat_id )->pluck('name')->first()  }}

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Tanggal</label>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <div class="position-relative">
                                                {{ substr($des->tanggal_a,0,10) }} Sampai {{  substr($des->tanggal_b,0,10) }}
                                            </div>
                                        </div>
                                    </div>




                                </div>


                            </div>
                                <tr>
                                    <td></td>
                                    <td>
                                        {{$no++}}
                                    </td>
                                    <td>
                                        @foreach($desc as $key => $descc)
                                        {{-- {{ dd($descc) }} --}}
                                        {{-- {{ substr($descc->id_produk,0,20) }} , --}}
                                        @foreach(App\Models\Camp::where('kode_camp',$descc->id_produk)->get() as $kc)
                                        {{-- {{ dd($kc) }} --}}
                                        {{ $kc->name }},
                                        @endforeach

                                        @endforeach

                                    </td>

                                    <td>
                                        {{ $des->durasi }} Hari
                                    </td>
                                    {{-- <td>
                                        Rp. {{ number_format($des->harga) }}
                                    </td> --}}
                                </tr>
                                @elseif($des->kategori=="event")
                                <div class="form-body">

                                    <div class="row">
                                        <div class="col-md-4">
                                            <label>Name</label>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <div class="position-relative">
                                                    A/n {{ Auth::user()->name }}
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Tempat</label>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <div class="position-relative">
                                                    {{-- {{ dd($des) }} --}}
                                                    {{App\Models\Tempat::where('id',$des->tempat_id )->pluck('name')->first()  }}

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Tanggal</label>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <div class="position-relative">
                                                    <?php
                                                    $kegi = App\Models\Kegiatan::where('kode_kegiatan',$des->id_produk)->first();
                                                    ?>
                                                     <?php
                                                     $tgl_a = date('d F Y',  strtotime($kegi->date_a));
                                                     $tgl_b = date('d F Y',  strtotime($kegi->date_b));
                                                    ?>
                                                 {{ $tgl_a }} - {{ $tgl_b }}</li>


                                                </div>
                                            </div>
                                        </div>
                                           </div>


                                </div>
                                <tr>
                                    <td></td>
                                    <td>
                                        {{$no++}}
                                    </td>
                                    <td>
                                        <?php $tgl_a = date('d F Y',  strtotime($des->tanggal_a)) ?>
                                        {{ $des->name}} x <span class="badge bg-light-success">{{ $des->jumlah }} tiket</span>.

                                    </td>
                                    <td>

                                      {{$des->durasi}} hari

                                    </td>


                                </tr>
                                 @elseif($des->kategori=="kuliner")
                                <tr>
                                    <td></td>
                                    <td>
                                        {{$no++}}
                                    </td>
                                    <td>
                                        <?php $tgl_a = date('d F Y',  strtotime($des->tanggal_a)) ?>
                                        {{ $des->name}} x {{ $des->jumlah }}. Untuk tanggal {{ $tgl_a }}

                                    </td>
                                    <td>
                                       1

                                    </td>

                                    {{-- <td>
                                        Rp. {{ number_format($des->harga) }}
                                    </td> --}}
                                </tr>
                @elseif($des->kategori=="tiket")
                <?php
                $tgl_a = date('d F Y',  strtotime($des->tanggal_a)) ;
                $kode = App\Models\Detail_transaksi :: where('kode_tiket',$des->kode_tiket)->get();
                // dd($kode);
                ?>
                @foreach($kode as $key => $value)
                <tr>

                    <td></td>
                    <td>
                        {{$no++}}
                    </td>
                    <td>
                        {{-- {{ dd($des) }} --}}

                        {{ $value->name}} x {{ $value->jumlah }}. Untuk tanggal {{ $tgl_a }}
                    </td>
                    <td>
                       1

                    </td>

                    {{-- <td>
                        Rp. {{ number_format($des->harga) }}
                    </td> --}}
                </tr>
                @endforeach
                @elseif($des->kategori=="penginapan")
                <?php
                $de = App\Models\Detail_booking::where('kode_tiket',$des->kode_tiket )->first();
            ?>
        <div class="form-body">

            <div class="row">
                <div class="col-md-4">
                    <label>Name</label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <div class="position-relative">
                            A/n {{ Auth::user()->name }}
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <label>Tempat</label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <div class="position-relative">
                            {{-- {{ dd($des) }} --}}
                            {{App\Models\Tempat::where('id',$des->tempat_id )->pluck('name')->first()  }}

                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <label>Tanggal</label>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <div class="position-relative">
                            {{ substr($des->tanggal_a,0,10) }} Sampai {{  substr($des->tanggal_b,0,10) }}
                        </div>
                    </div>
                </div>
            </div>


        </div>
            <tr>
                <td></td>
                <td>
                    {{$no++}}
                </td>
                <td>
                    @foreach($desc as $key => $descc)
                    {{-- {{ dd($descc) }} --}}
                    {{-- {{ substr($descc->id_produk,0,20) }} , --}}
                    @foreach(App\Models\Kamar::where('kode_kamar',$descc->id_produk)->get() as $kc)
                    {{-- {{ dd($kc) }} --}}
                    {{ $kc->name }},
                    @endforeach

                    @endforeach

                </td>

                <td>
                    {{ $des->durasi }} Hari
                </td>

            </tr>

                @else
                 @endif



                                <tr>
                                    <th colspan="3" > Grand Total </th>
                                    <th> Rp. {{ number_format($tiket->harga) }}
                                        <th> </th>
                                </tr>


                            </tbody>
                        </table>

                            @if( $tiket->user_id == Auth::user()->name)
                            <li class="breadcrumb breadcrumb">   <a href="{{ route('pesananku') }}">{{ __('Pesananku') }}</a>
                            <li class="breadcrumb breadcrumb-right">   <a href="{{url('bayar',[$tiket->id])}}"><button class="btn btn-outline-primary"> Pilih Pembayaran</button></a> </li>
                            @else
                            @endif
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
@endif
@endsection
