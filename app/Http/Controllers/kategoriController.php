<?php

namespace App\Http\Controllers;

use App\kategori;
use Illuminate\Http\Request;
use Redirect,Response;
use DB;

class kategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
    	$title = 'Kategori barang';
    	$kategori = kategori::orderBy('nama', 'asc')->get();
        return view('kategori.index',compact('title','kategori'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kategori.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $r=$request->validate([
		'nama' => 'required',
		]);

		$kategoriId = $request->kategori_id;
		kategori::updateOrCreate(['id' => $kategoriId],['nama' => $request->nama]);
		if(empty($request->kategori_id))
			$msg = 'Kategori entry created successfully.';
		else
			$msg = 'Kategori data is updated successfully';
		return redirect()->route('kategori.index')->with('success',$msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function show(kategori $kategori)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$where = array('id' => $id);
		$kategori = kategori::where($where)->first();
		return Response::json($kategori);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, kategori $kategori)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\kategori  $kategori
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        DB::table('kategori')->where('id',$id)->delete();
        return redirect('/kategori');

    }
}
