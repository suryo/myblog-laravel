<?php

namespace App\Http\Controllers\Koperasifront;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\KoperasiBarang_Model;

class FrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $res_category = DB::select('select * from koperasi_category_barang');
       $res_barang = DB::select('select * from koperasi_barang');
        
       return view ('koperasifront.landing',compact('res_category','res_barang'));
    }

    
}
