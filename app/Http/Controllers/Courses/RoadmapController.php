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

class RoadmapController extends Controller
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
        $roadmap =  DB::select("SELECT r.id, r.title,r.level,r.image_landscape,r.author,r.price_buy, r.price_rent,r.technology_id, c.name, r.created_at from kelas_online_roadmap as r inner join kelas_online_category as c on r.category_id = c.id where r.status='published'");
        return view('lms-front/roadmap/list', compact('roadmap','coursescategory', 'coursestechnology'));
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
        $detail_roadmap = [];

        $coursescategory = DB::select("SELECT * from kelas_online_category");
        $coursestechnology = DB::select("SELECT * from kelas_online_technology");

        $res_roadmap = DB::select("SELECT * from kelas_online_roadmap where id = ".$id);
        $roadmap = $res_roadmap[0];
        $res_kelas_online_roadmap_detail = DB::select("SELECT * from kelas_online_roadmap_detail where id_roadmap = ".$id);
        $kelas_online_roadmap_detail  = $res_kelas_online_roadmap_detail;

        foreach ($kelas_online_roadmap_detail as $key => $value) {
            array_push($detail_roadmap,$value);
            if (!empty($value->id_kelas_online))
            {
                $res_kelas_online = json_decode($value->id_kelas_online);
                //dump(gettype($res_kelas_online));
                $dt_courses = [];
                for ($i=0; $i < count($res_kelas_online) ; $i++) { 
                    $res_detail_courses = DB::select('select * from kelas_online where id ='.$res_kelas_online[$i]);
                    $detail_courses =  $res_detail_courses[0];
                    array_push($dt_courses,$detail_courses);
                }
               $detail_roadmap[$key]->courses = $dt_courses; 
            }
            else
            {
                $detail_roadmap[$key]->courses = null; 
            }
            
        }

        $title = "News & Reviews";
        $pages = 'detail';


        //$kelas_online_models = Kelas_online_model::find($id);
        return view('lms-front/roadmap/detail', compact('title','pages','roadmap','kelas_online_roadmap_detail','coursescategory', 'coursestechnology'));
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