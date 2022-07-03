<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\Tempat;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use App\Rules\MatchOldPassword;
use Illuminate\Auth\Events\Logout;

use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->status == '1') {
            if (Auth::user()->role->name == 'admin') {
                return redirect('dashboard');
                // return view('admin.dashboard.admin');
            }
            if (Auth::user()->role->name == 'wisata') {

                // $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->get();
                // dd($tempat);
                // return view('admin.dashboard.wisata', compact('tempat'));
                return redirect('dashboard');
            }
            if (Auth::user()->role->name == 'kuliner') {

                // $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->get();
                // dd($tempat);
                return redirect('dashboard');
                // return view('admin.dashboard.restaurant', compact('tempat'));
            }
            if (Auth::user()->role->name == 'penginapan') {
                return redirect('dashboard');
                // $tempat  = Tempat::where('user_id', Auth::user()->petugas_id)->where('status', '1')->get();
                // dd($tempat);
                // return view('admin.dashboard.penginapan', compact('tempat'));
            }


            if (Auth::user()->role->name == 'pelanggan') {
            }
            return view('profile');
        }
        return view('error');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function qrcode($kode)

    {
        return QrCode::size(250)

            ->generate($kode);
        //
    }
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
        // dd($request);
        $data = $request->all();
        $admin = User::where('id', $id)->first();
        $user = User::find($id);
        $request->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        $userPassword = $user->password;

        if ($request->password) {
            $data['password'] = bcrypt($request->password);
        } else {

            $data['password'] = $userPassword;
        }
        $imageName = $user->image;
        if ($request->hasFile('image')) {
            $imageName = (new User)->userAvatar($request);
            if ($admin->image == null) {
            } else {
                unlink(public_path('images/' . $user->image));
            }
        }
        $data['image'] = $imageName;

        $user->update($data);
        Toastr::success(' Berhasil mengupdate data :)', 'Success');
        return redirect()->back();
    }
    public function update2(Request $request, $id)
    {
        $admin = User::where('id', $id)->first();
        $user = User::find($id);
        $data = $request->all();

        $request->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',

        ]);

        $imageName = $user->image;
        if ($request->hasFile('image')) {
            $imageName = (new User)->userAvatar($request);
            if ($admin->image == null) {
            } else {
                unlink(public_path('images/' . $user->image));
            }
        }
        $data['image'] = $imageName;

        $user->update($data);
        Toastr::success(' Berhasil mengubah foto :)', 'Success');
        return redirect()->back();
    }
    public function update3(Request $request)
    {
        $data = $request->all();


        $data['password'] = bcrypt($request->password);
        $request->validate([
            'current_password' => ['required', new MatchOldPassword],
            'new_password' => ['required'],
            'new_confirm_password' => ['same:new_password'],
        ]);

        User::find(Auth::user()->id)->update(['password' => Hash::make($request->new_password)]);
        Toastr::success(' Berhasil mengubah Password:)', 'Success');
        return redirect()->back();
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
}
