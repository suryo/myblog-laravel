<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Foundation\Auth\AuthenticatesUsers;





use App\Http\Controllers\Front\FrontLandingController;
use App\Http\Controllers\Front\FrontNewsController;
use App\Http\Controllers\Front\FrontNewsCategoryController;
use App\Http\Controllers\Front\FrontProductController;
use App\Http\Controllers\Front\FrontCartController;
use App\Http\Controllers\Front\FrontCheckoutController;
use App\Http\Controllers\Front\FrontPaymentController;

use App\Http\Controllers\Front\FrontBlogController;
use App\Http\Controllers\Front\FrontKelasOnlineController;
use App\Http\Controllers\Front\FrontKelasEksklusifController;
use App\Http\Controllers\Front\FrontPromoController;
use App\Http\Controllers\Front\FrontMembershipController;
use App\Http\Controllers\Front\FrontGalleryController;



use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PermissionController;

use App\Http\Controllers\Coupon\CouponController;

use App\Http\Controllers\Member\MemberController;
use App\Http\Controllers\Member\MemberOrderController;
use App\Http\Controllers\Member\MemberPointController;

use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\Product\ProductCategoryController;
use App\Http\Controllers\Product\ProductKindController;
use App\Http\Controllers\Product\ProductVariantController;
use App\Http\Controllers\Product\ProductCollectionController;


use App\Http\Controllers\DashboardController;
use App\Http\Controllers\WebsetupController;
use App\Http\Controllers\Member\MemberBoardController;

use App\Http\Controllers\Member\MemberAddressBoardController;


use App\Http\Controllers\Order\OrderController;

use App\Http\Controllers\Discount\DiscountClusterController;
use App\Http\Controllers\Discount\DiscountController;
use App\Http\Controllers\Discount\DiscountProductController;

use App\Http\Controllers\Merchandise\MerchandiseProductController;
use App\Http\Controllers\Freegift\FreegiftController;
use App\Http\Controllers\Flashsale\FlashsaleController;

use App\Http\Controllers\Product\ProductImageController;
use App\Http\Controllers\FileController;

use App\Http\Controllers\Product\ProductTypeController;
use App\Http\Controllers\Product\ProductFormController;
use App\Http\Controllers\Product\ProductPackageController;

// use App\Http\Controllers\Admin\DiscountController;

use App\Http\Controllers\Blog\BlogArticleCategoryController;
use App\Http\Controllers\Blog\BlogArticleController;

use App\Http\Controllers\News\NewsCategoryController;
use App\Http\Controllers\News\NewsController;

use App\Http\Controllers\Kelasonline\KelasOnlineCategoryController;
use App\Http\Controllers\Kelasonline\KelasOnlineController;
use App\Http\Controllers\Kelasonline\KelasOnlineDetailController;

use App\Http\Controllers\Kelaseksklusif\KelasEksklusifCategoryController;
use App\Http\Controllers\Kelaseksklusif\KelasEksklusifController;
use App\Http\Controllers\Kelaseksklusif\KelasEksklusifDetailController;

use App\Http\Controllers\Courses\CoursesCategoryController;
use App\Http\Controllers\Courses\CoursesController;
use App\Http\Controllers\Courses\CoursesDetailController;

use App\Http\Controllers\FpdfController;
use App\Http\Controllers\SlidersController;
use App\Http\Controllers\SyncProductController;
use App\Http\Controllers\CommonLoaderController;

use App\Http\Controllers\CrudBuilderController;


use App\Http\Controllers\StripeController;
use App\Http\Controllers\Vend\VendController;

use App\Http\Controllers\Auth\ForgotPasswordController;
Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post'); 
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');

Route::get('/', [FrontLandingController::class, 'index'])->name('landing');

Route::resource('courses', CoursesController::class);



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Auth::routes();



Route::get('file', [FileController::class, 'create']);
Route::post('file', [FileController::class, 'store']);

//Route::get('/', [App\Http\Controllers\HomeController::class, 'root']);
Route::get('/index', [App\Http\Controllers\HomeController::class, 'index']);



Route::group(['middleware' => ['auth']], function () {
    Route::resource('admin/dashboard', DashboardController::class);
    Route::resource('admin/websetup', WebsetupController::class);
    Route::resource('member/board', MemberBoardController::class);
    Route::resource('fpdf', FpdfController::class);
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);

    Route::resource('news', NewsController::class);
    Route::resource('newscategory', NewsCategoryController::class);

    Route::resource('kelasonline', KelasOnlineController::class);
    Route::resource('kelasonlinecategory', KelasOnlineCategoryController::class);
    Route::resource('kelasonlinedetail', KelasOnlineDetailController::class);

    Route::resource('kelaseksklusif', KelasEksklusifController::class);
    Route::resource('kelaseksklusifcategory', KelasEksklusifCategoryController::class);
    Route::resource('kelaseksklusifdetail', KelasEksklusifDetailController::class);
    Route::resource('permissions', PermissionController::class);
   
    ## STORE PANEL
    Route::resource('blog-article-category', BlogArticleCategoryController::class);
    Route::resource('blog-article', BlogArticleController::class);

    Route::resource('members', MemberController::class);
    Route::resource('memberorders', MemberOrderController::class);
    Route::resource('memberpoints', MemberPointController::class);
    Route::get('expectopatronum', [MemberController::class, 'expectopatronum'])->name('expectopatronum');
    Route::get('shazam', [MemberController::class, 'shazam'])->name('shazam');
    Route::resource('sliders', SlidersController::class);
});


Route::resource('fnews', FrontNewsController::class);

Route::resource('fblog', FrontBlogController::class);
Route::resource('fkelasonline', FrontKelasOnlineController::class);
Route::resource('fkelaseksklusif', FrontKelasEksklusifController::class);
Route::resource('fpromo', FrontPromoController::class);


Route::resource('fproducts', FrontProductController::class);
// Route::resource('fproducts/{collection}/{form}/{sorting}', FrontProductController::class);
// Route::resource('fcarts', FrontCartController::class);

Route::get('fcart', [FrontCartController::class, 'cartList'])->name('cart.list');
Route::post('fcart', [FrontCartController::class, 'addToCart'])->name('cart.store');
Route::post('fcart-modal', [FrontCartController::class, 'addToCartModal'])->name('cartmodal.store');
Route::post('update-cart', [FrontCartController::class, 'updateCart'])->name('cart.update');
Route::post('remove', [FrontCartController::class, 'removeCart'])->name('cart.remove');
Route::post('clear', [FrontCartController::class, 'clearAllCart'])->name('cart.clear');
Route::post('cart-update-discount', [FrontCartController::class, 'updateDiscountCart'])->name('cart.updatediscount');



Route::get('fcheckouts', [FrontCheckoutController::class, 'index'])->name('checkout.index');
Route::post('fpayment', [FrontCheckoutController::class, 'payment'])->name('payment');
Route::post('fpaymentstripe', [FrontCheckoutController::class, 'paymentstripe'])->name('paymentstripe');
Route::post('fpaymentpaypal', [FrontCheckoutController::class, 'paymentpaypal'])->name('paymentpaypal');

Route::post('checkshipping', [FrontCheckoutController::class, 'indexshipping'])->name('checkout.indexshipping');
Route::post('fcheckouts', [FrontCheckoutController::class, 'AddShipping'])->name('checkout.addshipping');

Route::get('fmachines', [FrontMachinesController::class, 'index'])->name('front.machines.index');
Route::get('fexplore', [FrontExploreController::class, 'index'])->name('front.explore.index');
Route::get('fpartnership', [FrontPartnershipController::class, 'index'])->name('front.partnership.index');
Route::get('fcafe', [FrontCafeController::class, 'index'])->name('front.cafe.index');
Route::get('fmembership', [FrontMembershipController::class, 'index'])->name('front.membership.index');
Route::get('fgallery', [FrontGalleryController::class, 'index'])->name('front.gallery.index');


Route::get('/landing', function () {
    return view('ui/landing', [
        "title" => "Home",
        "pages" => "landing"
    ]);
});



Route::get('/slider-load', [CommonLoaderController::class, 'loadSlider']);
Route::post('/product-carousel-load', [CommonLoaderController::class, 'loadCarouselCategory']);
Route::get('/product-data-load/{collection}/{form}/{sorting}', [CommonLoaderController::class, 'loadProductData']);

Route::get('/coffee', function () {
    return view('ui/coffee', [
        "title" => "Coffee Collection",
        "pages" => "product"
    ]);
});

Route::get('/detail-coffee', function () {
    return view('ui/detail-coffee', [
        "title" => "Detail Coffee",
        "pages" => "detail"
    ]);
});

// cart pages
Route::get('/cart', function () {
    return view('ui/cart', [
        "title" => "Shopping Cart",
        "pages" => "cart"
    ]);
});

// checkout pages
Route::get('/checkout', function () {
    return view('ui/checkout', [
        "title" => "Shipping & Checkout",
        "pages" => "checkout"
    ]);
});

// user pages
Route::get('/user', function () {
    return view('ui/user', [
        "title" => "Account",
        "pages" => "user"
    ]);
});

// signin pages
Route::get('/signin', function () {
    return view('ui/signin', [
        "title" => "Sign In",
        "pages" => "signin"
    ]);
});

// signup pages
Route::get('/signup', function () {
    return view('ui/signup', [
        "title" => "Sign Up",
        "pages" => "signup"
    ]);
});

// gallery pages
Route::get('/gallery', function () {
	return view('ui/gallery', [
		"title" => "Gallery",
		"pages" => "gallery"
	]);
});

// cafe pages
Route::get('/cafe', function () {
	return view('ui/cafe', [
		"title" => "Cafe",
		"pages" => "cafe"
	]);
});

// partnership pages
Route::get('/partnership', function () {
	return view('ui/partnership', [
		"title" => "Partnership",
		"pages" => "partnership"
	]);
});

// explore pages
Route::get('/explore', function () {
	return view('ui/explore', [
		"title" => "Explore",
		"pages" => "explore"
	]);
});

// membership pages
Route::get('/membership', function () {
	return view('ui/membership', [
		"title" => "Membership",
		"pages" => "membership"
	]);
});

// machines pages
Route::get('/machines', function () {
	return view('ui/machines', [
		"title" => "Kraton",
		"pages" => "machines"
	]);
});

// master
Route::get('/master', function () {
	return view('ui/master', [
		"title" => "master",
		"pages" => "master"
	]);
});
