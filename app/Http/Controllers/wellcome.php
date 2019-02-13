<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class wellcome extends Controller
{
    //


    public function about()
    {
    	$name="Robin hood Pandy";
    	$age="18";
    	/* Method 1 view load from controller
    	return view('about', compact('name','age'));
		
		*/


    	/* Method 2 view load from controller
    	return view('about')
    			->with('name',$name)
    			->with('age',$age);
    	*/

    	/* Method 2 view load from 
    	return view('about',[
    	'name'=>$name,
    	'age'=>$age
    	]); 
    	*/
    }
}
