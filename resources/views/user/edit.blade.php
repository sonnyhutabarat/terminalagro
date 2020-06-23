 @extends('layouts/master')

@section('content')
<div class="container-fluid">
 	<form method="post" action="{{ route('user.update', $user->id) }}" enctype="multipart/form-data">

	@csrf
	@method('PATCH')
	<div class="form-group">
		<label class="col-md-4 text-right">Enter Name</label>
		<div class="col-md-8">
			<input type="text" name="name" value="{{ $user->name }}" class="form-control input-lg" />
		</div>
	</div>
	<br />
	<br />
	<br />
	<div class="form-group">
		<label class="col-md-4 text-right">Enter Address</label>
		<div class="col-md-8">
			<input type="text" name="alamat" value="{{ $user->alamat }}" class="form-control input-lg" />
		</div>
	</div>
	<br />
	<br />
	<br />
    <div class="form-group">
		<label class="col-md-4 text-right">Enter Phone Number</label>
		<div class="col-md-8">
			<input type="text" name="no_telp" value="{{ $user->no_telp }}" class="form-control input-lg" />
		</div>
	</div>
	<br />
	<br />
	<br />
    <div class="form-group">
		<label class="col-md-4 text-right">Enter Email</label>
		<div class="col-md-8">
			<input type="text" name="email" value="{{ $user->email }}" class="form-control input-lg" />
		</div>
	</div>
	<br />
	<br />
	<br />
	<div class="form-group">
		<label class="col-md-4 text-right">Select Profile Image</label>
		<div class="col-md-8">
			<input type="file" name="gambar" />
			<img src="{{ URL::to('/') }}/images/{{ $user->gambar }}" class="img-thumbnail" width="100" />
			<input type="hidden" name="hidden_image" value="{{ $user->gambar }}" />
		</div>
	</div>
	<br /><br /><br />
	<div class="form-group text-center">
		<input type="submit" name="edit" class="btn btn-primary input-lg" value="Edit" />
	</div>
</form>
</div>


@endsection