<?php

namespace App\Http\Controllers;

use App\statuspengiriman;
use Illuminate\Http\Request;
use Redirect,Response;
use DB;

class statuspengirimanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$title = 'Status pengiriman';
    	$statuspengiriman = statuspengiriman::orderBy('status_pengiriman', 'asc')->get();
        return view('statuspengiriman.index',compact('title','statuspengiriman'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('statuspengiriman.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$statuspengirimanId = $request->statuspengiriman_id;
		statuspengiriman::updateOrCreate(['id' => $statuspengirimanId],['status_pengiriman' => $request->status_pengiriman]);
		if(empty($request->statuspengirimanId))
			$msg = 'Status Pengiriman entry created successfully.';
		else
			$msg = 'Status Pengiriman data is updated successfully';
		return redirect()->route('statuspengiriman.index')->with('success',$msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\statuspengiriman  $statuspengiriman
     * @return \Illuminate\Http\Response
     */
    public function show(statuspengiriman $statuspengiriman)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\statuspengiriman  $statuspengiriman
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$where = array('id' => $id);
		$statuspengiriman = statuspengiriman::where($where)->first();
		return Response::json($statuspengiriman);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\statuspengiriman  $statuspengiriman
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, statuspengiriman $statuspengiriman)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\statuspengiriman  $statuspengiriman
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('statuspengiriman')->where('id',$id)->delete();
        return redirect('/statuspengiriman');
    }
}
