<?php

namespace App\Http\Controllers;

use App\toko;
use App\produk;
use App\komentar;
use Illuminate\Http\Request;
use DB;

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

        $listproduk = DB::table('produk')
                    ->join('toko','toko.id','=','produk.id_toko')
                    ->join('kategori','kategori.id','=','produk.kategori')
                    ->select('produk.id','kategori.nama AS jenis','produk.nama','produk.harga','produk.gambar')
                    ->where('produk.id_toko',$id)
                    ->get();

        return view('toko.listproduk', compact('listproduk','title'));
    }

    public function indexkomentar($id)
    {
        $title = 'Daftar Komentar';
        $listkomentar = DB::table('komentar')
                ->join('produk','komentar.id_produk','=','produk.id')
                ->join('pengguna','komentar.id_pengguna','=','pengguna.id')
                ->select('komentar.komentar','pengguna.nama','pengguna.foto')
                ->where('produk.id','=',$id)
                ->get();



        return view('toko.listkomentar', compact('listkomentar','title'));
    }

}
