<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\transaksi;
use App\pembeli;
use App\toko;
use DB;

class adminController extends Controller
{
    public function dashboard(){

        $produk = DB::table('produk')->join('toko', function($join)
        {
            $join->on('produk.id_toko','=','toko.id');
            
        })
        ->where('toko.status_toko','=','2')
        ->get();
        $jumlah_produk = count($produk);
        
        $toko = toko::where(DB::raw("status_toko"),('2'))->get();
        $jumlah_toko = count($toko);

        $pembeli = pembeli::where(DB::raw("role"),('2'))->get();
        $jumlah_pembeli = count($pembeli);

        
        $chart_penjualan = transaksi::select(\DB::raw("COUNT(*) as count"))
            ->whereYear('created_at', date('Y'))
            ->groupBy(\DB::raw("Month(created_at)"))
            ->pluck('count');

        return view('dashboard',compact('jumlah_produk','jumlah_toko','jumlah_pembeli','chart_penjualan'));
    }

    public function logout()
    {
    	\Auth::logout();

    	return redirect('login');
    }
}
