 @extends('layouts/master')

@section('content')
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">   
 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{$title}}
        <br>
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
    <div class="col-md-3">
        <img src="{{asset('images/' . $toko->gambar) }}" width="200px" height="200px" alt="Image">
    </div>
    <div class="col-md-4">
        <p>Nama :         {{$toko->nama}}</p>
        <p>Alamat :         {{$toko->alamat}}</p>
        <p>Nomor Telepon :         {{$toko->no_telp}}</p>
    </div>
  </div>
</div>
        </div>
      </div>
      <!-- /.box -->
    </section>
<div class="col-md-6">
 <h3>
    <a href="{{ url('toko/indexproduk/'.$toko->id) }}">Lihat Produk Toko</a>
 </h3>
</div>
    <!-- /.content -->
@endsection