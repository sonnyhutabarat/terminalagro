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
              <table class="table table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Foto Bukti</th>
                    <th>Transfer dari</th>
                    <th>Total</th>
                    <th>Nomor Telepon</th>
                    <th>Keterangan</th>  
                  </tr></thead>
                <tbody>
                @foreach($transaksi as $index=>$transaksi)
                <tr>
                <td><img src="{{asset('images/' . $transaksi->foto) }}" width="100px" height="100px" alt="Image"></td>
                <td>{{ $transaksi->pengguna->nama }}</td>
                <td>{{ $transaksi->total }}</td>
                <td>{{ $transaksi->pengguna->no_telp }}</td>
                @if($transaksi->status_transaksi == 3) 
                <td>
                    <a style="color: blue;" href="{{ url('transaksi/terima/'.$transaksi->id) }}">Terima</a>
                    <a style="color: red;" href="{{ url('transaksi/tolak/'.$transaksi->id) }}">Tolak</a>
                    @else
                    <td>{{ $transaksi->statustransaksi->status_transaksi }}</td>
                </td>
                @endif
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
