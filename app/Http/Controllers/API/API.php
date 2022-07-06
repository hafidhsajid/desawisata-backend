<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Detail_transaksi;
use App\Models\Event;
use App\Models\EventBooking;
use App\Models\Kamar;
use App\Models\Kuliner;
use App\Models\Tiket;
use App\Models\User;
use App\Models\Wahana;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class API extends Controller
{
    //
    public function wahana()
    {
        $wahana  = new Wahana();
        $wahana  = $wahana->get();
        return response()->json($wahana);
    }

    public function createwahana(Request $request)
    {
        $wahana  = new Wahana();
        $wahana->name = $request->name;
        $wahana->tempat_id = $request->tempat_id;
        $wahana->deskripsi = $request->deskripsi;
        $wahana->harga = $request->harga;
        $wahana->image = '7Lc8xmt78n8teJXlDUgvlOrJDVSBt4BBtDhSt2Xh.jpg';
        if ($wahana->save()) {
            return response()->json(array('data'=>'Success'));
        }else{
            return response()->json(array('data'=>'Failed create'));
        }
    }
    public function editwahana(Request $request)
    {
        // dd($request->id);
        $wahana  = wahana::find($request->id);
        $wahana->name = $request->name;
        $wahana->tempat_id = $request->tempat_id;
        $wahana->deskripsi = $request->deskripsi;
        $wahana->harga = $request->harga;
        // $wahana->image = '7Lc8xmt78n8teJXlDUgvlOrJDVSBt4BBtDhSt2Xh.jpg';
        if ($wahana->save()) {
            return response()->json(array('data'=>'Success'));
        }else{
            return response()->json(array('data'=>'Failed create'));
        }
    }
    public function deletewahana(Request $request)
    {
        $wahana  = Wahana::find($request->id);
        if ($wahana != null) {
            $wahana->delete();
            return response()->json(array('data'=>'Success'));
        }else{
            return response()->json(array('data'=>'Failed create'));
        }

        return response()->json($wahana);
    }
    public function kuliner()
    {
        $kuliner = new Kuliner();
        $kuliner = $kuliner->get();
        return response()->json($kuliner);
    }
    public function kamar()
    {
        $kamar = new Kamar();
        $kamar = $kamar->get();
        return response()->json($kamar);
    }
    public function event()
    {
        $event = new EventBooking();
        $event = $event->get();
        return response()->json($event);
    }
    public function user()
    {
        $user = new User();
        $user = $user->get();
        return response()->json($user);
    }
    public function getCart()
    {
        if (Auth::check()) {
            $cart = session('cart');
            return response()->json($cart);

        } else {
            return response()->json(['data'=>'Login First'],401);
        }

    }
    public function addCart(Request $request)
    {
        $cart = session("cart");
        $kode = "W001";
        $request->tempat_id = 4;
        $request->durasi = 1;
        $request->kategori = "wahana";
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
        return response()->json(['data'=>' Berhasil menambahkan ke cart :)']);
    }
    public function getTransaksi()
    {
        if (Auth::check()) {
            $transaksi = Detail_transaksi::where('user_id', Auth::user()->id)->get();
            return response()->json($transaksi);

        } else {
            return response()->json(['data'=>'Login First'],401);
        }

    }
    public function getPesanan()
    {
        if (Auth::check()) {
            $tiket = Tiket::where('user_id', Auth::user()->id)->get();
            return response()->json($tiket);

        } else {
            return response()->json(['data'=>'Login First'],401);
        }

    }
    public function login(Request $request)
    {
        $login = User::where('email',$request->email)->first();
        if ($login!=null) {
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                return response()->json(['data'=>$login]);
            } else {
                return response()->json(['data'=>'Failed Login'],401);
            }

        }else{
            return response()->json(['data'=>'Email not found'],401);
        }
    }
    public function checkLogin()
    {
        $check = Auth::check();
        return response()->json(['data'=>$check]);
    }
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();

        return response()->json(array('data'=>'Loggedout'));
    }
}
