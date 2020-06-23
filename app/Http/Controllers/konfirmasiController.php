<?php

namespace App\Http\Controllers;

use App\konfirmasi;
use App\pembeli;
use DB;
use Illuminate\Http\Request;

class konfirmasiController extends Controller
{
        public function index()
    {
        $title = 'Konfirmasi Toko';
        $konfirmasi = konfirmasi::all();
        return view('konfirmasi.index',compact('konfirmasi','title'));
    }

        public function terima($id)
    {
        $role = DB::table('pengguna')->join('toko', function($join)
        {
            $join->on('pengguna.id','=','toko.id_pengguna');
            
        })
        ->where('toko.id','=',$id)
        ->update(['pengguna.role' => 3]);
        $konfirmasi = konfirmasi::where('id', $id)->first();
        $konfirmasi->status_toko = 2;
        $konfirmasi->save();
        return redirect('konfirmasi');
    }

    public function tolak($id)
    {

        $role = DB::table('pengguna')->join('toko', function($join)
        {
            $join->on('pengguna.id','=','toko.id_pengguna');
            
        })
        ->where('toko.id','=',$id)
        ->update(['pengguna.role' => 2]);
        $konfirmasi = konfirmasi::where('id', $id)->first();
        $konfirmasi->status_toko = 1;
        $konfirmasi->save();

        return redirect('konfirmasi');
    }
}
