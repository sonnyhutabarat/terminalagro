 @extends('layouts/master')

@section('content')
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">   
 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{$title}}
      </h1>
    </section>

    <div class="col-md-12">
    <p></p>
    <!-- Button trigger modal -->
    <p></p>
    <table class="table table-striped table-bordered text-center" id="datatable">
        <thead>
            <tr>
                <td>Syarat & Ketentuan</td>
                <td colspan="2">Kelola Data</td>
            </tr>
        </thead>
        <tbody>
            @foreach($syaratketentuan as $sk)
            <tr>
                <td>{{$sk->syaratketentuan}}</td>
            <td><a href="{{ route('syaratketentuan.edit', $sk->id)}}" class="btn btn-warning">Edit</a></td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
