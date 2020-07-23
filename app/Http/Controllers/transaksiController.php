<?php

namespace App\Http\Controllers;

use App\transaksi;
use App\notif;
use Illuminate\Http\Request;

class transaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
        public function index()
    {
        $title = 'Status Pembayaran';
        $transaksi = transaksi::all();
        return view('transaksi.index',compact('transaksi','title'));
    }

        public function terima($id)
    {
        $transaksi = transaksi::where('id', $id)->first();
        $transaksi->status_transaksi = 2;
        $transaksi->save();

        $idNotif = transaksi::select('id_pengguna')->where('id','=',$id)->pluck('id_pengguna')->first();
        $notif = new notif();
        $notif->id_penerima = $idNotif;
        $notif->isi='Pembayaran anda telah diterima';
        $notif->save();

        return redirect('transaksi');
    }

    public function tolak($id)
    {
        $transaksi = transaksi::where('id', $id)->first();
        $transaksi->status_transaksi = 3;
        $transaksi->save();

        $idNotif = transaksi::select('id_pengguna')->where('id','=',$id)->pluck('id_pengguna')->first();
        $notif = new notif();
        $notif->id_penerima=$idNotif;
        $notif->isi='Pembayaran anda telah ditolak';
        $notif->save();

        return redirect('transaksi');
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
     * @param  \App\transaksi  $transaksi
     * @return \Illuminate\Http\Response
     */
    public function show(transaksi $transaksi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\transaksi  $transaksi
     * @return \Illuminate\Http\Response
     */
    public function edit(transaksi $transaksi)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\transaksi  $transaksi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, transaksi $transaksi)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\transaksi  $transaksi
     * @return \Illuminate\Http\Response
     */
    public function destroy(transaksi $transaksi)
    {
        //
    }
}
