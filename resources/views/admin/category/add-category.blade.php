@extends('admin.master')
@section('body')
<div class="row">
		<div class="col-md-10 col-md-ofset-1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="text-center text-success">Add Category Form</h4>
				</div>
				<div class="panel-body">
					<h3 class="text-center text-success">	{{ Session::get('message')}}</h3>
					<!-- <form action="{{ route('new-category') }}" method="POST" class="form-horizontal"> -->

					{{ Form::open(['route'=>'new-category', 'method'=>'POST', 'class' => 'form-horizontal']) }}
						<!-- {{csrf_field()}} -->
						<div class="form-group">
							<label class="control-label col-md-4">Category Name</label>
							<div class="col-md-8">
								<input type="text" name="category_name" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4">Category Description</label>
							<div class="col-md-8">
								<textarea class="form-control" name="category_description"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-4">Publication Status</label>
							<div class="col-md-8 radio" >
								<label><input type="radio" name="publication_status" value="1">Published</label>
								<label><input type="radio" name="publication_status" value="0">Unpublished</label>
							</div>
						</div>
						<div class="form-group">
							
							<div class="col-md-8 col-md-offset-4">
								<input type="submit" name="btn" class="btn btn-success btn-block" value="Save Category info">
						</div>
						</div>
					<!-- </form> -->
					{{ Form::close() }}
				</div>
			</div>
		</div>
	</div>
@endsection

