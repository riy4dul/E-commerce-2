@extends('front-end.master')
@section ('body')
<div class="content">
	<div class="single-wl3">
		<div class="container">
			<div class="row">
				<div class="col-md-12 well text-center text-success">
					Dear {{Session::get('customerName')}}. You have to give us Product shipping info to compleat your valuable order.
				</div>
				<div class="col-md-8 col-md-offset-2">
					<div class="form-top">
						<div class="form-top-left">
							<h3>Shipping Info gose hear.......</h3>
						</div>
						<div class="form-top-right">
							<i class="fa fa-pencil"></i>
						</div>
					</div>
					{{ Form::open(['route'=>'new-shipping', 'method'=>'POST']) }}
					<div class="form-group">
						<input type="text"  name="full_name" value ="{{$customer->first_name.''.$customer->last_name}}" placeholder="Full name..." class=" form-control" id="form-first-name">
					</div>
					<div class="form-group">
						<input type="email" value ="{{$customer->email_address}}" name="email_address" placeholder="Email..." class="form-control" id="form-email">
					</div>
					<div class="form-group">
						<input type="text" name="phone_number" value ="{{$customer->phone_number}}" placeholder="Phone Number..." class="form-control" id="form-number">
					</div>
					<div class="form-group">
						<textarea name="address" placeholder="Address..." class="form-control" ></textarea>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-success form-control">Save Shipping Info</button>
					</div>
					{{Form::close()}}
				</div>
			</div>
			
		</div>
	</div>
</div>
@endsection