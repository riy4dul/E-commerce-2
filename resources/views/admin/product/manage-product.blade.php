
@extends('admin.master')
@section('body')
<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="text-center text-success">Manage Category Form</h4>
					<h3 class="text-center text-success">	{{ Session::get('message')}}</h3>
					<h3 class="text-center text-success"> {{Session::get('mess')}}</h3>
					<h3 class="text-center text-success"> {{Session::get('mm')}}</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-bordered">
						<tr class="bg-primary">
							<th >SI No</th>
							<th>Category Name</th>
							<th>Brand Name</th>
							<th>Product Name</th>
							<th>Product Price</th>
							<th>Product Quantity</th>
							<th>Short Description</th>
							<th>Long Description</th>
							<th>Product Image</th>
							<th>Publication Status</th>
							<th>Action</th>
						</tr>
						<tr>
						@php($i=1)
						@foreach($products as $product)
							<td>{{$i++}}</td>
							<td>{{$product->category_name}}</td>
							<td>{{$product->brand_name}}</td>
							<td>{{$product->product_name}}</td>
							<td>{{$product->product_price}}</td>
							<td>{{$product->product_quantity}}</td>
							<td>{{$product->short_description}}</td>
							<td>{{$product->long_description}}</td>
							<td>
								<img src="{{asset($product->product_image)}}" alt="" height="100" width="100">
							</td>
							<td>{{$product->publication_status == 1 ? 'Published' : 'Unpublished'}}</td>
							<td>
								@if($product->publication_status == 1)
								<a href="{{route ('unpublished-product',['id'=>$product->id])}}" class="btn btn-info btn xs">
									<span class="glyphicon glyphicon-arrow-up"></span>
								</a>
								@else
								<a href="{{route('published-product',['id'=>$product->id])}}" class="btn btn-warning btn xs">
									<span class="glyphicon glyphicon-arrow-down"></span>
								</a>
								@endif
								
								<a href="{{route('edit-product',['id'=>$product->id])}}" class="btn btn-success btn xs">
									<span class="glyphicon glyphicon-edit"></span>
								</a>
								<a href="{{route('delete-product',['id'=>$product->id])}}" class="btn btn-danger btn xs">
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


