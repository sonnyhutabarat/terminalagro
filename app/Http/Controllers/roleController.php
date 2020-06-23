<?php

namespace App\Http\Controllers;

use App\role;
use Illuminate\Http\Request;
use Redirect,Response;
use DB;

class roleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$title = 'Role';
    	$role = role::orderBy('nama', 'asc')->get();
        return view('role.index',compact('title','role'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('role.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $roleId = $request->role_id;
		role::updateOrCreate(['id' => $roleId],['nama' => $request->nama]);
		if(empty($request->role_id))
			$msg = 'Role entry created successfully.';
		else
			$msg = 'Role is updated successfully';
		return redirect()->route('role.index')->with('success',$msg);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\role  $role
     * @return \Illuminate\Http\Response
     */
    public function show(role $role)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
		$where = array('id' => $id);
		$role = role::where($where)->first();
		return Response::json($role);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\role  $role
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, role $role)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('role')->where('id',$id)->delete();
        return redirect('/role');
    }
}
