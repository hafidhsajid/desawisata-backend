<?php

namespace App\Http\Controllers;

use App\Models\Event;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\KategoriEvent;
use Illuminate\Http\Request;

class EventController extends Controller
{
    public function index()
    {
        $kategorievent = KategoriEvent::all();
        return view('admin.event.halaman_kategorievent', [
            'kategorievent' => $kategorievent
        ]);
    }

    public function create_kategorievent(Request $request)
    {
        $validatedData = $request->validate([
            'nama_kategori' => 'required|unique:tb_kategorievent',
        ]);
        KategoriEvent::create($validatedData);
        Toastr::success(' Berhasil menambahkan data:)', 'Success');
        return redirect()->back();
    }
}
