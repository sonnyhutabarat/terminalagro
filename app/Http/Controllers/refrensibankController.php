<?php

namespace App\Http\Controllers;

use App\refrensibank;
use Illuminate\Http\Request;
use Redirect,Response;
use DB;

class refrensibankController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$title = 'Refrensi bank';
    	$refrensibank = refrensibank::orderBy('namabank', 'asc')->get();
        return view('refrensibank.index',compact('title','refrensibank'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('refrensibank.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		$refrensibankId = $request->refrensibank_id;
		refrensibank::updateOrCreate(['id' => $refrensibankId],['namabank' => $request->namabank,'nomorrefrensi'=>$request->nomorrefrensi]);
		if(empty($request->refrensibankId))
			$msg = 'Refrensi bank entry created successfully.';
		else
			$msg = 'Refrensi bank data is updated successfully';
		return redirect()->route('refrensibank.index')->with('success',$msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\refrensibank  $refrensibank
     * @return \Illuminate\Http\Response
     */
    public function show(refrensibank $refrensibank)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\refrensibank  $refrensibank
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$where = array('id' => $id);
		$refrensibank = refrensibank::where($where)->first();
		return Response::json($refrensibank);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\refrensibank  $refrensibank
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, refrensibank $refrensibank)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\refrensibank  $refrensibank
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('refrensibank')->where('id',$id)->delete();
        return redirect('/refrensibank');
    }
}
