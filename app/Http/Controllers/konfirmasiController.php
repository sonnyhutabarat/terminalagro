<?php

namespace App\Http\Controllers;

use App\konfirmasi;
use App\pembeli;
use App\notif;
use App\toko;
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

        $idNotif = toko::select('id_pengguna')->where('id','=',$id)->pluck('id_pengguna')->first();
        $notif = new notif();
        $notif->id_penerima=$idNotif;
        $notif->isi='Request toko anda telah diterima';
        $notif->save();

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

        $idNotif = toko::select('id_pengguna')->where('id','=',$id)->pluck('id_pengguna')->first();
        $notif = new notif();
        $notif->id_penerima=$idNotif;
        $notif->isi='Request toko anda telah ditolak';
        $notif->save();

        return redirect('konfirmasi');
    }

        public function show($id)
    {
        $title = 'Detail Toko';
        $konfirmasi = toko::where('id', $id)->first();

        return view('konfirmasi.detail', compact('konfirmasi','title'));
    }
}
