<?php

namespace App\Http\Controllers\Koperasi;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\KoperasiBarang_Model;

class KoperasiProvinsiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $res_provinsi = DB::select('select * from koperasi_provinsi');
        $title = 'ini barang';
        return view('koperasi.list-provinsi',compact('title','res_provinsi'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view('koperasi.add-provinsi');
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
            'provinsi' => 'required'
        ]);

        $resinsert = DB::insert('INSERT INTO koperasi_provinsi (provinsi) VALUES ("'.$request->provinsi.'"); ');

        if ($resinsert) {
            return redirect()
                ->route('koperasiprovinsi.list')
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
        $res_find = DB::select('select * from koperasi_barang where id='.$id);
        $find = $res_find[0];
        return view('koperasi.show-barang',compact('find'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $res_category_barang = DB::select('select * from koperasi_category_barang');
        $res_find = DB::select('select * from koperasi_barang where id='.$id);
        $find = $res_find[0];
        return view('koperasi.edit-barang',compact('find','res_category_barang'));
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
        $this->validate($request, [
            'barang' => 'required'
        ]);
        // dump($id);
        // dump($request->category_barang);
        // dd("ini edit");

        $resupdate = DB::update('UPDATE koperasi_barang
        SET id_category_barang="'.$request->id_category_barang.'",barang="'.$request->barang.'", price="'.$request->price.'", stock="'.$request->stock.'" WHERE id='.$id.'; ');

        if ($resupdate) {
            return redirect()
                ->route('koperasibarang.list')
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

        $resdelete = DB::delete('DELETE FROM koperasi_barang WHERE id='.$id.';');

        if ($resdelete) {
            return redirect()
                ->route('koperasibarang.list')
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
}
