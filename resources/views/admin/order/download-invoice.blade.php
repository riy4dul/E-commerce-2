<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
			
			<h4 class="text-center text-success">Invoice</h4>
		</div>
		<div class="panel-body">
			<div class="container">
				
				<div class="row pad-top-botm ">
					<div class="col-md-6">
						<img src="" style="padding-bottom:20px;">
					</div>
					<div class="col-md-6">
						
						<strong>Mmshop</strong><br>
						<strong>Invoice NO {{$order->id}}</strong>
						<br>
						<i>Address :</i> Savar
						<br>
						Hemayetpur,
						<br>
						Dhaka-1340
						
					</div>
				</div>
				<div class="row text-center contact-info">
					<div class="col-md-10">
						<hr>
						<span>
							<strong>Email : </strong>  mm@shop.com
						</span>
						<span>
							<strong>Call : </strong>  +8801676275506
						</span>
						<hr>
					</div>
				</div>
				<div class="row pad-top-botm client-info">
					<div class="col-md-6">
						<h4>  <strong>Client Information</strong></h4>
						<strong> {{$customer->first_name.' '.$customer->last_name}}</strong>
						<br>
						<b>Address :</b> {{$shipping->address}}
						<br>
						<b>Call :</b> {{$customer->phone_number}}
						<br>
						<b>E-mail :</b> {{$customer->email_address}}
					</div>
					<div class="col-md-6">
						
						<h4>  <strong>Payment Details </strong></h4>
						<b>Bill Amount :  {{$order->order_total}}.Tk </b>
						<br>
						Bill Date :  {{$order->created_at}}
						<br>
						<b>Payment Status :  Paid </b>
						<br>
						Delivery Date :  10th August 2018
						<br>
						Purchase Date :  {{$order->created_at}}
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="text-center text-success">Product Info For This Ordere</h3>
							</div>
							<div class="panel-body">
								<table class="table table-bordered">
									<tr class="bg-primary">
										<th >SI No</th>
										<th>Product Id</th>
										<th>Product Name</th>
										<th>Product Price</th>
										<th>Product Quantity</th>
										<th>Total Price</th>
									</tr>
									
									<tr>
										@php($i=1)
										@foreach($orderDetails as $orderDetail)
										<td>{{$i++}}</td>
										<td>{{$orderDetail->product_id}}</td>
										<td>{{$orderDetail->product_name}}</td>
										<td>Tk.{{$orderDetail->product_price}}</td>
										<td>{{$orderDetail->product_quantity}}</td>
										<td>TK.{{$orderDetail->product_price*$orderDetail->product_quantity}}</td>
										
									</tr>
									@endforeach
									
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10">
						<strong> Important: </strong>
						<ol>
							<li>
								This is an electronic generated invoice so doesn't require any signature.
							</li>
							<li>
								Please read all terms and polices on  www.yourdomaon.com for returns, replacement and other issues.
							</li>
						</ol>
					</div>
				</div>
				<div class="row pad-top-botm">
					<div class="col-md-10">
						<hr>
						<a href="#" class="btn btn-primary btn-lg">Print Invoice</a>
						&nbsp;&nbsp;&nbsp;
						<a href="#" class="btn btn-success btn-lg">Download In Pdf</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>