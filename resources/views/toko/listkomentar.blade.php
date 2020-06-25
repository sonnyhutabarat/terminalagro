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
    @foreach($listkomentar as $index=>$listkomentar)
    <div class="box">
        <div class="box-header with-border">
            <div class="box-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                        <div class="col-md-6">
                            <p><img src="{{asset('images/' . $listkomentar->foto) }}" width="90px" height="90px" alt="Image"></p>
                        </div>
                            <p> {{ $listkomentar->nama }} </p>
                            <p> {{ $listkomentar->komentar }} </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    @endforeach
      <!-- /.box -->
    </section>
    <!-- /.content -->
@endsection