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
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

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
        if (
            $request->name == null ||
            $request->tempat_id == null ||
            $request->deskripsi == null ||
            $request->harga == null
        ) {
            return response()->json(array('data' => 'Failed create'), 401);
        }
        $wahana  = new Wahana();
        $wahana->name = $request->name;
        $wahana->tempat_id = $request->tempat_id;
        $wahana->deskripsi = $request->deskripsi;
        $wahana->harga = $request->harga;
        $wahana->image = '7Lc8xmt78n8teJXlDUgvlOrJDVSBt4BBtDhSt2Xh.jpg';
        if ($wahana->save()) {
            return response()->json(array('data' => 'Success'));
        } else {
            return response()->json(array('data' => 'Failed create'), 401);
        }
    }
    public function editwahana(Request $request)
    {
        if (
            $request->name == null ||
            $request->tempat_id == null ||
            $request->deskripsi == null ||
            $request->harga == null
        ) {
            return response()->json(array('data' => 'Failed update'), 401);
        }
        $wahana  = wahana::find($request->id);
        $wahana->name = $request->name;
        $wahana->tempat_id = $request->tempat_id;
        $wahana->deskripsi = $request->deskripsi;
        $wahana->harga = $request->harga;
        // $wahana->image = '7Lc8xmt78n8teJXlDUgvlOrJDVSBt4BBtDhSt2Xh.jpg';
        if ($wahana->save()) {
            return response()->json(array('data' => 'Success'));
        } else {
            return response()->json(array('data' => 'Failed update'), 401);
        }
    }
    public function deletewahana(Request $request)
    {
        $wahana  = Wahana::find($request->id);
        if ($wahana != null) {
            $wahana->delete();
            return response()->json(array('data' => 'Success'));
        } else {
            return response()->json(array('data' => 'Failed create'));
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
    public function getCart(Request $request)
    {
        if ($request->id != null) {
            $cart = session('cart');
            return response()->json($cart);
        } else {
            return response()->json(['data' => 'Login First'], 401);
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
        return response()->json(['data' => ' Berhasil menambahkan ke cart :)']);
    }
    public function getTransaksi(Request $request)
    {
        if ($request->id != null) {
            $transaksi = Detail_transaksi::where('user_id', $request->id)->get();
            return response()->json($transaksi);
        } else {
            return response()->json(['data' => 'Login First'], 401);
        }
    }
    public function addTransaksi(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        $data = Tiket::max('id');
        $urutan = (int)($data);
        $urutan++;
        $huruf =  "LT-";
        $checkout_kode = $huruf . $urutan . uniqid();

        $grandtotal = 0;
        $data = json_decode($request->datauser);
        if (!isset($data->user_id)) {
            return response()->json(['data' => 'Login First'], 401);
        }
        $user_id = $data->user_id;
        foreach (json_decode($request->dataproduk) as $key) {
            // var_dump($key->nama);
            echo '<br>';
            $kode_tiket = $checkout_kode;
            $id_produk = $key->id;
            $kategori = 4;
            $name = $key->nama;
            $durasi = "1";
            $harga = $key->harga;
            $user_id = $data->user_id;
            $tanggal_a = $request->date;
            $tanggal_b = 0;
            $jumlah = $key->qty;
            $tempat_id = $key->id;

            $subtotal = $harga * $jumlah * $durasi;
            $grandtotal += $subtotal;
            $tmp = [
                'user_id  :'.$user_id,
                'kategori  :'.$kategori,
                'tempat_id  :'.$tempat_id,
                'subtotal  :'.$subtotal,
                'kode_tiket  :'.$kode_tiket,
                'id_produk  :'.$id_produk,
                'jumlah  :'.$jumlah,
                'name  :'.$name,
                'durasi  :'.$durasi,
                'tanggal_a  :'.$tanggal_a,
                'tanggal_  :'.$tanggal_b
            ];
            echo $kode_tiket;
            var_dump($tmp);
            Detail_transaksi::tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $id_produk,  $jumlah, $name, $durasi, $tanggal_a, $tanggal_b);
        }

        Tiket::create([
            // 'token' => $token,
            'kode' => $checkout_kode,
            'user_id' => $data->user_id,
            'name' => $data->name,
            'email' => $data->email,
            'telp' => $data->telp,
            'harga' => $grandtotal,

        ]);
    }
    public function getPesanan(Request $request)
    {
        if ($request->id != null) {
            $tiket = Tiket::where('user_id', $request->id)->get();
            // $accessToken = auth()->user()->createToken('authToken')->accessToken;
            if ($tiket->count() > 0) {
                return response()->json($tiket);
            } else {
                return response()->json(['data' => 'Tiket not found'], 404);
            }
        } else {
            return response()->json(['data' => 'Login First'], 401);
        }
    }
    public function getTiket(Request $request)
    {
        if ($request->id != null) {
            $tiket = Tiket::where('user_id', $request->id)->get();
            // $accessToken = auth()->user()->createToken('authToken')->accessToken;
            if ($tiket->count() > 0) {
                return response()->json($tiket);
            } else {
                return response()->json(['data' => 'Tiket not found'], 404);
            }
        } else {
            return response()->json(['data' => 'Login First'], 401);
        }
    }
    public function getTiketDetail(Request $request)
    {
        if ($request->id != null) {
            if ($request->kode != null) {
                $tiket = Detail_transaksi::where('kode_tiket', $request->kode)->get();
                if ($tiket->count() > 0) {
                    return response()->json($tiket);
                } else {
                    return response()->json(['data' => 'Tiket not found'], 404);
                }

                return response()->json($tiket);
            } else {
                return response()->json(['data' => 'Tiket not found'], 404);
            }
        } else {
            return response()->json(['data' => 'Login First'], 401);
        }
    }
    public function login(Request $request)
    {
        $login = User::where('email', $request->email)->first();
        if ($login != null) {
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                // $token = $user->createToken($signInRequest->input('device_name'))->plainTextToken;
                // $token = $login->createToken('authToken')->accessToken;
                return response()->json(['data' => $login]);
            } else {
                return response()->json(['data' => 'Failed Login'], 401);
            }
        } else {
            return response()->json(['data' => 'Email not found'], 401);
        }
    }
    public function checkLogin()
    {
        $check = Auth::check();
        return response()->json(['data' => $check]);
    }
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();

        return response()->json(array('data' => 'Loggedout'));
    }
}
