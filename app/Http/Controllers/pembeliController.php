<?php

namespace App\Http\Controllers;

use App\pembeli;
use Illuminate\Http\Request;

class pembeliController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Daftar Pembeli';
        $pembeli = pembeli::all();
        return view('pembeli.index',compact('pembeli','title'));
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
     * @param  \App\pembeli  $pembeli
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       $title = 'Detail Pembeli';
        $pembeli = pembeli::where('id', $id)->first();

        return view('pembeli.detail', compact('pembeli','title'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\pembeli  $pembeli
     * @return \Illuminate\Http\Response
     */
    public function edit(pembeli $pembeli)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\pembeli  $pembeli
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, pembeli $pembeli)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\pembeli  $pembeli
     * @return \Illuminate\Http\Response
     */
    public function destroy(pembeli $pembeli)
    {
        //
    }
}
