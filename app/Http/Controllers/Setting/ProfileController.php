<?php

/**
 * author : Suryo Atmojo <suryoatm@gmail.com>
 * project : Supresso Laravel
 * Start-date : 19-09-2022
 */

namespace App\Http\Controllers\Setting;

use App\Models\Member_model;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Hash;

use App\Models\User;
use Illuminate\Support\Facades\Redirect;


use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Vend\VendController;

class ProfileController extends Controller
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
        $userId = auth()->user()->id;
        $userfind = User::find($userId);
        $role = $userfind->getRoleNames();
        $res_user = DB::select('select * from users as u left join member_models as m on u.id = m.id_users_login  where u.id ='.$userId);
        
        $user = $res_user[0];
        return view('users.profile',compact('userId','user','role'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = ($request->id);
        $this->validate($request, [
            // 'name' => 'required',
            // 'email' => 'required|email|unique:users,email,'.$id,
            'password' => 'same:confirm-password'
        ]);
    
        $input = $request->all();
        if(!empty($input['password'])){ 
            $input['password'] = Hash::make($input['password']);
        }else{
            $input = Arr::except($input,array('password'));    
        }
    
        $user = User::find($id);
        $user->update($input);
        // DB::table('model_has_roles')->where('model_id',$id)->delete();
    
        // $user->assignRole($request->input('roles'));
    
        return redirect()->route('users.profile')
                        ->with('success','User Pssword updated successfully');
    }

}
