<?php

namespace App\Http\Controllers\Front;


use App\Models\Product_model;
use App\Models\Product_collection_model;
use App\Models\Product_type_model;
use App\Models\Product_form_model;
use App\Models\Product_package_model;
use App\Models\File;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class FrontContactController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
      

        $title = "Cafe";
		$pages = "cafe";
        return view('front/contact',compact('title','pages'));
    }

    
}