<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
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
}
