<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Brand;
class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.brand.add-brand');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function manageBrand()
    {
       $brands=Brand::all();

       return view('admin.brand.manage-brand',['brands'=>$brands]);
       
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function saveBrand(Request $request)
    {
        $this->validate($request,[
            'brand_name'=>'required|alpha|string',
            'brand_description'=>'required',
            'publication_status'=>'required'
        ]);

        $brand = new Brand();
        $brand->brand_name =$request->brand_name;
        $brand->brand_description =$request->brand_description;
        $brand->publication_status =$request->publication_status;
        $brand->save();


        return redirect('/brand/add')->with('message','Brand Info Save Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
   public function unpublishedBrand($id)
        {
            $brand=Brand::find($id);
            $brand->publication_status=0;
            $brand->save();

            return redirect('/brand/manage')->with('message','Brand Unpublished Successfully');
            
            
        }

    public function publishedBrand($id)
        {
            $brand=Brand::find($id);
            $brand->publication_status=1;
            $brand->save();

            return redirect('/brand/manage')->with('message','Brand Published Successfully');
            
            
        }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function editBrand($id)
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
    public function deleteBrnd($id)
    {
        $brand=Brand::find($id);
        $brand->delete();

        return redirect('/brand/manage')->with('mm','Brand Delete Successfully');
    }
}
