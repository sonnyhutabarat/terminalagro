<?php

namespace App\Http\Controllers;

use App\statustoko;
use Illuminate\Http\Request;
use Redirect,Response;
use DB;

class statustokoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$title = 'Status toko';
    	$statustoko = statustoko::orderBy('nama', 'asc')->get();
        return view('statustoko.index',compact('title','statustoko'));
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
		$statustokoId = $request->statustoko_id;
		statustoko::updateOrCreate(['id' => $statustokoId],['nama' => $request->nama]);
		if(empty($request->statustokoId))
			$msg = 'Status Toko entry created successfully.';
		else
			$msg = 'Status Toko data is updated successfully';
		return redirect()->route('statustoko.index')->with('success',$msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\statustoko  $statustoko
     * @return \Illuminate\Http\Response
     */
    public function show(statustoko $statustoko)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\statustoko  $statustoko
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$where = array('id' => $id);
		$statustoko = statustoko::where($where)->first();
		return Response::json($statustoko);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\statustoko  $statustoko
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, statustoko $statustoko)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\statustoko  $statustoko
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('statustoko')->where('id',$id)->delete();
        return redirect('/statustoko');
    }
}
