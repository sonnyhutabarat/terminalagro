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
        <a href="javascript:void(0)" class="btn btn-primary mb-2" id="new-data" data-toggle="modal">Tambah Refrensi Bank</a>
        <div class="box-body">
              <table class="table table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Refrensi Bank</td>
                    <th>Nomor Refrensi</th>
                    <th>Kelola Data</th>
                  </tr></thead>
                <tbody>
                @foreach($refrensibank as $index=>$refrensibank)
                <tr>
                  <td>{{ $refrensibank->namabank }}</td>
                  <td>{{ $refrensibank->nomorrefrensi }}</td>
                  <td>
                    <a href="javascript:void(0)" class="btn btn-warning" id="edit-refrensi-bank" data-toggle="modal" data-id="{{ $refrensibank->id }}">Edit </a>
                    <a href="/refrensibank/destroy/{{ $refrensibank->id }}" class="btn btn-danger">Delete</a>
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
<h4 class="modal-title" id="refrensibankCrudModal"></h4>
</div>
<div class="modal-body">
<form name="refrensibankForm" action="{{ route('refrensibank.store') }}" method="POST">
<input type="hidden" name="refrensibank_id" id="refrensibank_id" >
@csrf
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<div class="form-group">
<strong>Tambah Refrensi Bank</strong>
<input type="text" name="namabank" id="name" class="form-control" placeholder="Nama Refrensi Bank" onchange="validate()" >
<input type="text" name="nomorrefrensi" id="nomor" class="form-control" placeholder="Nomor Refrensi Bank" onchange="validate()" >
</div>
</div>


<button type="submit" id="btn-save" name="btnsave" class="btn btn-primary" disabled>Submit</button>
<a href="{{ route('refrensibank.index') }}" class="btn btn-danger">Cancel</a>
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
	if(document.statustokoForm.name.value !='')
	    document.statustokoForm.btnsave.disabled=false
	else
		document.statustokoForm.btnsave.disabled=true
}

</script>
