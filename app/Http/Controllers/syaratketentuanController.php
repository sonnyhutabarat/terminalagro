<?php

namespace App\Http\Controllers;

use App\syaratketentuan;
use Illuminate\Http\Request;

class syaratketentuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $title = "Syarat & ketentuan";
        $syaratketentuan = syaratketentuan::all();
        return view('syaratketentuan.index',compact('syaratketentuan','title'));
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
     * @param  \App\syaratketentuan  $syaratketentuan
     * @return \Illuminate\Http\Response
     */
    public function show(syaratketentuan $syaratketentuan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\syaratketentuan  $syaratketentuan
     * @return \Illuminate\Http\Response
     */
    public function edit(syaratketentuan $syaratketentuan)
    {
        $title = "Syarat & ketentuan";
        return view('syaratketentuan.edit', compact('syaratketentuan','title'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\syaratketentuan  $syaratketentuan
     * @return \Illuminate\Http\Response
     */
        public function update(Request $request, $id)
    {
        $validasi = $request->validate([
        'syaratketentuan' => 'required',
        
        ]);

        syaratKetentuan::whereId($id)->update($validasi);

        return redirect('/syaratketentuan');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\syaratketentuan  $syaratketentuan
     * @return \Illuminate\Http\Response
     */
    public function destroy(syaratketentuan $syaratketentuan)
    {
        //
    }
}
