
@extends('admin.master')
@section('body')

<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="text-center text-success">Manage Brands Form</h4>
					<h3 class="text-center text-success">	{{ Session::get('message')}}</h3>
					<h3 class="text-center text-success"> {{Session::get('mess')}}</h3>
					<h3 class="text-center text-success"> {{Session::get('mm')}}</h3>
					
				</div>
				<div class="panel-body">
					<div class="table-responsive">
					<table class="table table-bordered">
						<tr class="bg-primary">
							<th >SI No</th>
							<th>Brand Name</th>
							<th>Brand Description</th>
							<th>Publication Status</th>
							<th>Action</th>
						</tr>
						<tr>
						@php($i=1)
						@foreach($brands as $brand)
							<td>{{$i++}}</td>
							<td>{{$brand->brand_name}}</td>
							<td>{{$brand->brand_description}}</td>
							<td>{{$brand->publication_status == 1 ? 'Published' : 'Unpublished'}}</td>
							<td>
								@if($brand->publication_status == 1)
								<a href="{{route ('unpublished-brand',['id'=>$brand->id])}}" class="btn btn-info btn xs">
									<span class="glyphicon glyphicon-arrow-up"></span>
								</a>
								@else
								<a href="{{route('published-brand',['id'=>$brand->id])}}" class="btn btn-warning btn xs">
									<span class="glyphicon glyphicon-arrow-down"></span>
								</a>
								@endif


								<a href="{{route('edit-brand',['id'=>$brand->id])}}" class="btn btn-success btn xs">
									<span class="glyphicon glyphicon-edit"></span>
								</a>
								<a href="{{route('delete-brand',['id'=>$brand->id])}}" class="btn btn-danger btn xs">
									<span class="glyphicon glyphicon-trash"></span>
								</a>
							</td>
							
						</tr>
						@endforeach
					</table>
				</div>
				</div>
			</div>
		</div>
	</div>
@endsection


