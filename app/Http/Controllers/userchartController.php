<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; 
use App\pembeli;

class userchartController extends Controller
{
    
    public function index(){
        $users = pembeli::select(\DB::raw("COUNT(*) as count"))
            ->whereYear('created_at', date('Y'))
            ->groupBy(\DB::raw("Month(created_at)"))
            ->pluck('count');
          
        return view('userchart.index', compact('users'));
    }
}
