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
        <a href="javascript:void(0)" class="btn btn-primary mb-2" id="new-data" data-toggle="modal">Tambah Kategori</a>
        <div class="box-body">
              <table class="table table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Nama</th>
                    <th>Kelola Data</th>
                  </tr></thead>
                <tbody>
                @foreach($kategori as $index=>$kategori)
                <tr>
                  <td>{{ $kategori->nama }}</td>
                  <td>
                    <a href="javascript:void(0)" class="btn btn-warning" id="edit-kategori" data-toggle="modal" data-id="{{ $kategori->id }}">Edit</a>
                    <a href="/kategori/destroy/{{ $kategori->id }}" class="btn btn-danger">Delete</a>
                    
                </form>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
        </div>
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->


</table>
<!-- Add and Edit customer modal -->
<div class="modal fade" id="crud-modal" aria-hidden="true" >
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<h4 class="modal-title" id="kategoriCrudModal"></h4>
</div>
<div class="modal-body">
<form name="kategoriForm" action="{{ route('kategori.store') }}" method="POST">
<input type="hidden" name="kategori_id" id="kategori_id" >
@csrf
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<div class="form-group">
<strong>Tambah Kategori</strong>
<input type="text" name="nama" id="name" class="form-control" placeholder="Nama kategori" onchange="validate()" >
</div>
</div>


<button type="submit" id="btn-save" name="btnsave" class="btn btn-primary" disabled>Submit</button>
<a href="{{ route('kategori.index') }}" class="btn btn-danger">Cancel</a>
</div>
</div>
</form>
</div>
</div>
</div>


@endsection

<script>
error=false

function validate()
{
	if(document.kategoriForm.name.value !='')
	    document.kategoriForm.btnsave.disabled=false
	else
		document.kategoriForm.btnsave.disabled=true
}

</script>
