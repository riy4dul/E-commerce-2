<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Brand;
use App\Category;
use App\Product;
use DB;
use Image;

class ProductController extends Controller
{
    public function manageProduct()
    {
        $products=DB::table('products')
                       ->join('categories','products.category_id','=', 'categories.id')
                       ->join('brands','products.brand_id', '=','brands.id')
                       ->select('products.*','categories.category_name','brands.brand_name')
                       ->get();

        //return $products;

        return view('admin.product.manage-product',['products'=>$products]);
    }


    public function index()
    {
        $categories=Category::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        return view('admin.product.add-product',[
            'categories' =>$categories,
            'brands'     =>$brands,

        ]);
    }

     public function ProductInformationValidation($request)
    {
        $this->validate($request,[
           'product_name'=>'required',
            'product_price'=>'required',
            'product_quantity'=>'required',
            'short_description'=>'required',
            'long_description'=>'required',
            'publication_status'=>'required'
        ]);
    }

    protected function ProductImageUpload($request)
    {
        $productImage=$request->file('product_image');
        $fileType=$productImage->getClientOriginalExtension();
        $imageName=$request->product_name.'.'.$fileType;
        //return $imageName;
        $directory='product-images/';
        $imageUrl = $directory.$imageName;
        //$productImage->move($directory,$imageName);
        Image::make($productImage)->resize('200','200')->save($imageUrl);
        return $imageUrl;
    }
  
    public function saveProduct(Request $request)
    {
        
        $this->ProductInformationValidation($request);
        $imageUrl=$this->ProductImageUpload($request);

        $product = new Product();
        $product->category_id=$request->category_id;
        $product->brand_id=$request->brand_id;
        $product->product_name=$request->product_name;
        $product->product_price=$request->product_price;
        $product->product_quantity=$request->product_quantity;
        $product->short_description=$request->short_description;
        $product->long_description=$request->long_description;
        $product->product_image=$imageUrl;
        $product->publication_status=$request->publication_status;
        $product->save();

        return redirect('/product/add')->with('message','Product Info Save Successfully');

    }

     public function unpublishedProduct($id)
    {
       $product=Product::find($id);
       $product->publication_status=0;
       $product->save();
        return redirect('/product/manage')->with('message','product Unpublished Successfully');
    }

     public function publishedProduct($id)
    {
       $product=Product::find($id);
       $product->publication_status=1;
       $product->save();
        return redirect('/product/manage')->with('message','product published Successfully');
    }

    public function deleteProduct($id)
     {
        $category=Product::find($id);
        $category->delete();

        return redirect('/product/manage')->with('mm','Product Delete Successfully');
     }

    


    public function editProduct($id)
    {
        $products=Product::find($id);
        $categories=Category::where('publication_status',1)->get();
        $brands=Brand::where('publication_status',1)->get();
        return view('admin.product.edit-product',[
            'products'=>$products,
            'categories'=>$categories,
            'brands'=>$brands

        ]);
    }


    public function productBasicInfoUpdate($product,$request,$imageUrl=null)
    {
            $product->category_id=$request->category_id;
            $product->brand_id=$request->brand_id;
            $product->product_name=$request->product_name;
            $product->product_price=$request->product_price;
            $product->product_quantity=$request->product_quantity;
            $product->short_description=$request->short_description;
            $product->long_description=$request->long_description;
            if($imageUrl)
            {
                 $product->product_image=$imageUrl;
            }
           
            $product->publication_status=$request->publication_status;
            $product->save();
    }

    public function updateProduct(Request $request)
    {
        $productImage=$request->file('product_image');
        $product = Product::find($request->product_id);

        if($productImage)
        {
            unlink($product->product_image);
            $imageUrl=$this->ProductImageUpload($request);
            $this->productBasicInfoUpdate($product,$request,$imageUrl);
        }
        else
        {
            $this->productBasicInfoUpdate($product,$request);
   
        }
        return redirect('/product/manage')->with('message','Product Update Successfully');
    }

    
}
