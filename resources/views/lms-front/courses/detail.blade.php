@extends('lms-front/courses/layout')

@section('notifikasi')

@endsection

@section('konten')
<section class="pt-4 pt-lg-5 bg-white">
    <div class="container">
       <div id="detail" class="row">

          <!-- detail body -->
          <div id="detail-body" class="col-lg-7 col-xl-auto mb-5">
             <!-- baris detail header -->
             <header class="mb-5">
                <div class="row align-items-center mb-3 g-md-3">
                   <div class="col-md-3 mb-3 mb-md-0">
                      <img src={{url("template/assets/img/".$kelas_online->image_square)}} class="img-fluid rounded" alt="">
                   </div>
                   <div class="col-md-9">
                      <h2 class="font-weight-bold text-capitalize mb-0">
                         {{$kelas_online->title}}
                      </h2>
                   </div>
                </div>
                <p class="mb-4">
                  {{$kelas_online->short_desc}}
                </p>
                <div class="row small text-center align-items-md-center">
                   <div class="col-md-auto mb-2">
                      <button class="btn btn-outline-primary btn-sm text-uppercase"
                         style="pointer-events: none;">{{$kelas_online->level}}</button>
                      <span class="pl-3">
                         <i class="bi bi-star-fill text-warning"></i>
                         <i class="bi bi-star-fill text-warning"></i>
                         <i class="bi bi-star-fill text-warning"></i>
                         <i class="bi bi-star-fill text-warning"></i>
                         <i class="bi bi-star-fill text-secondary"></i>
                      </span>
                   </div>
                   <div class="col-md-auto mb-2">3 Penilaian</div>
                   <div class="col-md-auto mb-2">120 Peserta</div>
                   <div class="col-md-auto mb-2 ml-md-auto">
                      <a href="#" style="color: inherit;">
                         <i class="bi bi-share mr-2"></i> Share
                      </a>
                   </div>
                </div>
             </header>

             <!-- baris tentang kelas -->
             <h3 class="font-weight-bold">Tentang Kelas</h3>
             <p class="text-justify mb-5">
               {!!$kelas_online->text!!}
             </p>

             <!-- baris daftar materi -->
             <h3 class="font-weight-bold">Daftar Materi</h3>

             {{-- @foreach ($kelas_online_detail as $detailitem)
             <div class="card mb-2">
                 <a href="#addproduct-billinginfo-collapse{{$detailitem->id}}" class="text-dark" data-bs-toggle="collapse"
                     aria-expanded="true" aria-controls="addproduct-billinginfo-collapse">
                     <div class="p-4">
             
                         <div class="d-flex align-items-center">
                             <div class="me-3">
                                 <div class="avatar-xs">
                                     <div class="avatar-title rounded-circle bg-soft-primary text-primary">
                                         {{$loop->index + 1}}
                                     </div>
                                 </div>
                             </div>
                             <div class="flex-1 overflow-hidden">
                                 <h5 class="font-size-16 mb-1">{{$detailitem->title}}</h5>
                                 <p class="text-muted text-truncate mb-0">{{$detailitem->short_desc}}</p>
                             </div>
                             <i class="mdi mdi-chevron-up accor-down-icon font-size-24"></i>
                         </div>
             
                     </div>
                 </a>
             
                 <div id="addproduct-billinginfo-collapse{{$detailitem->id}}" class="collapse collapsed" data-bs-parent="#addproduct-accordion">
                     <div class="p-4 border-top">
                         {!!$detailitem->text!!}
                     </div>
                 </div>
             </div>
             @endforeach --}}

             @foreach ($kelas_online_detail as $detailitem)
             <div class="mb-1">
                <button class="btn btn-block p-3 pr-5 text-left rounded-0" data-toggle="collapse"
                   data-target="#col-materi{{$detailitem->id}}" style="background-color: rgba(207, 207, 207, 0.25);">
                   <i class="bi bi-lock-fill"></i>
                   <i
                   class="bi bi-play-circle-fill"></i>
                   {{$detailitem->title}} {{$detailitem->short_desc}}
                </button>
                <div class="collapse collapsed" id="col-materi{{$detailitem->id}}">
                  <div class="p-4 border-top">
                     {!!$detailitem->text!!}
                 </div>
                   {{-- <div class="table-responsive">
                      <table class="table table-sm table-borderless table-striped" style="min-width: 560px;">
                         <tbody>
                            <tr>
                               <td><a href="#" class="btn btn-sm btn-play p-0"><i
                                        class="bi bi-play-circle-fill"></i></a></td>
                               <td>Jago Fullstack MEVN dengan Studi Kasus Shopping Cart</td>
                               <td class="text-center"><i class="bi bi-lock-fill"></i><br>02:46</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="btn btn-sm btn-play p-0"><i
                                        class="bi bi-play-circle-fill"></i></a></td>
                               <td>Jago Fullstack MEVN dengan Studi Kasus Shopping Cart</td>
                               <td class="text-center"><i class="bi bi-lock-fill"></i><br>02:46</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="btn btn-sm btn-play p-0"><i
                                        class="bi bi-play-circle-fill"></i></a></td>
                               <td>Jago Fullstack MEVN dengan Studi Kasus Shopping Cart</td>
                               <td class="text-center"><i class="bi bi-lock-fill"></i><br>02:46</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="btn btn-sm btn-play p-0"><i
                                        class="bi bi-play-circle-fill"></i></a></td>
                               <td>Jago Fullstack MEVN dengan Studi Kasus Shopping Cart</td>
                               <td class="text-center"><i class="bi bi-lock-fill"></i><br>02:46</td>
                            </tr>
                            <tr>
                               <td><a href="#" class="btn btn-sm btn-play p-0"><i
                                        class="bi bi-play-circle-fill"></i></a></td>
                               <td>Jago Fullstack MEVN dengan Studi Kasus Shopping Cart</td>
                               <td class="text-center"><i class="bi bi-lock-fill"></i><br>02:46</td>
                            </tr>
                         </tbody>
                      </table>
                   </div> --}}
                </div>
             </div>
             @endforeach
             <style>
                #col-materi table tr td .btn-play {
                   font-size: 1.875rem;
                   line-height: 0;
                   border-radius: 0 !important;
                   color: #007bff;
                }

                #col-materi table tr td {
                   vertical-align: middle;
                }
             </style>

             <!-- baris penyusun materi -->
             <h3 class="font-weight-bold mb-3">Penyusun Materi</h3>
             <div class="swiper-container">
                <div id="slider-pemateri" class="swiper mb-5">
                   <div class="swiper-wrapper">

                      <!-- pemateri item -->
                      <div class="swiper-slide">
                         <div class="card transform-none">
                            <div class="card-body text-center">
                               <img src="assets/img/square.png" class="img-fluid rounded-circle mb-3" width="130"
                                  alt="">
                               <h5 class="font-weight-bold text-capitalize">pemateri name</h5>
                               <p class="text-muted">
                                  Software Engineer di GovTech Edu, Technical Lead di Nusabot, Former Software
                                  Engineer di Track&amp;ROLL (HR SaaS Brunei), Web Developer di Dinas Komunikasi
                                  Informatika dan Statistik Kota Cirebon untuk Project Smart City. Juga aktif
                                  sebagai
                                  mentor dan membuat
                               </p>
                            </div>
                         </div>
                      </div>
                      <!-- pemateri item -->
                      <div class="swiper-slide">
                         <div class="card transform-none">
                            <div class="card-body text-center">
                               <img src="assets/img/square.png" class="img-fluid rounded-circle mb-3" width="130"
                                  alt="">
                               <h5 class="font-weight-bold text-capitalize">pemateri name</h5>
                               <p class="text-muted">
                                  Software Engineer di GovTech Edu, Technical Lead di Nusabot, Former Software
                                  Engineer di Track&amp;ROLL (HR SaaS Brunei), Web Developer di Dinas Komunikasi
                                  Informatika dan Statistik Kota Cirebon untuk Project Smart City. Juga aktif
                                  sebagai
                                  mentor dan membuat
                               </p>
                            </div>
                         </div>
                      </div>
                      <!-- pemateri item -->
                      <div class="swiper-slide">
                         <div class="card transform-none">
                            <div class="card-body text-center">
                               <img src="assets/img/square.png" class="img-fluid rounded-circle mb-3" width="130"
                                  alt="">
                               <h5 class="font-weight-bold text-capitalize">pemateri name</h5>
                               <p class="text-muted">
                                  Software Engineer di GovTech Edu, Technical Lead di Nusabot, Former Software
                                  Engineer di Track&amp;ROLL (HR SaaS Brunei), Web Developer di Dinas Komunikasi
                                  Informatika dan Statistik Kota Cirebon untuk Project Smart City. Juga aktif
                                  sebagai
                                  mentor dan membuat
                               </p>
                            </div>
                         </div>
                      </div>
                      <!-- pemateri item -->
                      <div class="swiper-slide">
                         <div class="card transform-none">
                            <div class="card-body text-center">
                               <img src="assets/img/square.png" class="img-fluid rounded-circle mb-3" width="130"
                                  alt="">
                               <h5 class="font-weight-bold text-capitalize">pemateri name</h5>
                               <p class="text-muted">
                                  Software Engineer di GovTech Edu, Technical Lead di Nusabot, Former Software
                                  Engineer di Track&amp;ROLL (HR SaaS Brunei), Web Developer di Dinas Komunikasi
                                  Informatika dan Statistik Kota Cirebon untuk Project Smart City. Juga aktif
                                  sebagai
                                  mentor dan membuat
                               </p>
                            </div>
                         </div>
                      </div>

                   </div>

                   <div class="swiper-button-prev"></div>
                   <div class="swiper-button-next"></div>
                </div>
             </div>

             <!-- baris testimoni -->
             <h3 class="font-weight-bold mb-3">Testimoni Siswa</h3>
             <div class="row align-items-center">
                <div class="col-md-auto text-center">
                   <h1 class="display-1 font-weight-bold" style="line-height: 1;">4.7</h1>
                   <p>
                      <i class="bi bi-star-fill text-warning"></i>
                      <i class="bi bi-star-fill text-warning"></i>
                      <i class="bi bi-star-fill text-warning"></i>
                      <i class="bi bi-star-fill text-warning"></i>
                      <i class="bi bi-star-fill text-secondary"></i>
                      <br>
                      (3 x Reviews)
                   </p>
                </div>
                <div class="col-md">
                   <ul class="list-unstyled">
                      <li class="media align-items-center">
                         <span class="font-weight-bold" style="width: 20px;">5</span>
                         <div class="media-body">
                            <div class="progress rounded-pill">
                               <div class="progress-bar" role="progressbar" style="width: 90%;" aria-valuenow="25"
                                  aria-valuemin="0" aria-valuemax="100">90%</div>
                            </div>
                         </div>
                      </li>
                      <li class="media align-items-center">
                         <span class="font-weight-bold" style="width: 20px;">4</span>
                         <div class="media-body">
                            <div class="progress rounded-pill">
                               <div class="progress-bar" role="progressbar" style="width: 72%;" aria-valuenow="25"
                                  aria-valuemin="0" aria-valuemax="100">72%</div>
                            </div>
                         </div>
                      </li>
                      <li class="media align-items-center">
                         <span class="font-weight-bold" style="width: 20px;">3</span>
                         <div class="media-body">
                            <div class="progress rounded-pill">
                               <div class="progress-bar" role="progressbar" style="width: 50%;" aria-valuenow="25"
                                  aria-valuemin="0" aria-valuemax="100">50%</div>
                            </div>
                         </div>
                      </li>
                      <li class="media align-items-center">
                         <span class="font-weight-bold" style="width: 20px;">2</span>
                         <div class="media-body">
                            <div class="progress rounded-pill">
                               <div class="progress-bar" role="progressbar" style="width: 36%;" aria-valuenow="25"
                                  aria-valuemin="0" aria-valuemax="100">36%</div>
                            </div>
                         </div>
                      </li>
                      <li class="media align-items-center">
                         <span class="font-weight-bold" style="width: 20px;">1</span>
                         <div class="media-body">
                            <div class="progress rounded-pill">
                               <div class="progress-bar" role="progressbar" style="width: 7%;" aria-valuenow="25"
                                  aria-valuemin="0" aria-valuemax="100">7%</div>
                            </div>
                         </div>
                      </li>
                   </ul>
                </div>
             </div>
             <hr class="border-secondary mt-0">
             <ul class="list-group list-group-flush">
                <!-- review item -->
                <li class="list-group-item px-0">
                   <div class="media">
                      <img src="assets/img/square.png" class="img-fluid rounded-circle mr-3" width="60" alt="">
                      <div class="media-body">
                         <h5 class="font-weight-bold text-capitalize">pemateri name pradhokot</h5>
                         <div class="d-flex gap-3">
                            <div>21 - 02 - 2023</div>
                            <div class="opacity-50">|</div>
                            <div>10.30 AM</div>
                         </div>
                         <p>
                            <span>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-secondary"></i>
                            </span>
                         </p>
                         <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque natus
                            exercitationem eos atque iusto debitis illum veritatis dignissimos recusandae,
                            molestias autem corrupti commodi ut aut eius, expedita cumque nam magni?
                         </p>
                      </div>
                   </div>
                </li>
                <!-- review item -->
                <li class="list-group-item px-0">
                   <div class="media">
                      <img src="assets/img/square.png" class="img-fluid rounded-circle mr-3" width="60" alt="">
                      <div class="media-body">
                         <h5 class="font-weight-bold text-capitalize">pemateri name pradhokot</h5>
                         <div class="d-flex gap-3">
                            <div>21 - 02 - 2023</div>
                            <div class="opacity-50">|</div>
                            <div>10.30 AM</div>
                         </div>
                         <p>
                            <span>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-secondary"></i>
                            </span>
                         </p>
                         <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque natus
                            exercitationem eos atque iusto debitis illum veritatis dignissimos recusandae,
                            molestias autem corrupti commodi ut aut eius, expedita cumque nam magni?
                         </p>
                      </div>
                   </div>
                </li>
                <!-- review item -->
                <li class="list-group-item px-0">
                   <div class="media">
                      <img src="assets/img/square.png" class="img-fluid rounded-circle mr-3" width="60" alt="">
                      <div class="media-body">
                         <h5 class="font-weight-bold text-capitalize">pemateri name pradhokot</h5>
                         <div class="d-flex gap-3">
                            <div>21 - 02 - 2023</div>
                            <div class="opacity-50">|</div>
                            <div>10.30 AM</div>
                         </div>
                         <p>
                            <span>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-warning"></i>
                               <i class="bi bi-star-fill text-secondary"></i>
                            </span>
                         </p>
                         <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Doloremque natus
                            exercitationem eos atque iusto debitis illum veritatis dignissimos recusandae,
                            molestias autem corrupti commodi ut aut eius, expedita cumque nam magni?
                         </p>
                      </div>
                   </div>
                </li>
             </ul>
          </div>
          <style>
             @media (min-width: 1200px) {
                #detail-body {
                   max-width: 65%;
                }
             }
          </style>

          

          <!-- detail sidebar -->
          <div id="detail-sidebar" class="col-lg-auto ml-lg-auto mb-5">
             <div class="card transform-none border-secondary"
                style="position: -webkit-sticky; position: sticky; top: 100px; z-index: 1020;">
                <img src="assets/img/lanscape.png" class="card-img-top" alt="">
                <div class="card-body p-0">
                   <nav>
                      <div class="nav nav-tabs nav-justified" style="background-color: #e1e2e2;">
                         <button class="nav-link font-weight-bold border-0 active" id="nav-beli" data-toggle="tab"
                            data-target="#tab-beli" style="border-top-left-radius: 0;">BELI</button>
                         <button class="nav-link font-weight-bold border-0" id="nav-sewa" data-toggle="tab"
                            data-target="#tab-sewa" style="border-top-right-radius: 0;">SEWA</button>
                      </div>
                      <div class="tab-content">
                         <div class="tab-pane fade show active" id="tab-beli">
                            <div class="container-fluid py-3">
                               <p class="mb-0"><del>Rp {{$kelas_online->price_buy}},-</del></p>
                               <h3 class="mb-3">
                                  <strong>Rp {{$kelas_online->price_buy}},-</strong> &nbsp; <i style="font-size: 16px;">53% Off</i>
                               </h3>
                               <p class="text-center">
                                  <small class="text-danger" style="font-size: .7em;">
                                     <i class="bi bi-clock-fill"></i> Diskon sampai hari ini
                                  </small>
                                  <br>Beli sekali akses selamanya
                               </p>
                               <a href="checkout.html" target="_blank"
                                  class="btn btn-lg btn-primary btn-block font-weight-bold mb-3">
                                  BELI SEKARANG
                               </a>
                            </div>
                            <div class="bg-light container-fluid py-3">
                               <p class="font-weight-bold mb-2">Yang akan kamu dapatkan :</p>
                               <p class="small">
                                  <i class="mr-2 bi bi-book-fill"></i> 46 modul
                                  <br><i class="mr-2 bi bi-clock-fill"></i> 4 jam durasi
                                  <br><i class="mr-2 bi bi-chat-text-fill"></i> forum diskusi tanya jawab
                                  <br><i class="mr-2 bi bi-file-earmark-fill"></i> klaim sertifikat digital
                               </p>
                            </div>
                         </div>
                         <div class="tab-pane fade" id="tab-sewa">
                            <div class="container-fluid py-3">
                               <p class="mb-0"><del>Rp {{$kelas_online->price_rent}},-</del></p>
                               <h3 class="mb-3">
                                  <strong>Rp {{$kelas_online->price_rent}},-</strong> &nbsp; <i style="font-size: 16px;">53% Off</i>
                               </h3>
                               <p class="text-center">
                                  <small class="text-danger" style="font-size: .7em;">
                                     <i class="bi bi-clock-fill"></i> Diskon sampai hari ini
                                  </small>
                                  <br>Beli sekali akses selamanya
                               </p>
                               <a href="checkout.html"
                                  class="btn btn-lg btn-primary btn-block font-weight-bold mb-3">
                                  SEWA SEKARANG
                               </a>
                            </div>
                            <div class="bg-light container-fluid py-3">
                               <p class="font-weight-bold mb-2">Yang akan kamu dapatkan :</p>
                               <p class="small">
                                  <i class="mr-2 bi bi-book-fill"></i> 46 modul
                                  <br><i class="mr-2 bi bi-clock-fill"></i> 4 jam durasi
                                  <br><i class="mr-2 bi bi-chat-text-fill"></i> forum diskusi tanya jawab
                                  <br><i class="mr-2 bi bi-file-earmark-fill"></i> klaim sertifikat digital
                               </p>
                            </div>
                         </div>
                      </div>
                   </nav>
                </div>
             </div>
          </div>
          <style>
             @media (min-width: 992px) {
                #detail-sidebar {
                   max-width: 360px;
                   flex: 0 0 360px;
                }
             }

             @media (min-width: 1400px) {
                #detail-sidebar {
                   max-width: 380px;
                   flex: 0 0 380px;
                }
             }

             #detail-sidebar .nav-tabs button {
                font-size: 18px;
                color: #565656;
                border-top: solid 6px transparent !important;
             }

             #detail-sidebar .nav-tabs button.active {
                color: #007bff;
                border-top: solid 6px #007bff !important;
             }

             #detail-sidebar .nav-tabs button,
             #detail-sidebar .tab-content .tab-pane {
                background-color: transparent;
             }

             #detail-sidebar .nav-tabs button.active,
             #detail-sidebar .tab-content .tab-pane.active {
                background-color: white;
             }
          </style>

       </div>
    </div>
 </section>

 <section>
    <div class="container">
       <header class="d-md-flex align-items-center mb-4">
          <h3 class="font-weight-bold mr-md-auto mb-md-0">Kelas Populer Lainnya</h3>
          <a href="kelas.html" class="text-primary"><u>Lihat Semua <i class="bi bi-chevron-right"></i></u></a>
       </header>
       <div id="sliderProductFlashSale" class="carousel slide carousel-product" data-ride="carousel"
          data-interval="3000" data-pause="false">

          <div class="w-100 overflow-hidden">
             <div
                class="carousel-inner row flex-nowrap daftar-produk row-cols-1 row-cols-sm-2 row-cols-lg-3 row-cols-xl-4 g-3"
                style="width: calc(100% + 15px);" role="listbox">
                <!-- produk item -->
                <div class="carousel-item produk-item active">
                   <a href="detail.html" class="text-inherit text-decoration-none">
                      <script src="card3.js"></script>
                   </a>
                </div>
                <!-- produk item -->
                <div class="carousel-item produk-item">
                   <a href="detail.html" class="text-inherit text-decoration-none">
                      <script src="card3.js"></script>
                   </a>
                </div>
                <!-- produk item -->
                <div class="carousel-item produk-item">
                   <a href="detail.html" class="text-inherit text-decoration-none">
                      <script src="card3.js"></script>
                   </a>
                </div>
                <!-- produk item -->
                <div class="carousel-item produk-item">
                   <a href="detail.html" class="text-inherit text-decoration-none">
                      <script src="card3.js"></script>
                   </a>
                </div>
             </div>
          </div>

          <a class="carousel-control carousel-control-prev w-auto" href="#sliderProductFlashSale" role="button"
             data-slide="prev" style="transform: translateX(-50%);">
             <i class="bi bi-chevron-left"></i>
             <span class="sr-only">Previous</span>
          </a>

          <a class="carousel-control carousel-control-next w-auto" href="#sliderProductFlashSale" role="button"
             data-slide="next" style="transform: translateX(50%);">
             <i class="bi bi-chevron-right"></i>
             <span class="sr-only">Next</span>
          </a>

       </div>
    </div>
 </section>

@endsection

@section('script')
@endsection
