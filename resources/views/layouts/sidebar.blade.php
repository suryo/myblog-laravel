<!-- ========== Left Sidebar Start ========== -->
<div class="vertical-menu">

    <!-- LOGO -->
    <div class="navbar-brand-box">
        <a href="{{url('/')}}" class="logo logo-dark">
            <span class="logo-sm">
                <h4 class="mt-4" style="color: orangered">SPMI</h4>
            </span>
            <span class="logo-lg">
                <h4 class="mt-4" style="color: orangered">SPMI</h4>
            </span>
        </a>

        <a href="{{url('/')}}" class="logo logo-light">
            <span class="logo-sm">
                <h4 class="mt-4" style="color: orangered">SPMI</h4>
            </span>
            <span class="logo-lg">
                <h4 class="mt-4" style="color: orangered">SPMI</h4>
            </span>
        </a>
    </div>

    <button type="button" class="btn btn-sm px-3 font-size-16 header-item waves-effect vertical-menu-btn">
        <i class="fa fa-fw fa-bars"></i>
    </button>

    <div data-simplebar class="sidebar-menu-scroll">
          <!--- Sidemenu admin-->
          @if (Auth::user()->hasRole('Admin') == 1)
          <div id="sidebar-menu">
              <!-- Left Menu Start -->
              <ul class="metismenu list-unstyled" id="side-menu">
                  <li class="menu-title">@lang('translation.Menu')</li>

                  <li>
                      <a href="{{ url('admin/dashboard') }}">
                          <i class="uil-home-alt"></i>
                          {{-- <span class="badge rounded-pill bg-primary float-end">01</span> --}}
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
                              <li><a href={{ route('permissions.index') }}>@lang('Permissions')</a></li>
                          @endcan
                      </ul>
                  </li>

                  <li>
                      <a href="javascript: void(0);" class="has-arrow waves-effect">
                          <i class="uil-newspaper  "></i>
                          <span>@lang('News & Article')</span>
                      </a>
                      <ul class="sub-menu" aria-expanded="true">
                          <li><a href={{ url('news') }}>@lang('News')</a></li>
                          <li><a href={{ url('newscategory') }}>@lang('News Category')</a></li>

                      </ul>
                  </li>


                  <li>
                      <a href="javascript: void(0);" class="has-arrow waves-effect">
                          <i class="uil-user-square"></i>
                          <span>@lang('Master Data')</span>
                      </a>
                      <ul class="sub-menu" aria-expanded="true">
                          <li><a href=#>@lang('Member')</a></li>
                          <li><a href=#>@lang('Member Order')</a></li>
                          <li><a href=#>@lang('Member Point History')</a></li>
                      </ul>
                  </li>

                  <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-graph-bar" style="color: rgb(60, 0, 255)"></i>
                        <span>@lang('Survey')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href=#>@lang('Set Angket')</a></li>
                        <li><a href=#>@lang('Member Order')</a></li>
                        <li><a href=#>@lang('Member Point History')</a></li>
                    </ul>
                  </li>

                  <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-document-info" style="color: rgb(255, 8, 0)"></i>
                        <span>@lang('RENOP')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href=#>@lang('Panduan Renop')</a></li>
                        <li><a href=#>@lang('Laporan Kinerja Prodi/Biro')</a></li>
                    </ul>
                  </li>

                  <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-document-info" style="color: rgb(0, 255, 89)"></i>
                        <span>@lang('Monev')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href=#>@lang('Panduan Monev')</a></li>
                        <li><a href=#>@lang('Instrumen Monev')</a></li>
                        <li><a href=#>@lang('Format Laporan Monev')</a></li>
                        <li><a href=#>@lang('Laporan Monev')</a></li>
                        <li><a href=#>@lang('Dokumen/Bukti Fisik Monev')</a></li>
                        
                    </ul>
                  </li>

                  <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-document-info" style="color: rgb(0, 208, 255)"></i>
                        <span>@lang('SPMI')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href=#>@lang('Kebijakan SPMI')</a></li>
                        <li><a href=#>@lang('Standar SPMI')</a></li>
                        <li><a href=#>@lang('Manual SPMI')</a></li>
                    </ul>
                  </li>

                  <li>
                    <a href="javascript: void(0);" class="has-arrow waves-effect">
                        <i class="uil-document-info" style="color: red"></i>
                        <span>@lang('AIPT')</span>
                    </a>
                    <ul class="sub-menu" aria-expanded="true">
                        <li><a href=#>@lang('AIPT Butir')</a></li>
                        <li><a href=#>@lang('AIPT Dokumen')</a></li>
                    </ul>
                  </li>




                  <li>
                      <a href="{{ url('sliders') }}">
                          <i class="uil-picture "></i>
                          <span>@lang('Sliders')</span>
                      </a>
                  </li>

                 

                  <li class="menu-title">@lang('Setting')</li>
                  <li>
                      <a href="{{ url('admin/websetup') }}">
                          <i class="uil-setting"></i>
                          <span>@lang('Setup Web')</span>
                      </a>
                  </li>
                  <li>
                      <a href="javascript: void(0);" class="has-arrow waves-effect">
                          <i class="uil-database"></i>
                          <span>@lang('Sync Database')</span>
                      </a>
                      <ul class="sub-menu" aria-expanded="true">
                          <li><a href={{ route('sync-product.index') }}>@lang('Sync Products')</a></li>
                          <li><a href="#">@lang('Sync Orders')</a></li>
                      </ul>
                  </li>

              </ul>
          </div>
      @elseif (Auth::user()->hasRole('admin01') == 1)
      <div id="sidebar-menu">
          <!-- Left Menu Start -->
          <ul class="metismenu list-unstyled" id="side-menu">
              <li class="menu-title">@lang('translation.Menu')</li>

              <li>
                  {{-- <a href="{{url('index')}}"> --}}
                  <a href="{{ url('admin/dashboard') }}">
                      <i class="uil-home-alt"></i>
                      {{-- <span class="badge rounded-pill bg-primary float-end">01</span> --}}
                      <span>@lang('translation.Dashboard')</span>
                  </a>
              </li>

              <li>
                  <a href="{{ url('admin/orders') }}">
                      <i class="uil-store"></i>
                      <span>@lang('Order History')</span>
                  </a>
              </li>
            

              <li>
                  <a href="javascript: void(0);" class="has-arrow waves-effect">
                      <i class="uil-box"></i>
                      <span>@lang('Product')</span>
                  </a>
                  <ul class="sub-menu" aria-expanded="true">
                      <li><a href={{ url('admin/product-collections') }}>@lang('Product Collections')</a></li>
                      <li><a href={{ url('admin/product-types') }}>@lang('Product Types')</a></li>
                      <li><a href={{ url('admin/product-forms') }}>@lang('Product Forms')</a></li>
                      <li><a href={{ url('admin/product-packages') }}>@lang('Product Packages')</a></li>
                      <li><a href={{ url('admin/products') }}>@lang('Products')</a></li>

                  </ul>
              </li>

             

              <li>
                  <a href="javascript: void(0);" class="has-arrow waves-effect">
                      <i class="uil-store"></i>
                      <span>@lang('Store')</span>
                  </a>
                  <ul class="sub-menu" aria-expanded="true">
                      <li><a href={{ url('admin/stock') }}>@lang('Edit Stock')</a></li>
                      {{-- <li><a href={{ url('admin/orders') }}>@lang('Order History')</a></li> --}}
                      {{-- <li><a href={{ url('admin/discount-product') }}>@lang('Discount Product')</a></li> --}}
                      <li><a href={{ url('admin/discount-cluster') }}>@lang('Discount Promo')</a></li>
                      <li><a href={{ url('admin/flashsale') }}>@lang('Flash Sale')</a></li>
                      <li><a href={{ url('admin/freegift') }}>@lang('Set Free Gift')</a></li>
                  </ul>
              </li>

            



              <li>
                  <a href="javascript: void(0);" class="has-arrow waves-effect">
                      <i class="uil-diamond"></i>
                      <span>@lang('Redeemable')</span>
                  </a>
                  <ul class="sub-menu" aria-expanded="true">
                      <li><a href={{ url('admin/voucher') }}>@lang('Voucher')</a></li>
                      {{-- <li><a href={{ url('admin/coupon') }}>@lang('Coupon')</a></li> --}}
                      <li><a href={{ url('admin/merchandise-product') }}>@lang('Merchandise')</a></li>

                  </ul>
              </li>

            

          </ul>
      </div>
      @elseif (Auth::user()->hasRole('admin02') == 1)
          {{-- Sidemenu admin awb --}}
          <div id="sidebar-menu">
              <!-- Left Menu Start -->
              <ul class="metismenu list-unstyled" id="side-menu">
                  <li class="menu-title">@lang('translation.Menu')</li>

                  <li>
                      <a class="dropdown-item"
                          onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i
                              class="uil uil-sign-out-alt font-size-18 align-middle me-1 text-muted"></i> <span
                              class="align-middle">@lang('translation.Sign_out')</span></a>
                  </li>
              </ul>
          </div>
      @endif
      <!-- Sidebar -->
    </div>
</div>
<!-- Left Sidebar End -->