<!DOCTYPE html>
<html lang="en">


<head>


        <title>Lungo.   </title>
        <link rel="icon" type="image/png" sizes="32x32" href="{{ asset('assets/images/favicon/lungo.png') }}">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <script src="https://kit.fontawesome.com/ad6395cc9e.js" crossorigin="anonymous"></script>


    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/css/bootstrap.css')}}">

    <link rel="stylesheet" href="{{asset('assets/vendors/iconly/bold.css')}}">

    <link rel="stylesheet" href="{{asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.css')}}">
    <link rel="stylesheet" href="{{asset('assets/vendors/bootstrap-icons/bootstrap-icons.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/app.css')}}">
    <link rel="shortcut icon" href="{{asset('assets/images/favicon.svg')}}" type="image/x-icon">
</head>

<header class='mb-3'>

</header>



        <nav class="navbar navbar-light">
            <div class="container d-block">

                <a class="navbar-brand" href="{{ url('/') }}">
                    <i class="fa fa-map-marker"></i>
                    Lungo.
                  </a>
            </div>
        </nav>

        <div id="main-content">

@if(empty($kuliner) || count($kuliner)==0)

<body>
    <nav class="navbar navbar-light">
        <div class="container d-block">

            <button onclick="goBack()" class=""><i class="bi bi-chevron-left"></i></button>

        </div>
    </nav>

    <div class="container">
        <div class="card mt-5">
            <div class="card-header">
                <h4 class="card-title">Cart</h4>
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


            <button onclick="goBack()"><i class="bi bi-chevron-left"></i></button>

        </div>
    </nav>

    <div class="container">
        <div class="card mt-5">
            <div class="card-header">
                <h4 class="card-title">Cart</h4>
            </div>
            <div class="card-body">
                <div class="card-content">

                    <!-- table hover -->
                    <div class="table-responsive">
                        <table class="table table-hover" id="kuliner">
                            <thead>
                                <tr >
                                    <th></th>
                                    <th scope="col" >No</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Harga</th>
                                    <th scope="col">Jumlah</th>
                                    {{-- <th scope="col">Durasi</th> --}}

                                    <th scope="col">Sub Total</th>
                                    <th scope="col"></th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php $no=1; $grandtotal=0; ?>
                                @foreach($kuliner as $key=>$kuliner)
                                <?php
                                $subtotal = $kuliner["harga_produk"] * $kuliner["jumlah"] * $kuliner["durasi"];
                                // dd($subtotal);
                                ?>
                                <tr>
                                    <td></td>
                                    <td>
                                        {{-- {{ dd($kuliner) }} --}}
                                        {{$no++}}
                                    </td>
                                    <td>
                                        {{  $kuliner["nama_produk"] }}
                                    </td>
                                    <td>
                                        Rp. {{ number_format($kuliner["harga_produk"]) }}
                                    </td>

                                    <td>
                                        {{ $kuliner["jumlah"]}}
                                    </td>

                                    <td>
                                        Rp. {{$subtotal}}
                                    </td>
                                    <td>
                                        <a href="{{ url('/cart/hapus/kuliner/'.$key) }}"> Batal </a>
                                    </td>


                                </tr>
                                <?php $grandtotal += $subtotal; ?>
                                @endforeach
                                <tr>
                                    <th colspan="5" > Grand Total </th>
                                    <th> Rp. {{ number_format($grandtotal) }}
                                        <th> </th>
                                </tr>


                            </tbody>
                        </table>
                        <form action="{{ url('/transaksi/tambah/kuliner') }} " method="POST" enctype="multipart/form-data" class="form form-horizontal">
                            @csrf
                            <div class="col-12  d-flex justify-content-end">
                                <div class="form-group">
                                    <label for="last-name-column">Ingin Pesan untuk tanggal berapa ?</label>
                                    <input type="date" class="form-control" id="datepicker"  name="date"
                                        class="form-control @error('date') is-invalid @enderror" required>

                                </div>
                            </div>
                            <div class="col-12 d-flex justify-content-end">
                                <button type="submit"
                                    class="btn btn-primary me-1 mb-1"> Beli</button>
                                <button type="reset"
                                    class="btn btn-light-secondary me-1 mb-1">Reset</button>
                            </div>

                          </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>



@endif



</body>


<script>
function goBack() {
  window.history.back();
}
</script>
<script>
    function reloadpage()
    {
    location.reload()
    }
    </script>
<script src="{{asset('assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
<script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>


<script src="{{asset('assets/js/main.js')}}"></script>


</html>

