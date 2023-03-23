<?php

namespace App\Http\Controllers\Courses;

use App\Models\Kelas_online_model;
use App\Models\Kelas_online_category_model;
use App\Models\Kelas_online_detail_model;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\DB;

class CoursesController extends Controller
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
        // $product_models = Product_model::latest()->get();
        $coursescategory = DB::select("SELECT * from kelas_online_category");
        $coursestechnology = DB::select("SELECT * from kelas_online_technology");
        $kelasonline =  DB::select("SELECT n.id, n.title,n.level,n.image_landscape,n.author,n.price_buy, n.price_rent,n.technology_id, c.name, n.created_at from kelas_online as n inner join kelas_online_category as c on n.category_id = c.id");
        return view('lms-front/courses/list', compact('kelasonline','coursescategory', 'coursestechnology'));
            // ->with('i', ($request->input('page', 1) - 1) * 5);
    }

     

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $coursescategory = DB::select("SELECT * from kelas_online_category");
        $coursestechnology = DB::select("SELECT * from kelas_online_technology");

        $res_kelas_online = DB::select("SELECT * from kelas_online where id = ".$id);
        $kelas_online = $res_kelas_online[0];
        $res_kelas_online_detail = DB::select("SELECT * from kelas_online_detail where id_kelas_online = ".$id);
        $kelas_online_detail  = $res_kelas_online_detail;
        $title = "News & Reviews";
        $pages = 'detail';


        //$kelas_online_models = Kelas_online_model::find($id);
        return view('lms-front/courses/detail', compact('title','pages','kelas_online','kelas_online_detail','coursescategory', 'coursestechnology'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $reskelasonline =  DB::select("SELECT n.id, n.title,n.short_desc, n.text, c.name, n.created_at from kelas_online as n inner join kelas_online_category as c on n.category_id = c.id where n.id=".$id);
        $kelasonline = $reskelasonline[0];
        //dd($news);
        //$product_models = Blog_article_category_model::findOrFail($id);
        return view('kelasonline.edit-kelasonline', compact('kelasonline'));
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

        //    dd($request->status);
        
        $this->validate($request, [
            'title' => 'required'
        ]);
        
         $files = '';
        if ($request->hasfile('image')) {
           
            // foreach ($request->file('filenames') as $file) {
                $file = $request->file('image');
                $name = time() . rand(1, 100) . '.' . $file->extension();
               
                $file->move(public_path('files/news-images'), $name); 
                
                $files = $name;
            // }
        }
       

        $kelas_online_models = Kelas_online_model::findOrFail($id);

        $kelas_online_models->update([
            'title' => $request->title,
            'short_desc' => $request->short_desc,
            'text' => $request->text,
            'image' => $files,
            'status' => $request->status
        ]);

        if ($kelas_online_models) {
            return redirect()
                ->route('kelasonline.index')
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
