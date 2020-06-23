<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\produk;

class produkchartController extends Controller
{
        public function index(){
        $product = produk::select(\DB::raw("COUNT(*) as count"))
                    ->whereYear('created_at', date('Y'))
                    ->groupBy(\DB::raw("Month(created_at)"))
                    ->pluck('count');
          
        return view('produkchart.index', compact('product'));
    }
}
