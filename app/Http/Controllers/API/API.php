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

class API extends Controller
{
    //
    public function wahana()
    {
        $wahana  = new Wahana();
        $wahana  = $wahana->get();
        return response()->json($wahana);
    }

    public function createwahana()
    {
        $wahana  = new Wahana();
        $wahana->name = "name test";
        $wahana->tempat_id = "4";
        $wahana->deskripsi = "deskripsi test";
        $wahana->harga = "19999";
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
        $wahana->name = "edit test";
        $wahana->tempat_id = "4";
        $wahana->deskripsi = "deskripsi test";
        $wahana->harga = "2222";
        $wahana->image = '7Lc8xmt78n8teJXlDUgvlOrJDVSBt4BBtDhSt2Xh.jpg';
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
        // dd($request->email);
        $login = User::where('email',$request->email)->first();
        if ($login!=null) {
            return response()->json(array('data'=>$login));
        }else{
            return response()->json(array('data'=>'Email not found'));
        }
    }
}
