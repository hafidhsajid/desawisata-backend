<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Tempat;
use App\Models\Wahana;

class FrontendApiController extends Controller
{
    public function index(){
        $desa = Tempat::where('kategori', 'wisata')
            ->get();
        return response()->json([
            'success' => true,
            'message' => 'Ambil data berhasil',
            'data' => $desa,
        ]);
    }

    public function wahanashow(){
        $wahana = Wahana::where('tempat_id', '4')->where('status', '1')->get();
        return response()->json([
            'success' => true,
            'message' => 'Ambil data berhasil',
            'data' => $wahana,
        ]);
    }
}
