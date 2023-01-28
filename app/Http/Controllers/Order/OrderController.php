<?php

namespace App\Http\Controllers\Order;


use App\Models\Order_model;
use App\Models\Order_detail_model;

use App\Models\File;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
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
    // dump($request->start);
    // dump($request->end);
    
        if ((!empty($request->start))&&(!empty($request->end))) {
            $arraydatestart = explode('-', $request->start);
            $arraydateend = explode('-', $request->end);
            
           
            $datefrom = $arraydatestart[2]."-".$arraydatestart[1]."-".$arraydatestart[0];
            $dateto = $arraydateend[2]."-".$arraydateend[1]."-".$arraydateend[0];

            // $datefrom = (str_replace("/","-",$sdatefrom));
            // $dateto = (str_replace("/","-",$sdateto));
            $order_models = DB::select("SELECT * from order_models where (tanggalorder BETWEEN '".$datefrom."' AND '".$dateto."') order by id desc");
        }
        else
        {
            $order_models = DB::select("SELECT * from order_models order by id desc");
        }

        // $order_models =  DB::table('order_models')
        //     ->get();

        //$order_models = DB::select("SELECT * from order_models where (tanggalorder BETWEEN '".$datefrom."' AND '".$dateto."') order by id desc");

// dump($order_models);
// dd($order_modelss);



        return view('orders/index', compact('order_models'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $product_collection_models =  DB::table('product_collection_models')->get();
        $product_type_models =  DB::table('product_type_models')->get();
        $product_form_models =  DB::table('product_form_models')->get();
        $product_package_models =  DB::table('product_package_models')->get();
        return view('products/create', compact('product_collection_models', 'product_type_models', 'product_form_models', 'product_package_models'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request, [
            'product_name' => 'required'
        ]);

        $files = [];
        if ($request->hasfile('filenames')) {
            foreach ($request->file('filenames') as $file) {
                $name = time() . rand(1, 100) . '.' . $file->extension();
                $file->move(public_path('files/product-images'), $name);
                $files[] = $name;
            }
        }

        $product_models = Product_model::create([
            'sku' => $request->sku,
            'product_name' => $request->product_name,
            'product_detail' => $request->product_detail,
            'product_shortdetail' => $request->product_shortdetail,
            'product_brand' => $request->product_brand,
            'product_collection' => $request->product_collection,
            'product_type' => $request->product_type,
            'product_form' => $request->product_form,
            'product_package' => $request->product_package,
            'product_price' => $request->product_price,
            'product_price_currency' => $request->product_price_currency,
            'product_weight' => $request->product_weight,
            'product_width' => $request->product_width,
            'product_height' => $request->product_height,
            'product_length' => $request->product_length,
            'product_acidityscore' => $request->product_acidityscore,
            'product_aciditydesc' => $request->product_aciditydesc,
            'product_bodyscore' => $request->product_bodyscore,
            'product_bodydesc' => $request->product_bodydesc,
            'product_roastdesc' => $request->product_roastdesc,
            'product_typedesc' => $request->product_typedesc,
            'product_intensity' => $request->product_intensity,
            'product_default_discount' => $request->product_default_discount,
            'fileimages' => $files,
            'status_stock' => $request->status_stock,
            'status' => $request->status
        ]);

        if ($product_models) {
            return redirect()
                ->route('products.index')
                ->with([
                    'success' => 'New post has been created successfully'
                ]);
        } else {
            return redirect()
                ->back()
                ->withInput()
                ->with([
                    'error' => 'Some problem occurred, please try again'
                ]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $pict = [];
        $images = DB::table('files')->where('files.id_product', '=', $id)->get();

        for ($p = 0; $p < count($images); $p++) {
            $pct = $images[$p]->filenames;
            $fileimages = json_decode($images[$p]->filenames);

            for ($gimg = 0; $gimg < count($fileimages); $gimg++) {
                $imgs =  $fileimages[$gimg];
                array_push($pict, $imgs);
            }
            //dump($images[$p]->filenames[1]);

            //array_push($pict, $pct);
        }
        $product_models =  DB::table('product_models')
            ->where('product_models.id', '=', $id)
            // ->leftjoin(
            //     'product_kind_models',
            //     'product_models.product_kind',
            //     '=',
            //     'product_kind_models.id'
            // )
            // ->leftjoin(
            //     'product_variant_models',
            //     'product_models.product_variant',
            //     '=',
            //     'product_variant_models.id'
            // )
            // ->leftjoin(
            //     'product_category_models',
            //     'product_models.product_category',
            //     '=',
            //     'product_category_models.id'
            // )
            // ->leftjoin(
            //     'product_collection_models',
            //     'product_models.product_collection',
            //     '=',
            //     'product_collection_models.id'
            // )
            // ->select(
            //     'product_models.*',
            //     'product_kind_models.product_kind_name',
            //     'product_variant_models.product_variant_name',
            //     'product_category_models.product_category_name',
            //     'product_collection_models.product_collection_name'
            // )

            ->get();
        //dd($product_models);
        // return view('posts.index', compact('posts'));
        return view('products/show', compact('product_models', 'pict'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product_collection_models =  DB::table('product_collection_models')->get();
        $product_type_models =  DB::table('product_type_models')->get();
        $product_form_models =  DB::table('product_form_models')->get();
        $product_package_models =  DB::table('product_package_models')->get();

        $product_models = Product_model::findOrFail($id);
        $images = json_decode($product_models->fileimages);
        //dd($images);
        return view('products.edit', compact(
            'product_models',
            'product_collection_models',
            'product_type_models',
            'product_form_models',
            'product_package_models',
            'images'
        ));
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
        //dd('test');
        $this->validate($request, [
            'product_name' => 'required'
        ]);


        $product_models = Product_model::findOrFail($id);

        $files = [];

        if ($request->hasfile('filenames')) {
            foreach ($request->file('filenames') as $file) {
                //dd($file->getClientOriginalName());
                $name = $file->getClientOriginalName();
                $file->move(public_path('files/product-images'), $name);
                $files[] = $name;
            }
            //dd($files);

            $product_models->update([
                'sku' => $request->sku,
                'product_name' => $request->product_name,
                'product_detail' => $request->product_detail,
                'product_shortdetail' => $request->product_shortdetail,
                'product_brand' => $request->product_brand,
                'product_collection' => $request->product_collection,
                'product_type' => $request->product_type,
                'product_form' => $request->product_form,
                'product_package' => $request->product_package,
                'product_price' => $request->product_price,
                'product_price_currency' => $request->product_price_currency,
                'product_weight' => $request->product_weight,
                'product_width' => $request->product_width,
                'product_height' => $request->product_height,
                'product_length' => $request->product_length,
                'product_acidityscore' => $request->product_acidityscore,
                'product_aciditydesc' => $request->product_aciditydesc,
                'product_bodyscore' => $request->product_bodyscore,
                'product_bodydesc' => $request->product_bodydesc,
                'product_roastdesc' => $request->product_roastdesc,
                'product_typedesc' => $request->product_typedesc,
                'product_intensity' => $request->product_intensity,
                'product_default_discount' => $request->product_default_discount,
                'fileimages' => $files,
                'status_stock' => $request->status_stock,
                'status' => $request->status
            ]);
        } else {

            dd($files);

            $product_models->update([
                'sku' => $request->sku,
                'product_name' => $request->product_name,
                'product_detail' => $request->product_detail,
                'product_shortdetail' => $request->product_shortdetail,
                'product_brand' => $request->product_brand,
                'product_collection' => $request->product_collection,
                'product_type' => $request->product_type,
                'product_form' => $request->product_form,
                'product_package' => $request->product_package,
                'product_price' => $request->product_price,
                'product_price_currency' => $request->product_price_currency,
                'product_weight' => $request->product_weight,
                'product_width' => $request->product_width,
                'product_height' => $request->product_height,
                'product_length' => $request->product_length,
                'product_acidityscore' => $request->product_acidityscore,
                'product_aciditydesc' => $request->product_aciditydesc,
                'product_bodyscore' => $request->product_bodyscore,
                'product_bodydesc' => $request->product_bodydesc,
                'product_roastdesc' => $request->product_roastdesc,
                'product_typedesc' => $request->product_typedesc,
                'product_intensity' => $request->product_intensity,
                'product_default_discount' => $request->product_default_discount,
                'status_stock' => $request->status_stock,
                'status' => $request->status
            ]);
        }

        // if ($request->hasfile('filenames')) {
        //     foreach ($request->file('filenames') as $file) {
        //         $name = time() . rand(1, 100) . '.' . $file->extension();
        //         $file->move(public_path('files/product-images'), $name);
        //         $files[] = $name;
        //     }
        // }



        if ($product_models) {
            return redirect()
                ->route('products.index')
                ->with([
                    'success' => 'Post has been updated successfully'
                ]);
        } else {
            return redirect()
                ->back()
                ->withInput()
                ->with([
                    'error' => 'Some problem has occured, please try again'
                ]);
        }
    }

    public function updatetrackingnumber(Request $request)
    {
        dump($request->nomerorder);
        dump($request->trackingnumber);
        //dd("update tracking number");
        $update = DB::update('UPDATE order_models SET tracking_number = "'.$request->trackingnumber.'" WHERE nomerorder ="'.$request->nomerorder.'"');
        if ($update) {
            return redirect()
                ->route('orders.index')
                ->with([
                    'success' => 'New post has been created successfully'
                ]);
        } else {
            return redirect()
                ->back()
                ->withInput()
                ->with([
                    'error' => 'Some problem occurred, please try again'
                ]);
        }
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
        $product_models = Product_model::findOrFail($id);

        $product_models->update([
            'deleted' => 'true',
        ]);

        return redirect()->route('products.index')
            ->with('success', 'Product Types deleted successfully');
    }

    public function getOrderNumber()
    {
        $LastOrder = DB::select('select nomerorder from order_models ORDER BY id desc limit 1');
        $lastOrderArr = explode("/", $LastOrder[0]->nomerorder);
        $OrderNumber = ($lastOrderArr[0]) + 1;

        return $OrderNumber;
    }
}