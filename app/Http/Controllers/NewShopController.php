<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Product;
class NewShopController extends Controller
{
    //

    public function index()
    {
    	
        $newproducts=Product::where('publication_status',1)
                             ->orderBy('id','DESC')
                            ->take(8)
                            ->get();
        //return $newproducts;
        return view('front-end.home.home',[
            'newproducts'=>$newproducts
        ]);
    }


    public function categoryProduct($id)
    {
    	$categoryProducts=Product::where('category_id',$id)
                  ->where('publication_status',1)
                  ->get();  
        return view('front-end.category.category-content',[
        'categoryProducts'=>$categoryProducts
      ]);
    }

    public function productdetails($id)
    {
        $product=Product::find($id);
        return view('front-end.product.product-details',[
            'product'=>$product
        ]);

        
    }

    public function mailUs()
    {
    	return view('front-end.mailus');
    }
}
