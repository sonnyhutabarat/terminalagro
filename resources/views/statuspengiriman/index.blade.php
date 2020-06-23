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
        <a href="javascript:void(0)" class="btn btn-primary mb-2" id="new-data" data-toggle="modal">Tambah Status Transaksi</a>
        <div class="box-body">
              <table class="table table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Nama</th>
                    <th>Kelola Data</th>
                  </tr></thead>
                <tbody>
                @foreach($statuspengiriman as $index=>$statuspengiriman)
                <tr>
                  <td>{{ $statuspengiriman->status_pengiriman }}</td>
                  <td>
                    <a href="javascript:void(0)" class="btn btn-warning" id="edit-status-pengiriman" data-toggle="modal" data-id="{{ $statuspengiriman->id }}">Edit </a>
                    <a href="/statuspengiriman/destroy/{{ $statuspengiriman->id }}" class="btn btn-danger">Delete</a>
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
<h4 class="modal-title" id="statuspengirimanCrudModal"></h4>
</div>
<div class="modal-body">
<form name="statuspengirimanForm" action="{{ route('statuspengiriman.store') }}" method="POST">
<input type="hidden" name="statuspengiriman_id" id="statuspengiriman_id" >
@csrf
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<div class="form-group">
<strong>Tambah Status Transaksi</strong>
<input type="text" name="status_pengiriman" id="name" class="form-control" placeholder="Nama Status Peengiriman" onchange="validate()" >
</div>
</div>


<button type="submit" id="btn-save" name="btnsave" class="btn btn-primary" disabled>Submit</button>
<a href="{{ route('statuspengiriman.index') }}" class="btn btn-danger">Cancel</a>
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
	if(document.statuspengirimanForm.name.value !='')
	    document.statuspengirimanForm.btnsave.disabled=false
	else
		document.statuspengirimanForm.btnsave.disabled=true
}

</script>
