 @extends('layouts/master')

@section('content')
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">   
 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        {{ $title }} 
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
        <div class="box-body">
              <table class="table table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Nama Toko</th>
                    <th>Alamat Toko</th>
                    <th>Nomor Telepon</th>>
                    <th>Aksi</th>  
                  </tr></thead>
                <tbody>
                @foreach($toko as $index=>$toko)
                @if($toko->status_toko == 2)
                <tr>
                  <td>{{ $toko->nama }}</td>
                  <td>{{ $toko->alamat }}</td>  
                  <td>{{ $toko->no_telp }}</td>
                <td><a style="color: blue;" href="{{ url('toko/show/'.$toko->id) }}">Lihat Detail</a></td>
                </tr>
                @endif
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
<h4 class="modal-title" id="statustokoCrudModal"></h4>
</div>
<div class="modal-body">
<form name="statustokoForm" action="{{ route('statustoko.store') }}" method="POST">
<input type="hidden" name="statustoko_id" id="statustoko_id" >
@csrf
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<div class="form-group">
<strong>Tambah Status Toko</strong>
<input type="text" name="nama" id="name" class="form-control" placeholder="Nama Status Toko" onchange="validate()" >
</div>
</div>


<button type="submit" id="btn-save" name="btnsave" class="btn btn-primary" disabled>Submit</button>
<a href="{{ route('statustoko.index') }}" class="btn btn-danger">Cancel</a>
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
