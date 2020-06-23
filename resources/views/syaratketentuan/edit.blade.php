 @extends('layouts/master')

@section('content')
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">   
 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{$title}}
      </h1>
    </section>

    <div class="container-fluid">

        <form action="{{ route('syaratketentuan.update',$syaratketentuan->id) }}" method="POST">
        @csrf
        @method('PUT')
   
            <div class ="form-group" id="summernote"> 
              <textarea class="form-control" id="syaratketentuan" name="syaratketentuan" rows="20" cols="50">{{ $syaratketentuan->syaratketentuan }}</textarea>
              </br>
              <button type="submit" class="btn btn-primary">Edit Data</button>
          </div>




      </div>
    </div>
@endsection
