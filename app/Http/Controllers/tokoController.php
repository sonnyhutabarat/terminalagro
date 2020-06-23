<?php

namespace App\Http\Controllers;

use App\toko;
use App\produk;
use Illuminate\Http\Request;

class tokoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Toko';
        $toko = toko::all();
        return view('toko.index',compact('toko','title'));
    }

        public function show($id)
    {
        $title = 'Detail Toko';
        $toko = toko::where('id', $id)->first();

        return view('toko.detail', compact('toko','title'));
    }

        public function indexproduk($id)
    {
        $title = 'Daftar Produk';
        $listproduk = produk::where('id_toko', $id)->get();

        

        return view('toko.listproduk', compact('listproduk','title'));
    }
}
