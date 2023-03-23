<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
    //  * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
    //  * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('guest')->except('logout');
    // }
    protected function attemptLogin(Request $request)
    {
        #fungsi check apakah inputan email terdapat prefix . sebelum @
        $explode = explode("@",$request->email);
        $explode[0]=str_replace(".","",$explode[0]);
        $email = implode("@", $explode);
        //return (auth()->attempt(['email' => $request->email, 'password' => $request->password]));
        return (auth()->attempt(['email' => $email, 'password' => $request->password]));
    }
    protected function authenticated(Request $request, $user)
    {
        
       
        // if ($user->isAdmin()) { // do your magic here
        //     return redirect()->route('dashboard');
        // }
        // dump($user);
        // dump($user->id);
        // dump($user->name);
        // dd("test");
        if ($user->hasRole('Admin')) {
            return redirect('/admin/dashboard');
        } else  if ($user->hasRole('member')) {
            return redirect('/member/board');
        }
    }
    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    //protected $redirectTo = '/admin';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'logout']);
    }

    public function showLoginForm()
    {
        $courses =  DB::select("SELECT n.id, n.title,n.image_landscape,n.author,n.level,n.price_buy,n.price_rent, c.name, n.created_at, n.short_desc, n.image from kelas_online as n inner join kelas_online_category as c on n.category_id = c.id");
        $coursescategory = DB::select("SELECT *,(select count(*) from kelas_online as k where k.category_id = c.id) as jumlah from kelas_online_category as c");
        $coursestechnology = DB::select("SELECT * from kelas_online_technology");
        // return view('auth.login');
        $title = "Sign In";
        $pages = "signin";
        return view('LMS-front.signin', compact('title', 'pages','courses', 'coursescategory','coursestechnology'));
    }
}
