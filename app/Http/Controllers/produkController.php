<?php

namespace App\Http\Controllers;

use App\produk;
use App\toko;
use Illuminate\Http\Request;
use DB;

class produkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Produk';
        $produk = DB::table('produk')
            ->join('toko','toko.id','=','produk.id_toko')
            ->join('kategori','kategori.id','=','produk.kategori')
            ->select('produk.id','kategori.nama AS jenis','produk.nama','produk.harga','produk.gambar','toko.nama AS namatoko','produk.stok')
            ->get();

            // dd(json_encode($produk));

        return view('produk.index',compact('produk','title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
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
     * @param  \App\produk  $produk
     * @return \Illuminate\Http\Response
     */
        public function show($id)
    {
        $title = 'Detail Produk';
        $produk = produk::where('id', $id)->first();

        return view('produk.detail', compact('produk','title'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function edit(produk $produk)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, produk $produk)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\produk  $produk
     * @return \Illuminate\Http\Response
     */
    public function destroy(produk $produk)
    {
        //
    }
}
