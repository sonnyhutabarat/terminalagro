 @extends('layouts/master')

@section('content')
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">   
 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{$title}}
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
        <div class="box-body">
              <div class="container">
  <div class="row">
    <div class="col-md-4">
    @foreach($user as $user)
        <img src="{{asset('images/' . $user->gambar) }}" width="200px" height="200px" alt="Image">
    </div>
    <div class="col-md-6">
        <p>Nama :         {{$user->name}}</p>
        <p>Alamat :         {{$user->alamat}}</p>
        <p>Nomor Telepon :         {{$user->no_telp}}</p>
        <p>Email :         {{$user->email}}</p>
        @endforeach
    </div>
  </div>
</div>
        </div>
      </div>
      <!-- /.box -->
    </section>
    <div class="col-md-6">
        <a href="{{ route('user.edit', $user->id)}}" class="btn btn-warning">Edit</a>
    </div>
    <!-- /.content -->
@endsection