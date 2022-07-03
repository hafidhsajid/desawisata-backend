<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\Tiket;
use App\Models\Tempat;
use Illuminate\Support\Facades\Auth;
use App\Models\Wahana;
use App\Models\Detail_transaksi;
use App\Models\Camp;
use App\Models\Detail_booking;
use Carbon;
use App\Models\Kuliner;
use App\Models\Pay;
use Illuminate\Support\Arr;
use App\Models\Detail_camp;
use App\Models\EventBooking;
use App\Models\EventCamping;
use App\Models\Kamar;
use App\Models\Kegiatan;

class TiketController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->orderby('id', 'desc')->first('id');

        // $petugas = $
        $tiket  = Tiket::where('tempat_id', $tempat->id)->orderby('id', 'desc')->get();

        return view('wisata.tiket.index', compact('tiket'));
    }
    function order(Request $request)
    {
        //

        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();

        $id = $tempat->id;
        $detail = Detail_transaksi::where('tempat_id', $id)->orderby('id', 'desc')->get();

        // dd($detail);


        // return view('wisata.tiket.order', compact('tiket'));
        return view('wisata.tiket.order', compact('detail', 'id'));
    }
    function orderk(Request $request)
    {
        //

        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();

        $id = $tempat->id;
        $detail = Detail_transaksi::where('tempat_id', $id)->orderby('id', 'desc')->get();

        // dd($detail);


        // return view('wisata.tiket.order', compact('tiket'));
        return view('kuliner.tiket.order', compact('detail', 'id'));
    }
    function booking(Request $request)
    {
        //

        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();

        $id = $tempat->id;
        $detail = Detail_transaksi::where('tempat_id', $id)->orderby('id', 'desc')->get();

        // dd($detail);


        // return view('wisata.tiket.order', compact('tiket'));
        return view('kuliner.tiket.order', compact('detail', 'id'));
    }
    function checkw(Request $request)
    {
        //

        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();

        $id_tempat = $tempat->id;
        $detail = Detail_transaksi::where('tempat_id', $id_tempat)->get();


        // dd($detail);

        switch ($request->submit) {
            case 'todo':

                $id = $request->order_id;

                $data = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->get();
                $data2 = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->where('kategori', '!=', 'booking')->where('kategori', '!=', 'kuliner')->get();

                if ($data2 == null) {
                    $kosong = 0;
                    Toastr::warning('Kode ID ini Tidak Valid !', 'Gagal !');
                    return view('kuliner.tiket.check', compact('kosong'));
                }
                $user = Tiket::where('kode', $id)->first();
                if ($user == null) {
                    $kosong = 0;
                    return view('wisata.tiket.check', compact('kosong'));
                }
                $detailcamp = Detail_camp::where('kode_tiket', $id)->first();
                $detailcamp2 = Detail_camp::where('kode_tiket', $id)->get();
                // dd($detailcamp);
                if ($detailcamp != null) {
                    $datacamp = $detailcamp;
                    $pay = Pay::where('kodeku', $id)->first();
                    $datades = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->first();
                    // dd($detailcamp2);

                    return view('wisata.tiket.check', compact('datacamp', 'detailcamp2', 'user', 'datades', 'pay', 'id'));
                }
                $pay = Pay::where('kodeku', $id)->first();
                // dd($pay);
                return view('wisata.tiket.check', compact('data', 'user', 'pay', 'id'));
                break;
        }
        $cek = "yo";

        // return view('wisata.tiket.order', compact('tiket'));
        return view('wisata.tiket.check', compact('detail', 'cek'));
    }
    function checkk(Request $request)
    {
        //

        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();

        $id_tempat = $tempat->id;
        $detail = Detail_transaksi::where('tempat_id', $id_tempat)->get();


        // dd($detail);

        switch ($request->submit) {
            case 'todo':

                $id = $request->order_id;

                $data = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->where('kategori', 'kuliner')->get();
                $data2 = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->where('kategori', 'kuliner')->first();

                $user = Tiket::where('kode', $id)->first();
                if ($user == null) {
                    $kosong = 0;
                    return view('kuliner.tiket.check', compact('kosong'));
                }
                if ($data2 == null) {
                    $kosong = 0;
                    Toastr::warning('Kode ID ini Tidak Valid !', 'Gagal !');
                    return view('kuliner.tiket.check', compact('kosong'));
                }


                $pay = Pay::where('kodeku', $id)->first();
                // dd($pay);
                return view('kuliner.tiket.check', compact('data', 'user', 'pay', 'id'));
                break;
        }

        $cek = "yo";
        // return view('wisata.tiket.order', compact('tiket'));
        return view('kuliner.tiket.check', compact('detail', 'cek'));
    }
    function checkp(Request $request)
    {
        //

        $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
        // dd($tempat);
        $id_tempat = $tempat->id;
        $detail = Detail_transaksi::where('tempat_id', $id_tempat)->get();
        // dd($detail);

        // dd($detail);

        switch ($request->submit) {
            case 'todo':

                $id = $request->order_id;

                // dd($id);
                // dd($data);
                $user = Tiket::where('kode', $id)->first();
                // dd($user);
                if ($user == null) {
                    Toastr::warning('Kode ID ini Tidak Valid !', 'Gagal !');
                    return view('penginapan.tiket.check', compact('kosong'));
                }
                // $data = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->where('kategori', 'penginapan')->get();
                $data = Tiket::where('kode', $id)->first();
                $data2 = Detail_transaksi::where('kode_tiket', $id)->where('tempat_id', $id_tempat)->where('kategori', 'penginapan')->first();
                // dd($data);

                if ($data2 == null) {
                    $kosong = 0;
                    Toastr::warning('Kode ID ini Tidak Valid !', 'Gagal !');
                    return view('penginapan.tiket.check', compact('kosong'));
                }

                $pay = Pay::where('kodeku', $id)->first();
                // dd($pay);
                $db = Detail_booking::where('kode_tiket', $id)->first();
                $db2 = Detail_booking::where('kode_tiket', $id)->get();
                $cek = Detail_booking::where('kode_tiket', $id)->first();
                $ck = (int)$cek->status;
                // dd($ck);
                return view('penginapan.tiket.check', compact('db', 'db2', 'data', 'data2', 'user', 'pay', 'id', 'ck'));
                break;
        }
        $cek = "yo";
        // return view('wisata.tiket.order', compact('tiket'));
        return view('penginapan.tiket.check', compact('detail', 'cek'));
    }


    public function updatekedatangan($id)
    {
        date_default_timezone_set('Asia/Jakarta');


        if (
            Detail_transaksi::orderby('id', 'desc')
            ->where('kode_tiket', $id)
            ->where('kedatangan', '1')
            ->exists()
        ) {
            Toastr::warning('Kode ID ini sudah terpakai :)', 'Gagal !');
            return redirect()->back();
        }
        $granddana = 0;
        $tanggal_b = Carbon\Carbon::now()->format('Y-m-d H:i:s');
        $detail = Detail_transaksi::where('kode_tiket', $id)->get();
        foreach ($detail as $dt => $detail) {
            $uang = $detail->harga;
            $detail->kedatangan = 1;
            $detail->tanggal_b = $tanggal_b;
            $detail->save();
            $granddana += $uang;
            $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->where('id', $detail->tempat_id)->first();
            $tempat->update([
                'dana' => $tempat->dana += $granddana,
            ]);
        }




        Toastr::info('Thanks :)', 'Success');
        return redirect()->back();
    }
    public function updatekedatangank($id)
    {
        date_default_timezone_set('Asia/Jakarta');


        if (
            Detail_transaksi::orderby('id', 'desc')
            ->where('kode_tiket', $id)
            ->where('kedatangan', '1')
            ->exists()
        ) {
            Toastr::warning('Kode ID ini sudah terpakai :)', 'Gagal !');
            return redirect()->back();
        }
        $granddana = 0;
        $tanggal_b = Carbon\Carbon::now()->format('Y-m-d');
        $detail = Detail_transaksi::where('kode_tiket', $id)->get();
        foreach ($detail as $dt => $detail) {
            $uang = $detail->harga;
            $detail->kedatangan = 1;
            $detail->tanggal_b = $tanggal_b;
            $detail->save();
            $granddana += $uang;
            $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->where('id', $detail->tempat_id)->first();
            $tempat->update([
                'dana' => $tempat->dana += $granddana,
            ]);
        }




        Toastr::info('Thanks :)', 'Success');
        return redirect()->back();
    }
    public function updatekedatanganp($id)
    {
        date_default_timezone_set('Asia/Jakarta');


        if (
            Detail_transaksi::orderby('id', 'desc')
            ->where('kode_tiket', $id)
            ->where('kedatangan', '1')
            ->exists()
        ) {
            Toastr::warning('Kode ID ini sudah terpakai :)', 'Gagal !');
            return redirect()->back();
        }
        $granddana = 0;

        $tanggal_b = Carbon\Carbon::now()->format('Y-m-d H:i:s');
        $detail = Detail_transaksi::where('kode_tiket', $id)->get();

        foreach ($detail as $dt => $detail) {
            $uang = $detail->harga;
            $detail->kedatangan = 1;
            $detail->tanggal_b = $tanggal_b;
            $detail->save();
            $granddana += $uang;
            $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->where('id', $detail->tempat_id)->first();
            $tempat->update([
                'dana' => $tempat->dana += $granddana,
            ]);
        }
        $book = Detail_booking::where('kode_tiket', $id)->get();
        foreach ($book as $bk => $book) {

            $book->status = 1;
            $book->checkinn = $tanggal_b;
            $book->save();
            $granddana += $uang;
            $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->where('id', $detail->tempat_id)->first();
            $tempat->update([
                'dana' => $tempat->dana += $granddana,
            ]);
        }
        Toastr::info('Thanks :)', 'Success');
        return redirect()->back();
    }
    public function updatekedatanganp2($id)
    {
        date_default_timezone_set('Asia/Jakarta');


        if (
            Detail_transaksi::orderby('id', 'desc')
            ->where('kode_tiket', $id)
            ->where('kedatangan', '2')
            ->exists()
        ) {
            Toastr::warning('Kode ID ini sudah terpakai :)', 'Gagal !');
            return redirect()->back();
        }
        $granddana = 0;

        $tanggal_b = Carbon\Carbon::now()->format('Y-m-d H:i:s');

        $book = Detail_booking::where('kode_tiket', $id)->get();
        foreach ($book as $bk => $book) {

            $book->status = 2;
            $book->checkoutt = $tanggal_b;
            $book->save();
        }
        if ($book->save()) {
            Toastr::info('Thanks :)', 'Success');
        }
        return redirect()->back();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    function cart()
    {
        //

        $cart = session("cart");
        // dd($cart);
        // session()->forget("cart");
        return view("cart")->with("cart", $cart);
    }


    function do_tambah_cart(Request $request, $kode)
    {
        //
        $cart = session("cart");
        // dd($request);
        $produk = Wahana::where('kode_wahana', $kode)->first();
        $cart[$kode] = [
            "kode_produk" => $produk->kode,
            "kategori" => $request->kategori,
            "durasi" => "1",
            "user_id" => $request->user_id,
            "nama_produk" =>  "Tiket Wahana " . $produk->name,
            "harga_produk" => $produk->harga,
            "jumlah" => $request->jumlah,
            "tanggal_a" => "0",
            "tanggal_b" => "0",
            "tempat_id" => $request->tempat_id,

        ];
        // dd($cart);
        session(["cart" => $cart]);
        Toastr::success(' Berhasil menambahkan ke cart :)', 'Success');
        // return redirect()->back();
        return redirect("/cart");
    }
    function cart_kuliner()
    {
        //
        $kuliner = session("kuliner");
        // dd($kuliner);
        // session()->forget("kuliner");
        return view("cart.kuliner", compact('kuliner'))->with("kuliner", $kuliner);
    }
    function cart_camping(Request $request)
    {
        // return redirect()->back();
        $cartc = session("cartc");
        $camping = session("camping");
        if ($cartc == null) {
            $i = 0;
            $kosong = 1;
        } else {
            $i = 1;
            $kosong = 0;
        }
        // dd($request);
        // session()->forget("cart");
        // session()->forget("camping");
        // session()->forget("cartcamping");
        // dd($request);
        // session()->forget("cart");
        return view("cart/camping", compact('camping', 'i', 'kosong'))->with("cartc", $cartc);
    }
    function do_tambah_kuliner(Request $request, $kode)
    {
        //
        $kuliner = session("kuliner");
        // dd($request);
        $produk = Kuliner::where('kode_kuliner', $kode)->first();
        $kuliner[$kode] = [
            "kode_produk" => $produk->kode_kuliner,
            "user_id" => Auth::user()->id,
            "durasi" => "1",
            "kategori" => $request->kategori,
            "nama_produk" =>   $produk->name,
            "harga_produk" => $produk->harga,
            "jumlah" => $request->jumlah,
            "tanggal_a" => $request->tanggal_a,
            "tanggal_b" => "0",
            "tempat_id" => $request->tempat_id,

        ];
        // dd($kuliner);
        session(["kuliner" => $kuliner]);
        return redirect("/cart/kuliner");
    }
    function do_tambah_cart_tiket(Request $request, $id)
    {
        $tanggal_a = Carbon\Carbon::now();
        // dd($tanggal_a);
        //
        $cart = session("cart");
        // dd($request->jml_orang);
        $tiket = Tempat::where('id', $id)->first();

        $cart[$id] = [
            "kode_produk" => $tiket->id,
            "kategori" => $request->kategori,
            "user_id" => $request->user_id,
            "durasi" => "1",
            "tanggal_a" => "0",
            "tanggal_b" => "0",
            "nama_produk" => "Tiket " . $tiket->name,
            "harga_produk" => $tiket->htm,
            "tempat_id" => $request->tempat_id,

            "jumlah" => $request->jml_orang,
        ];
        // dd($cart);
        session(["cart" => $cart]);
        return redirect("/cart");
    }
    function do_tambah_cart_camp(Request $request, $kode)
    {
        date_default_timezone_set('Asia/Jakarta');
        //
        $cartc = session("cartc");
        // dd($request->jml_orang);
        $camp = Camp::where('kode_camp', $kode)->first();
        // dd($request);
        $cartc[$kode] = [
            "kode_produk" => $camp->kode_camp,
            "kategori" => "camping",
            "user_id" => Auth::user()->id,
            "nama_produk" => $camp->name,
            "harga_produk" => $camp->harga,
            "jumlah" => 1,
            "durasi" => $request->durasi,
            "tanggal_a" => $request->tanggal_a,
            "tanggal_b" => $request->tanggal_b,
            "tempat_id" => $request->tempat_id,
        ];
        // dd($cart);
        session(["cartc" => $cartc]);
        // return redirect()->back()
        return redirect("/cart/camping");
    }
    function do_hapus_cart($kode)
    {
        //
        $cart = session("cart");
        unset($cart[$kode]);
        session(["cart" => $cart]);
        return redirect("/cart");
    }
    function do_hapus_cart_camping($kode)
    {
        //
        $cartc = session("cartc");
        unset($cartc[$kode]);
        session(["cartc" => $cartc]);
        return redirect("/cart/camping");
    }
    function do_hapus_cart_kuliner($kode)
    {
        //
        $kuliner = session("kuliner");
        unset($kuliner[$kode]);
        session(["kuliner" => $kuliner]);
        return redirect("/cart/kuliner");
    }



    function do_tambah_transaksi(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        $cart = session("cart");
        // $kuliner = session("kuliner");
        // dd($cart);
        $data = Tiket::max('id');
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        $checkout_kode = $huruf . $urutan . uniqid();
        // dd($request->date);

        // dd($cart);
        $tiket = Tiket::where('user_id', Auth::user()->id)->orderby('id', 'desc')->get();
        $grandtotal = 0;
        // $tempatsesi = session("tempatsesi");

        foreach ($cart as $ct => $val) {

            $kode_tiket = $checkout_kode;
            $id_produk = $ct;
            $kategori = $val["kategori"];
            $name = $val["nama_produk"];
            $durasi = $val["durasi"];
            $user_id = Auth::user()->id;
            $tanggal_a = $request->date;
            $tanggal_b = $val["tanggal_b"];
            $jumlah = $val["jumlah"];
            $tempat_id = $val["tempat_id"];

            $subtotal = $val["harga_produk"] * $val["jumlah"] * $val["durasi"];
            $grandtotal += $subtotal;
            Detail_transaksi::tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $id_produk,  $jumlah, $name, $durasi, $tanggal_a, $tanggal_b);
        }
        // dd($tempat);


        Tiket::create([
            // 'token' => $token,
            'kode' => $checkout_kode,
            'user_id' => Auth::user()->id,
            'name' => Auth::user()->name,
            'email' => Auth::user()->email,
            'telp' => Auth::user()->telp,
            'harga' => $grandtotal,

        ]);




        session()->forget("cart");
        return redirect("pesananku");
    }
    function do_batal_transaksi(Request $request, $kode)
    {

        $tiket = Tiket::where('id', $kode)->first();
        $id = $tiket->kode;
        $tiketDelete = $tiket->delete();
        $dt = Detail_transaksi::where('kode_tiket', $id)->get();
        // dd($dt);
        if (!$dt == null) {
            foreach ($dt as $key => $dt) {
                // dd($dt);
                $dtdelete = $dt->delete();
            }
        }

        $db = Detail_booking::where('kode_tiket', $id)->get();
        // dd($db);
        if (!$db == null) {
            foreach ($db as $key => $db) {
                $dtdelete = $db->delete();
            }
        }
        // $dbdelete = $db->delete();

        $dc = Detail_camp::where('kode_tiket', $id)->get();
        if (!$dc == null) {
            foreach ($dc as $key => $dc) {
                $dcdelete = $dc->delete();
            }
        }
        $eb = EventBooking::where('kode_tiket', $id)->get();
        if (!$eb == null) {
            foreach ($eb as $key => $eb) {
                $ebdelete = $eb->delete();
            }
        }
        Toastr::success(' Berhasil menmbatalkan pesanan :)', 'Success');
        return redirect("pesananku");
    }


    function do_tambah_transaksi_kuliner(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');

        $kuliner = session("kuliner");

        $data = Tiket::max('id');
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        $checkout_kode = $huruf . $urutan . uniqid();
        // dd($request->date);


        $tiket = Tiket::where('user_id', Auth::user()->id)->orderby('id', 'desc')->get();
        $grandtotal = 0;
        // $tempatsesi = session("tempatsesi");

        foreach ($kuliner as $ct => $val) {

            $kode_tiket = $checkout_kode;
            $id_produk = $ct;
            $kategori = $val["kategori"];
            $name = $val["nama_produk"];
            $durasi = $val["durasi"];
            $user_id = Auth::user()->id;
            $tanggal_a = $request->date;
            // dd($tanggal_a);
            $tanggal_b = $val["tanggal_b"];
            $jumlah = $val["jumlah"];
            $tempat_id = $val["tempat_id"];

            $subtotal = $val["harga_produk"] * $val["jumlah"] * $val["durasi"];
            $grandtotal += $subtotal;
            Detail_transaksi::tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $id_produk,  $jumlah, $name, $durasi, $tanggal_a, $tanggal_b);
        }
        // dd($tempat);


        Tiket::create([
            // 'token' => $token,
            'kode' => $checkout_kode,
            'user_id' => Auth::user()->id,
            'name' => Auth::user()->name,
            'email' => Auth::user()->email,
            'telp' => Auth::user()->telp,
            'harga' => $grandtotal,

        ]);

        session()->forget("kuliner");
        return redirect("pesananku");
    }

    function do_tambah_transaksi_camping(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        $cartc = session("cartc");
        $camping = session("camping");
        // dd($request);

        $totalbayar = $request->total;
        foreach ($cartc as $ct => $val) {
            $durasii = (int)$val["durasi"];
            $coba = Camp::where('kode_camp', $ct)->where('kategori', 'makan')->exists();
        }




        foreach ($camping as $ct => $val) {
            // $durasii = (int)$val["durasi"];

            $tanggal_a = $val["date"];
            $tanggal_b = $val["date2"];
            $tempat_id = $val["tempat_id"];
            $tempat_name = $val["tempat_name"];
            $jumlah_orang = (int)$val["jumlah_orang"];
            $makan = $val["makan"];
            if ($makan == "include") {
                $inc = 1;
            } else {
                $inc = 0;
            }
        }

        if ($makan == "include" && $coba == false) {
            Toastr::error(' Belum memilih paket makanan', 'Danger');
            return redirect()->back();
        }



        $data = Tiket::max('id');
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        $checkout_kode = $huruf . $urutan . uniqid();
        // dd($request->date);

        if ($durasii >= 1) {
            for ($i = 0; $i <= $durasii; $i++) {
                $eventtgl = date('Y-m-d ', strtotime('+' . $i . 'day', strtotime($tanggal_a)));
                // dd($eventtgl);
                foreach ($cartc as $ct => $val) {
                    // dd($ct);
                    $kate = Camp::where('kode_camp', $ct)->first();
                    if ($kate->kategori == "alat") {
                        EventCamping::create([

                            'camp_id' => $val["kode_produk"],
                            'title' => "pending",
                            'tempat_id' => $tempat_id,
                            'date' => $eventtgl,
                            'kode' => $checkout_kode,
                        ]);
                    }
                }
            }
        }
        if ($makan == "include") {
        }


        // $tiket = Tiket::where('user_id', Auth::user()->id)->orderby('id', 'desc')->get();
        $grandtotal = 0;
        // $tempatsesi = session("tempatsesi");
        // dd($cartc);
        foreach ($cartc as $ct => $val) {

            $kode_tiket = $checkout_kode;
            $id_produk = $ct;
            $kategori = "camping";
            $name = "Paket Camping";
            $durasi = $val["durasi"];
            $user_id = Auth::user()->id;
            $tanggal_a = $val["tanggal_a"];
            // dd($tanggal_a);
            $tanggal_b = $val["tanggal_b"];
            $jumlah = $val["jumlah"];
            $tempat_id = $val["tempat_id"];
            $subtotal = (int)$val["harga_produk"] * $val["jumlah"] * (int)$val["durasi"];
            // $subtotal = $totalbayar;
            Detail_transaksi::tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $id_produk,  $jumlah, $name, $durasi, $tanggal_a, $tanggal_b);
            $data = Detail_camp::max('kode_camping');
            $huruf = "DC";
            $urutan = (int)substr($data, 3, 3);
            $urutan++;
            $camp_id = $huruf . sprintf("%04s", $urutan);
            Detail_camp::create([
                // 'token' => $token,
                'kode_tiket' => $checkout_kode,
                'user_id' => Auth::user()->id,
                'name' => Auth::user()->name,
                'tempat_id' => $val["tempat_id"],
                'tempat_name' => $tempat_name,
                'date' => $tanggal_a,
                'date2' => $tanggal_b,
                'jumlah_orang' => $jumlah_orang,
                'makan' => $makan,
                'durasi' => $durasii,
                'alat_id' => $id_produk,
                'jumlah_tenda' => 1,
                'makan_durasi' => $durasii,
                'harga' => $subtotal,
                'kode_camping' => $camp_id,

            ]);
        }
        // dd($tempat);


        Tiket::create([
            // 'token' => $token,
            'kode' => $checkout_kode,
            'user_id' => Auth::user()->id,
            'name' => Auth::user()->name,
            'email' => Auth::user()->email,
            'telp' => Auth::user()->telp,
            'harga' => $totalbayar,

        ]);

        session()->forget("cartc");
        session()->forget("camping");

        return redirect("pesananku");
    }

    function do_tambah_transaksi_booking(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');

        $penginapan = session("penginapan");
        $penginapan2 = session("penginapan");
        // dd($request);
        $totalbayar = $request->total;
        $durasii = $request->durasi;
        $tempat_id = $request->tempat_id;
        $tanggal_a = $request->checkin;

        $data = Tiket::max('id');
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        $checkout_kode = $huruf . $urutan . uniqid();

        if ($durasii >= 1) {
            for ($i = 0; $i <= $durasii; $i++) {
                // dd($i);
                $eventtgl = date('Y-m-d ', strtotime('+' . $i . 'day', strtotime($tanggal_a)));
                // dd($eventtgl);
                foreach ($penginapan as $ct => $val) {
                    EventBooking::create([

                        'kamar_id' => $val["kode_kamar"],
                        'title' => "pending",
                        'tempat_id' => $tempat_id,
                        'date' => $eventtgl,
                        'kode_tiket' => $checkout_kode,
                    ]);
                }
            }
        }



        foreach ($penginapan2 as $ct => $val) {

            $kode_tiket = $checkout_kode;
            $id_produk = $ct;
            $kategori = "penginapan";
            $name = "Reservasi Penginapan";
            $durasi = $val["durasi"];
            $user_id = Auth::user()->id;
            $tanggal_a = $val["checkin"];
            // dd($tanggal_a);
            $tanggal_b = $val["checkout"];
            $jumlah = $val["jumlah_kamar"];
            $tempat_id = $val["tempat_id"];
            $tempat_name = $val["tempat_name"];
            $kamarr = Kamar::where('kode_kamar', $ct)->first();
            $hargakamar = $kamarr->harga;
            // dd($hargakamar);
            $subtotal = (int)$hargakamar * (int)$val["durasi"];
            // $subtotal = $totalbayar;
            Detail_transaksi::tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $id_produk,  $jumlah, $name, $durasi, $tanggal_a, $tanggal_b);

            $data = Detail_booking::max('kode_booking');
            $huruf = "DB";
            $urutan = (int)substr($data, 3, 3);
            $urutan++;
            $book_id = $huruf . sprintf("%04s", $urutan);
            Detail_booking::create([
                // 'token' => $token,
                'kode_tiket' => $checkout_kode,
                'user_id' => Auth::user()->id,
                'name' => Auth::user()->name,
                'tempat_id' => $val["tempat_id"],
                'tempat_name' => $tempat_name,
                'checkin' => $request->checkin,
                'checkout' => $request->checkout,
                'jumlah_orang' => $request->jumlah_orang,
                'kamar_id' => $ct,
                'jumlah_kamar' => 1,
                'durasi' => $request->durasi,
                'subtotal' =>  $subtotal,
                'kode_booking' => $book_id,
                'status' => 0,

            ]);
        }
        // dd($tempat);


        Tiket::create([
            // 'token' => $token,
            'kode' => $checkout_kode,
            'user_id' => Auth::user()->id,
            'name' => Auth::user()->name,
            'email' => Auth::user()->email,
            'telp' => Auth::user()->telp,
            'harga' => $totalbayar,

        ]);

        session()->forget("penginapan");
        // session()->forget("camping");

        return redirect("pesananku");
    }

    function do_tambah_transaksi_event(Request $request)
    {
        // dd($request);
        date_default_timezone_set('Asia/Jakarta');

        $eve = Kegiatan::find($request->id);
        if ((int)$request->jumlah > $eve->kapasitas) {
            Toastr::info('Jumlah melebihi kapasitas', 'Gagal ');
            return redirect()->back();
        }

        $data = Tiket::max('id');
        // dd($data);
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        $checkout_kode = $huruf . $urutan . uniqid();


        // dd($eve);
        $formatted_dt1 = Carbon\Carbon::parse($eve->date_a);
        $formatted_dt2 = Carbon\Carbon::parse($eve->date_b);

        $durasii = $formatted_dt1->diffInDays($formatted_dt2);
        $kode_tiket = $checkout_kode;
        $id_produk = $request->kodeevent;
        $kategori = "event";
        $name = $eve->name;
        $durasi = $durasii;
        $user_id = Auth::user()->id;
        $tanggal_a = Carbon\Carbon::now()->format('Y-m-d');

        $tanggal_b = 0;
        $jumlah = $request->jumlah;
        $tempat_id = $eve->tempat_id;
        $subtotal = (int)$eve->harga * (int)$request->jumlah;

        // dd($eve->harga, $request->jumlah, $subtotal);
        // $subtotal = $totalbayar;
        Detail_transaksi::tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $id_produk,  $jumlah, $name, $durasi, $tanggal_a, $tanggal_b);

        Tiket::create([
            // 'token' => $token,
            'kode' => $checkout_kode,
            'user_id' => Auth::user()->id,
            'name' => Auth::user()->name,
            'email' => Auth::user()->email,
            'telp' => Auth::user()->telp,
            'harga' => $subtotal,

        ]);
        return redirect("pesananku");
    }



    public function beli(Request $request, $name)
    {

        $harga = ($request->htm) * ($request->jml_orang);
        $data = Tiket::max('id');
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        if (
            Tiket::where('token', $request->_token)

            ->exists()
        ) {
            $tiket = Tiket::where('user_id', Auth::user()->id)->get();
            return view('pesananku', compact('tiket'));
        } else {
            $token = $request->_token;
            $Buat = Tiket::create([
                'token' => $token,
                'kode' => $huruf . $urutan . uniqid(),
                'user_id' =>  $request->user_id,
                'tempat_id' =>  $request->tempat_id,
                'jml_orang' => $request->jml_orang,
                'name' => $request->name,
                'email' => $request->email,
                'telp' => $request->telp,
                'harga' => $harga,

            ]);
            $tiket = Tiket::where('user_id', Auth::user()->id)->orderby('id', 'desc')->get();
            Toastr::success('Ditempatkan ke pesanan mu :> Segera bayar ya', 'Success');
            return redirect()->route('pesananku');
            // return view('pesananku', compact('tiket'));
        }
    }
}
