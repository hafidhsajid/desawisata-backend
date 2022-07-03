<?php

namespace App\Http\Controllers;

use App\Models\Detail_transaksi;
use App\Models\Tempat;

use Illuminate\Http\Request;
use App\Models\Tiket;
use Auth;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        if (Auth::user()->status == '1') {
            if (Auth::user()->role->name == 'admin') {

                $users = Detail_transaksi::select(\DB::raw("COUNT(*) as count"))
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy(\DB::raw("Day(tanggal_a)"))
                    ->orderby('tanggal_a', 'ASC')
                    ->take(5)
                    ->pluck('count');
                $datee = Detail_transaksi::select('tanggal_a')
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy('tanggal_a')
                    ->orderby('tanggal_a', 'ASC')
                    ->take(5)
                    ->pluck('tanggal_a');
                // dd($datee);
                return view('admin.dashboard.admin', compact('users', 'datee'));
            }
            if (Auth::user()->role->name == 'wisata') {

                $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                if ($tempat == null) {
                    return view('error');
                }
                $tempatt  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                // dd($tempatt);
                $users = Detail_transaksi::select(\DB::raw("COUNT(*) as count"))
                    ->where('tempat_id', $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->take(5)
                    ->groupBy(\DB::raw("Day(tanggal_a)"))
                    ->pluck('count');
                $isi = [];
                foreach ($users as $atas) {
                    $isi[] = $atas;
                }
                // dd($users);
                $categories2 = Detail_transaksi::all()->groupBy('tanggal_a');
                // dd($categories);
                $datee = Detail_transaksi::select('tanggal_a')
                    ->where('tempat_id',  $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy('tanggal_a')
                    ->orderby('tanggal_a', 'ASC')
                    ->take(5)
                    ->pluck('tanggal_a');

                return view('admin.dashboard.wisata', compact('tempatt', 'tempat', 'users', 'datee'));
            }
            if (Auth::user()->role->name == 'kuliner') {

                $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                if ($tempat == null) {
                    return view('error');
                }
                $tempatt  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                $induk_id = $tempatt->induk_id;
                $tempattt  = Tempat::where('id', $induk_id)->where('status', '1')->first();
                // dd($tempattt);
                // dd($tempatt);
                $users = Detail_transaksi::select(\DB::raw("COUNT(*) as count"))
                    ->where('tempat_id', $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy(\DB::raw("Day(tanggal_a)"))
                    ->pluck('count');
                $isi = [];
                foreach ($users as $atas) {
                    $isi[] = $atas;
                }
                // dd($users);
                $categories2 = Detail_transaksi::all()->groupBy('tanggal_a');
                // dd($categories);
                $datee = Detail_transaksi::select('tanggal_a')
                    ->where('tempat_id',  $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy('tanggal_a')
                    ->pluck('tanggal_a');
                // dd($tempat);
                return view('admin.dashboard.kuliner', compact('tempattt', 'tempatt', 'tempat', 'users', 'datee'));
            }
            if (Auth::user()->role->name == 'penginapan') {

                $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                if ($tempat == null) {
                    return view('error');
                }
                $tempatt  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                $induk_id = $tempatt->induk_id;
                $tempattt  = Tempat::where('id', $induk_id)->where('status', '1')->first();
                // dd($tempattt);
                // dd($tempatt);
                $users = Detail_transaksi::select(\DB::raw("COUNT(*) as count"))
                    ->where('tempat_id', $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy(\DB::raw("Day(tanggal_a)"))
                    ->pluck('count');
                $isi = [];
                foreach ($users as $atas) {
                    $isi[] = $atas;
                }
                // dd($users);
                $categories2 = Detail_transaksi::all()->groupBy('tanggal_a');
                // dd($categories);
                $datee = Detail_transaksi::select('tanggal_a')
                    ->where('tempat_id',  $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy('tanggal_a')
                    ->pluck('tanggal_a');
                // dd($tempat);
                return view('admin.dashboard.penginapan', compact('tempattt', 'tempatt', 'tempat', 'users', 'datee'));
            }
            if (Auth::user()->role->name == 'desa') {
                $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                // dd($tempat);
                if ($tempat == null) {
                    return view('error');
                }
                $tempatt  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->first();
                $induk_id = $tempatt->induk_id;
                $tempattt  = Tempat::where('id', $induk_id)->where('status', '1')->first();
                // dd($tempattt);
                // dd($tempatt);
                $users = Detail_transaksi::select(\DB::raw("COUNT(*) as count"))
                    ->where('tempat_id', $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy(\DB::raw("Day(tanggal_a)"))
                    ->pluck('count');
                $isi = [];
                foreach ($users as $atas) {
                    $isi[] = $atas;
                }
                // dd($users);
                $categories2 = Detail_transaksi::all()->groupBy('tanggal_a');
                // dd($categories);
                $datee = Detail_transaksi::select('tanggal_a')
                    ->where('tempat_id',  $tempatt->id)
                    ->whereYear('tanggal_a', date('Y'))
                    ->groupBy('tanggal_a')
                    ->pluck('tanggal_a');
                // dd($tempat);
                return view('admin.dashboard.desa', compact('tempattt', 'tempatt', 'tempat', 'users', 'datee'));
            }
            if (Auth::user()->role->name == 'event & sewa tempat') {


                return view('admin.dashboard.event_sewatempat');
            }
            if (Auth::user()->role->name == 'pelanggan') {
                return redirect('/');
            }
        }
        return view('error');




        // return view('admin');
    }
}
