<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\transaksi;

class penjualanchartController extends Controller
{
    public function index(){
                    $chart_penjualan = transaksi::select(\DB::raw("COUNT(*) as count"))
                    ->whereYear('created_at', date('Y'))
                    ->groupBy(\DB::raw("Month(created_at)"))
                    ->pluck('count');


                    // dd(json_encode($chart_penjualan));
        return view('penjualanchart.index',compact('chart_penjualan'));
    }
}
