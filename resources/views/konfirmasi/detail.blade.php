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
        <img src="{{asset('images/' . $konfirmasi->gambar) }}" width="200px" height="200px" alt="Image">
    </div>
    <div class="col-md-4">
        <p>Nama :         {{$konfirmasi->nama}}</p>
        <p>Alamat :         {{$konfirmasi->jalan}}</p>
        <p>Kecamatan :         {{$konfirmasi->kecamatan}}</p>
        <p>Nomor Telepon :         {{$konfirmasi->no_telp}}</p>
        <p>Deskripsi :         {{$konfirmasi->deskripsi}}</p>
        <p>Nomor Rekening :         {{$konfirmasi->no_rek}}</p>
    </div>
  </div>
</div>
        </div>
      </div>
      <!-- /.box -->
    </section>
    <div class="content">
        <div class="col-md-3">
            <h4>Foto KTP</h4>
            <img src="{{asset('images/' . $konfirmasi->ktp) }}" width="200px" height="200px" alt="Image">
        </div>

        <div class="col-md-3">
            <h4>Foto Selfie dengan KTP</h4>
            <img src="{{asset('images/' . $konfirmasi->ktpSelfie) }}" width="200px" height="200px" alt="Image">
        </div>
    </div>
<br>    
    <div class="content">
        @if($konfirmasi->status_toko == 3)
            <td><a href="{{ url('konfirmasi/terima/'.$konfirmasi->id) }}" class="btn btn-success">Terima</a></td>
            <td><a href="{{ url('konfirmasi/tolak/'.$konfirmasi->id) }}" class="btn btn-danger">Tolak</a></td>
        @endif
    </div>
    <!-- /.content -->
@endsection