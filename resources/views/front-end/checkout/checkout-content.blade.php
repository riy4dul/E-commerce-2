@extends('front-end.master')
@section ('body')
<div class="banner1">
	<div class="container">
		<h3><a href="intex.html">Home</a>/<span>Add To Cart</span></h3>
	</div>
</div>
<div class="content">
	<div class="single-wl3">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Already Registerd? Login Here !</h3>
								<h3 class="text-center text-danger">{{Session::get('message')}}</h3>
							</div>
							<div class="form-top-right">
								<i class="fa fa-lock"></i>
							</div>
						</div>
						<div class="form-bottom">

							{{ Form::open(['route'=>'customer-login','method'=>'POST']) }}
							<div class="form-group">
								<label class="sr-only" for="form-username">Username</label>
								<input type="text" name="email_address" placeholder="Username..." class="form-username form-control" id="form-username">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-password">Password</label>
								<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password">
							</div>
							<button type="submit" class="btn btn-success">Sign in!</button>
							{{Form::close()}}
						</div>
					</div>
				</div>
				
				<div class="col-sm-1 middle-border"></div>
				<div class="col-sm-1"></div>
				
				<div class="col-sm-5">
					
					<div class="form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>Register If You Are Not Registered before</h3>
							</div>
							<div class="form-top-right">
								<i class="fa fa-pencil"></i>
							</div>
						</div>
						<div class="form-bottom">
							{{ Form::open(['route'=>'customer-sing-up','method'=>'Post']) }}
							<div class="form-group">
								<label class="sr-only" for="form-first-name">First name</label>
								<input type="text" name="first_name" placeholder="First name..." class="form-first-name form-control" id="form-first-name">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-last-name">Last name</label>
								<input type="text" name="last_name" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-email">Email</label>
								<input type="email" name="email_address" placeholder="Email..." class="form-email form-control" id="form-email">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-email">Password</label>
								<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password">
							</div>
							<div class="form-group">
								<label class="sr-only" for="form-number">Phone Number</label>
								<input type="text" name="phone_number" placeholder="Phone Number..." class="form-email form-control" id="form-number">
							</div>
							
							
							<button type="submit" class="btn btn-success">Register!</button>
							{{Form::close()}}
						</div>
					</div>
					
				</div>
			</div>
			
		</div>
	</div>
</div>
@endsection