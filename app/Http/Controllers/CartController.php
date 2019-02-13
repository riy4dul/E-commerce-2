<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use Cart;
class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function addToCart(Request $request)
    {
       $product=Product::find($request->id);
       Cart::add([
            'id'=>$request->id,
            'name'=>$product->product_name,
            'price'=>$product->product_price,
            'qty'=>$request->qty,
            'options'=>[
                'image'=>$product->product_image
            ]
       ]);

       return redirect('/cart/show');
    }

   
    public function showCart()
    {
        $cartProducts=Cart::content();

        return view ('front-end.cart.show-cart',[
            'cartProducts'=>$cartProducts
        ]);
    }

    public function updateCart(Request $request)
    {
        Cart::update($request->rowId,$request->qty);
        return redirect('/cart/show');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function deleteCart($id)
    {
        Cart::remove($id);
        return redirect ('/cart/show');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
