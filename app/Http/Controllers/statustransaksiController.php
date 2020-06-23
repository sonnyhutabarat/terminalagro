<?php

namespace App\Http\Controllers;

use App\statustransaksi;
use Illuminate\Http\Request;
use Redirect,Response;
use DB;

class statustransaksiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$title = 'Status transaksi';
    	$statustransaksi = statustransaksi::orderBy('status_transaksi', 'asc')->get();
        return view('statustransaksi.index',compact('title','statustransaksi'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('statustransaksi.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

		$statustransaksiId = $request->statustransaksi_id;
		statustransaksi::updateOrCreate(['id' => $statustransaksiId],['status_transaksi' => $request->status_transaksi]);
		if(empty($request->statustransaksi_id))
			$msg = 'Status Transaksi entry created successfully.';
		else
			$msg = 'Status Transaksi data is updated successfully';
		return redirect()->route('statustransaksi.index')->with('success',$msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\statustransaksi  $statustransaksi
     * @return \Illuminate\Http\Response
     */
    public function show(statustransaksi $statustransaksi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\statustransaksi  $statustransaksi
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$where = array('id' => $id);
		$statustransaksi = statustransaksi::where($where)->first();
		return Response::json($statustransaksi);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\statustransaksi  $statustransaksi
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, statustransaksi $statustransaksi)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\statustransaksi  $statustransaksi
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('statustransaksi')->where('id',$id)->delete();
        return redirect('/statustransaksi');
    }
}
