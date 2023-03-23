<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <!-- LOGO -->
    <div class="navbar-brand-box">
        <a href="{{url('index')}}" class="logo logo-dark">
            <span class="logo-sm">
                <img src="{{ URL::asset('/template/assets/img/logo-text-orange.svg') }}" alt="" height="22">
            </span>
            <span class="logo-lg">
                <img src="{{ URL::asset('/template/assets/img/logo-text-orange.svg') }}" alt="" height="20">
            </span>
        </a>

        <a href="{{url('index')}}" class="logo logo-light">
            <span class="logo-sm">
                <img src="{{ URL::asset('/template/assets/img/logo-text-orange.svg') }}" alt="" height="22">
            </span>
            <span class="logo-lg">
                <img src="{{ URL::asset('/template/assets/img/logo-text-orange.svg') }}" alt="" height="20">
            </span>
        </a>
    </div>

    <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect vertical-menu-btn">
        <i class="fa fa-fw fa-bars"></i>
    </button>

    <div data-simplebar class="sidebar-menu-scroll">

        <!--- Sidemenu -->
        <div id="sidebar-menu">
            <!-- Left Menu Start -->
            <ul class="metismenu list-unstyled" id="side-menu">
                <li class="menu-title">@lang('translation.Menu')</li>

                <li>
                    {{-- <a href="{{url('index')}}"> --}}
                    <a href="{{url('admin/dashboard')}}">
                        <i class="uil-home-alt"></i><span class="badge rounded-pill bg-primary float-end">01</span>
                        <span>@lang('translation.Dashboard')</span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-user-circle"></i>
                        <span>@lang('Users Management')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href={{ route('users.index') }}>@lang('Users')</a></li>
                        <li><a href={{ route('roles.index') }}>@lang('Roles')</a></li>
                        <li><a href="tables-responsive3">@lang('Access')</a></li>
                           @can('menu-permission')
            
           
                        <li><a href={{ route('permissions.index') }}>@lang('Permissions')</a></li> @endcan
                    </ul>
                </li>

                 <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-blogger-alt  "></i>
                        <span>@lang('Blog')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href={{ route('blog-article-category.index') }}>@lang('Article Category')</a></li>
                        <li><a href={{ route('blog-article.index') }}>@lang('Article')</a></li>
                        {{-- <li><a href="sync">@lang('Sync Vend')</a></li>
                        <li><a href="sync">@lang('Sync Email Vend')</a></li> --}}
                    </ul>
                </li>


          

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-blogger-alt  "></i>
                        <span>@lang('Kelas')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href={{ route('kelasonlinecategory.index') }}>@lang('Category Kelas Online')</a></li>
                        <li><a href={{ route('kelasonline.index') }}>@lang('Kelas Online Note')</a></li>
                        <li><a href={{ route('kelaseksklusifcategory.index') }}>@lang('Category Kelas Eksklusif')</a></li>
                        <li><a href={{ route('kelaseksklusif.index') }}>@lang('Kelas Eksklusif Note')</a></li>
                        {{-- <li><a href="sync">@lang('Sync Vend')</a></li>
                        <li><a href="sync">@lang('Sync Email Vend')</a></li> --}}
                    </ul>
                </li>

               {{-- <li>
                    <a href="{{url('fpdf')}}">
                        <i class="uil-home-alt"></i>
                        <span>@lang('Fpdf')</span>
                    </a>
                </li> --}}

  

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-user-square"></i>
                        <span>@lang('Members')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href={{ route('members.index') }}>@lang('Member')</a></li>
                        <li><a href={{ route('memberorders.index') }}>@lang('Member Order')</a></li>
                        <li><a href={{ route('memberpoints.index') }}>@lang('Member Point History')</a></li>
                        
                    </ul>
                </li>

             

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-store"></i>
                        <span>@lang('Store')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        {{-- <li><a href="#">@lang('Cart')</a></li> --}}
                        <li><a href={{ url('admin/orders') }}>@lang('Order History')</a></li>
                        <li><a href={{ url('admin/discount-product') }}>@lang('Discount Product')</a></li>
                        <li><a href={{ url('admin/discount-cluster') }}>@lang('Discount Promo')</a></li>
                        {{-- <li><a href={{ url('admin/discount') }}>@lang('Discount')</a></li> --}}
                        <li><a href={{ url('admin/flashsale') }}>@lang('Flash Sale')</a></li>
                        <li><a href={{ url('admin/freegift') }}>@lang('Set Free Gift')</a></li>
                    </ul>
                </li>


                <li>
                    <a href="{{url('sliders')}}">
                        <i class="uil-picture "></i>
                        <span>@lang('Sliders')</span>
                    </a>
                </li>

                <li>
                    <a href="{{url('index')}}">
                        <i class="uil-home-alt"></i>
                        <span>@lang('Point History')</span>
                    </a>
                </li>

                <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-diamond"></i>
                        <span>@lang('Redeemable')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href={{url('admin/voucher')}}>@lang('Voucher')</a></li>
                        <li><a href={{url('admin/coupon')}}>@lang('Coupon')</a></li>
                        <li><a href={{url('admin/merchandise-product')}}>@lang('Merchandise')</a></li>
                       
                    </ul>
                </li>

        
           

                <li class="menu-title">@lang('Setting')</li>
                <li>
                    <a href="{{url('admin/websetup')}}">
                        <i class="uil-analytics"></i>
                        <span>@lang('Setup Web')</span>
                    </a>
                </li>
               
            
            </ul>
        </div>
        <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->