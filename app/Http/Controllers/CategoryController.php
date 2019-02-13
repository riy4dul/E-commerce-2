<?php

namespace App\Http\Controllers;
use App\Category;
use DB;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
    	return view('admin.category.add-category');
    }


    

    

     public function saveCategory(Request $request)
    {
    	$category = new Category();
    	$category->category_name =$request->category_name;
    	$category->category_description =$request->category_description;
    	$category->publication_status =$request->publication_status;
    	$category->save();


    	return redirect('/category/add')->with('message','Category Info Save Successfully');

    	
    	//Category::create($request->all());

    	// DB::table('categories')->insert([
    	// 	'category_name'=>$request->category_name,
    	// 	'category_description'=>$request->category_description,
    	// 	'publication_status'=>$request->publication_status

    	// ]);
    }

	public function manageCategory()
	    {
	    	$categories=Category::all();
	    	return view('admin.category.mamage-category',['categories'=>$categories]);
	    }

	   

	public function unpublishedCategory($id)
	    {
	    	$category=Category::find($id);
	    	$category->publication_status=0;
	    	$category->save();

	    	return redirect('/category/manage')->with('message','Category Unpublished Successfully');
	    	
	    	
	    }

	public function publishedCategory($id)
	{
		$category=Category::find($id);
		$category->publication_status=1;
		$category->save();

		return redirect('/category/manage')->with('mess','Category Published Successfully');
	}

	public function editCategory($id)
	{
		$category=Category::find($id);
		return view('admin.category.edit-category',['category'=>$category]);
	}


    	
   
     public function updateCategory(Request $request)
     {
     	//return $request->all();

     	$category=Category::find($request->category_id);
     	$category->category_name=$request->category_name;
     	$category->category_description=$request->category_description;
     	$category->publication_status =$request->publication_status;
     	$category->save();

     	return redirect('/category/manage')->with('mm','Category Update Successfully');
     }

     public function deleteCategory($id)
     {
     	$category=Category::find($id);
     	$category->delete();

     	return redirect('/category/manage')->with('mm','Category Delete Successfully');

        
     }
}
