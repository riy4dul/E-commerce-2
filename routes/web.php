<?php


Route::get ('/',[
	'uses'=> 'NewShopController@index',
	'as'=>'/'

]);

Route::get ('/category-product/{id}',[
	'uses'=> 'NewShopController@categoryProduct',
	'as'=>'category-product'

]);

Route::get ('/details-product/{id}',[
	'uses'=> 'NewShopController@productdetails',
	'as'=>'product-details'
]);


Route::get('/mail-us',[

	'uses'=>'NewShopController@mailus',
	'as'=>'mail-us'
]);
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//==================================Category======================================

Route::get ('/category/add',[
	'uses'=> 'CategoryController@index',
	'as'=>'add-category'
]);


Route::post('/category/save',[
	'uses'=>'CategoryController@saveCategory',
	'as'=>'new-category'
]);

Route::get('/category/manage',[
	'uses'=>'CategoryController@manageCategory',
	'as'=>'manage-category'
]);

Route::get('/category/unpublished/{id}',[
	'uses'=>'CategoryController@unpublishedCategory',
	'as'=>'unpublished-category'
]);

Route::get('/category/published/{id}',[
	'uses'=>'CategoryController@publishedCategory',
	'as'=>'published-category'
]);

Route::get('/categoroy/edit/{id}',[
	'uses'=>'CategoryController@editCategory',
	'as'=>'edit-category'
]);

Route::post('/category/update',[
	'uses'=>'CategoryController@updateCategory',
	'as'=>'update-category'
]);

Route::get('/delete/category/{id}',[
	'uses'=>'CategoryController@deleteCategory',
	'as'=>'delete-category'
]);

//===========================Brand=======================================

Route::get('/brand/add',[
	'uses'=>'BrandController@index',
	'as'=>'add-brand'
]);


Route::get('/brand/manage',[
	'uses'=>'BrandController@manageBrand',
	'as'=>'manage-brand'
]);

    
Route::get('/brand/unpublished/{id}',[
	'uses'=>'BrandController@unpublishedBrand',
	'as'=>'unpublished-brand'
]);

Route::get('/brand/published/{id}',[
	'uses'=>'BrandController@publishedBrand',
	'as'=>'published-brand'
]);

Route::get('/brand/edit/{id}',[
	'uses'=>'BrandController@editBrand',
	'as'=>'edit-brand'
]);

Route::post('/brand/update',[
	'uses'=>'CBrandController@updateBrand',
	'as'=>'update-brand'
]);

Route::get('/delete/brand/{id}',[
	'uses'=>'BrandController@deleteBrnd',
	'as'=>'delete-brand'
]);


Route::post('brand/save',[
	'uses'=>'BrandController@saveBrand',
	'as'=>'new-brand'
]);


//============================Product==========================================
Route::get('/product/add',[
	'uses'=>'ProductController@index',
	'as'=>'add-product'
]);

Route::get('/product/manage',[
	'uses'=>'ProductController@manageProduct',
	'as'=>'manage-product'
]);

Route::post('/product/save',[
	'uses'=>'ProductController@saveProduct',
	'as'=>'new-product'

]);

Route::get('/product/unpublished/{id}',[
	'uses'=>'ProductController@unpublishedProduct',
	'as'=>'unpublished-product'
]);

Route::get('/product/published/{id}',[
	'uses'=>'ProductController@publishedProduct',
	'as'=>'published-product'
]);

Route::get('/product/delete/{id}',[
	'uses'=>'ProductController@deleteProduct',
	'as'=>'delete-product'
]);

Route::get('/product/edit/{id}',[
	'uses'=>'ProductController@editProduct',
	'as'=>'edit-product'
]);


Route::post('/product/update',[
	'uses'=>'ProductController@updateProduct',
	'as'=>'update-product'
]);


//==========Add to cart================

Route::post('/cart/add',[
	'uses'=>'CartController@addToCart',
	'as'=>'add-to-cart'
]);


Route::get('/cart/show',[
	'uses'=>'CartController@showCart',
	'as'=>'show-cart'
]);


Route::get('/cart/delete/{id}',[
	'uses'=>'CartController@deleteCart',
	'as'=>'delete-cart-item'
]);


Route::post('/cart/update',[
	'uses'=>'CartController@updateCart',
	'as'=>'update-cart'
]);


Route::get('/checkout',[
	'uses'=>'checkoutController@index',
	'as'=>'checkout'
]);

//========================Customer login register===========

Route::post('/customer/registration',[
	'uses'=>'checkoutController@customerSignUp',
	'as'=>'customer-sing-up'
]);

Route::post('/checkout/customer-login',[
	'uses'=>'checkoutController@customerLoginCheck',
	'as'=>'customer-login'
]);

Route::post('/checkout/customer-logout',[
	'uses'=>'checkoutController@customerLogout',
	'as'=>'customer-logout'
]);

Route::get('/checkout/new-customer-login',[
	'uses'=>'checkoutController@newCustomerLogin',
	'as'=>'new-customer-login'
]);



Route::get('/checkout/shipping',[
	'uses'=>'checkoutController@shippingForm',
	'as'=>'checkout-shiping'
]);

Route::post('/shipping/save',[
	'uses'=>'checkoutController@saveShippingInfo',
	'as'=>'new-shipping'
]);


Route::get('/checkout/payment',[
	'uses'=>'checkoutController@paymentForm',
	'as'=>'checkout-payment'
]);


Route::post('/checkout/order',[
	'uses'=>'checkoutController@newOrder',
	'as'=>'new-order'
]);


Route::get('/complete/order',[
	'uses'=>'checkoutController@completeOrder',
	'as'=>'complete-order'
]);


//=================Order manage=============

Route::get('/order/manage-order',[
	'uses'=>'OrderController@manageOrderInfo',
	'as'=>'manage-order',
	'middleware'=>'Bitm'
]);

Route::get('/order/view-order-detail/{id}',[
	'uses'=>'OrderController@viewOrderDetail',
	'as'=>'view-order-detail'
]);

Route::get('/order/view-order-invoice/{id}',[
	'uses'=>'OrderController@viewOrderInvoice',
	'as'=>'view-order-invoice'
]);

Route::get('/order/download-order-invoice/{id}',[
	'uses'=>'OrderController@downloadOrderInvoice',
	'as'=>'download-order-invoice'
]);
