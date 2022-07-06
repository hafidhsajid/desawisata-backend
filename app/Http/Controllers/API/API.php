<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Event;
use App\Models\EventBooking;
use App\Models\Kamar;
use App\Models\Kuliner;
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
        // $wahana  = $wahana->get();
        // return response()->json($wahana);
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
