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
    <div class="col-md-6">
        <img src="{{asset('images/' . $pembeli->foto) }}" width="200px" height="200px" alt="Image">
    </div>
    <div class="col-md-6">
        <p>Nama :         {{$pembeli->nama}}</p>
        <p>Nomor Telepon :         {{$pembeli->no_telp}}</p>
        <p>Jenis Kelamin :         {{$pembeli->jenis_kelamin}}</p>
    </div>
  </div>
</div>
        </div>
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
@endsection