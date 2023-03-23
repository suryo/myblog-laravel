@extends('lms-front/layout')

@section('notifikasi')
@endsection

<!-- banner -->
{{-- @include('lms-front/banner') --}}

@section('konten')
    <section>
        @include('lms-front/banner')
        <div class="container">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <div class="row align-items-center">
                        <div class="col-xl-auto mb-3 mb-xl-0">
                            <div class="row align-items-center">
                                <div class="col-lg-auto mb-3 mb-lg-0 pr-lg-0">
                                    <img src={{ url('template/assets/img/ikon-logo.svg') }} width="50" height="50"
                                        alt="">
                                </div>
                                <div class="col-lg-auto">
                                    <h4 class="font-weight-bold mb-0">Siap untuk menjadi Programmer professional?
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-xl-auto d-md-flex gap-md-3 ml-xl-auto">
                            <a href="#" class="btn btn-success w-100 text-nowrap mb-2 mb-md-0">Mulai Belajar
                                Gratis</a>
                            <a href="#" class="btn btn-outline-success w-100 text-nowrap">
                                <i class="bi bi-whatsapp mr-2"></i> Tanya Dulu
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <header class="d-md-flex align-items-center">
                <h3 class="font-weight-bold mr-md-auto mb-md-0">Beragam Roadmap Belajar</h3>
                <a href="kelas.html" class="text-primary"><u>Lihat Semua <i class="bi bi-chevron-right"></i></u></a>
            </header>

            <div class="swiper-container">
                <div id="sliderProductRodmap" class="swiper slider-produk">
                    <div class="swiper-wrapper">

                        @foreach ($roadmap as $roadmap)
                            <div class="swiper-slide">
                                <div class="card shadow-sm">
                                    <img src={{ url('template/assets/img/' . $roadmap->image) }} class="card-img-top rounded"
                                        alt="">
                                    <div class="card-img-overlay text-capitalize text-light top-unset">
                                        <h4 class="card-title font-weight-bold">{{ $roadmap->title }}</h4>
                                        <p class="card-text">
                                            {{ $roadmap->short_desc }}
                                        </p>
                                        <a href="{{ url('roadmap/' . $roadmap->id) }}" class="btn btn-primary">{{ $roadmap->level}}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach



                    </div>

                    <div class="swiper-button-prev shadow-sm"></div>
                    <div class="swiper-button-next shadow-sm"></div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <header class="d-md-flex align-items-center">
                <h3 class="font-weight-bold mr-md-auto mb-md-0">Eksplorasi Materi</h3>
                <a href="kelas.html" class="text-primary"><u>Lihat Semua <i class="bi bi-chevron-right"></i></u></a>
            </header>

            <div class="swiper-container">
                <div id="sliderProductMateri" class="swiper slider-produk">
                    <div class="swiper-wrapper">

                        @foreach ($coursestechnology as $item)
                              <!-- produk item -->
                        <div class="swiper-slide">
                            <a href="{{ url('courses'."?technology=".$item->id) }}" class="text-decoration-none text-inherit">
                                <div class="card shadow-sm">
                                    <div class="card-body" style="padding: 15px;">
                                        <div class="row align-items-center g-3">
                                            <div class="col-4">
                                                <img src={{ url('template/assets/img/'.$item->image) }}
                                                    class="img-fluid rounded" alt="">
                                            </div>
                                            <div class="col-8 text-capitalize">
                                                <p class="card-title mb-2">{{$item->name}}</p>
                                                <p class="card-text small"><i class="bi bi-journal-album mr-2"></i> {{$item->jumlah}} kelas
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        @endforeach

                      

                    </div>

                    <div class="swiper-button-prev shadow-sm"></div>
                    <div class="swiper-button-next shadow-sm"></div>
                </div>
            </div>
    </section>

    <section>
        <div class="container">
            <header class="d-md-flex align-items-center">
                <h3 class="font-weight-bold mr-md-auto mb-md-0">Flash Sale</h3>
                <a href="kelas.html" class="text-primary"><u>Lihat Semua <i class="bi bi-chevron-right"></i></u></a>
            </header>

            <div class="swiper-container">
                <div id="sliderProductFlashSale" class="swiper slider-produk">
                    <div class="swiper-wrapper">
                        @foreach ($courses as $courses)
                            <!-- produk item -->
                            <div class="swiper-slide">
                                <a href={{ url('courses/' . $courses->id) }} class="text-decoration-none text-inherit">
                                    <div class="card shadow-sm">
                                        <img src={{ url('template/assets/img/'.$courses->image_landscape) }}
                                            class="card-img-top rounded" alt="">
                                        <div class="card-body text-capitalize">
                                            <p class="card-text small mb-1">by {{ $courses->author }}</p>
                                            <h6 class="card-title font-weight-bold">
                                                {{ $courses->title }}
                                            </h6>
                                            <div class="row g-3 small my-3">
                                                <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                    {{ $courses->level }}</div>
                                                <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12 jam
                                                </div>
                                                <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                    siswa</div>
                                                <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62 modul
                                                </div>
                                            </div>
                                            <p class="card-text">
                                                <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                (100)
                                                Penilaian
                                            </p>
                                        </div>
                                        <div class="card-footer small font-weight-bold">
                                            <div class="row justify-content-between">
                                                <div class="col-auto">Beli</div>
                                                <div class="col text-right">
                                                    <del class="text-danger mr-2">Rp {{ $courses->price_buy }},-</del>
                                                    <span>Rp {{ $courses->price_buy }}</span>
                                                </div>
                                            </div>
                                            <div class="row justify-content-between">
                                                <div class="col-auto">Sewa</div>
                                                <div class="col text-right">
                                                    <del class="text-danger mr-2">Rp {{ $courses->price_rent }},-</del>
                                                    <span>Rp {{ $courses->price_rent }}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach


                    </div>

                    <div class="swiper-button-prev shadow-sm"></div>
                    <div class="swiper-button-next shadow-sm"></div>
                </div>
            </div>
        </div>
    </section>

    {{-- <section class="text-center">
    <div class="container">
        <header class="mb-5">
            <h3 class="mb-0">Telah Dipercaya Oleh</h3>
        </header>
        <div
            class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-5 row-cols-xl-6 justify-content-center">
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
            <div class="col mb-4"><img src={{ url('template/assets/img/lanscape.png') }}
                    class="img-fluid rounded" alt=""></div>
        </div>
</section> --}}

    {{-- <section class="text-center">
    <div class="container">
        <header class="mb-5">
            <h3 class="mb-0">Mitra Kampus Kami</h3>
        </header>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xl-7">
                <div class="row row-cols-2 row-cols-sm-3 row-cols-lg-4 row-cols-xl-5 justify-content-center">
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                    <div class="col mb-4"><img src={{ url('template/assets/img/square.png') }}
                            class="img-fluid rounded" alt=""></div>
                </div>
            </div>
</section> --}}
@endsection

@section('script')
@endsection
