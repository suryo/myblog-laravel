@extends('lms-front/courses/layout')

@section('notifikasi')
@endsection

@section('konten')
    <section class="pt-4 pt-lg-5">
        <header class="mb-4 mb-lg-5">
            <div class="container">
                <h3 class="font-weight-bold mb-0">Siap untuk menjadi Programmer professional?</h3>
                <p>Pilih dan jadilah professional!</p>
            </div>
        </header>

        <div class="container">
            <div class="row">
                <!-- sidebar filter kelas -->
                <div class="d-none d-lg-block col-auto pr-5">
                    <h5 class="font-weight-bold mb-3">Filter Kelas</h5>
                    <ul class="list-unstyled filter-kelas text-capitalize">
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">semua kelas</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">CSS</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">web</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">android</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">bootstrap</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">code igniter</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">tailwind</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">laravel</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">jquery</div>
                        </li>
                        <li class="media">
                            <img src={{ url('template/assets/img/square.png') }} class="img-fluid" alt="">
                            <div class="media-body">PHP</div>
                        </li>
                    </ul>
                </div>
                <style>
                    .filter-kelas li.media {
                        align-items: center;
                        cursor: pointer;
                        margin-bottom: .25rem;
                    }

                    .filter-kelas li:last-child.media {
                        margin-bottom: 0;
                    }

                    .filter-kelas li.media img {
                        width: 30px;
                        margin-right: .5rem;
                    }
                </style>

                <!-- daftar kelas -->
                <div class="col-lg daftar-kelas">
                    <header class="mb-3 mb-md-0">
                        <div class="row align-items-md-center justify-content-md-between">
                            <div class="col-md-auto mb-2 mb-md-0">
                                <div class="d-flex flex-wrap gap-1">
                                    <div class="dropdown d-lg-none">
                                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                            data-toggle="dropdown">
                                            filter
                                        </button>
                                        <div class="dropdown-menu">
                                            <button class="dropdown-item">semua kelas</button>
                                            <button class="dropdown-item">CSS</button>
                                            <button class="dropdown-item">web</button>
                                            <button class="dropdown-item">android</button>
                                            <button class="dropdown-item">bootstrap</button>
                                            <button class="dropdown-item">code igniter</button>
                                            <button class="dropdown-item">tailwind</button>
                                            <button class="dropdown-item">laravel</button>
                                            <button class="dropdown-item">jquery</button>
                                            <button class="dropdown-item">PHP</button>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                            data-toggle="dropdown">
                                            level
                                        </button>
                                        <div class="dropdown-menu">
                                            <button class="dropdown-item">semua level</button>
                                            <button class="dropdown-item">pemula</button>
                                            <button class="dropdown-item">menengah</button>
                                            <button class="dropdown-item">mahir</button>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                            data-toggle="dropdown">
                                            urutkan
                                        </button>
                                        <div class="dropdown-menu">
                                            <button class="dropdown-item">kelas terbaru</button>
                                            <button class="dropdown-item">kelas terpopuler</button>
                                            <button class="dropdown-item">harga tertinggi</button>
                                            <button class="dropdown-item">harga terendah</button>
                                        </div>
                                    </div>
                                    <div class="dropdown">
                                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                            data-toggle="dropdown">
                                            tampilkan
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <button class="dropdown-item">semua kelas</button>
                                            <button class="dropdown-item">gelas gratis</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-auto">
                                <div class="input-group border rounded overflow-hidden bg-white">
                                    <input type="text" class="form-control border-0" placeholder="Cari Kelas...">
                                    <div class="input-group-append">
                                        <button class="btn border-0"><i class="bi bi-search"></i></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>
                    <style>
                        .daftar-kelas header .dropdown button {
                            text-transform: capitalize;
                        }
                    </style>

                    <div class="daftar-kelas mb-5">
                        <div class="row row-cols-1 row-cols-sm-2 row-cols-xl-3 g-3">
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                            <div class="col">
                                <a href="detail.html" class="d-inline">
                                    <!-- produk item -->
                                    <div class="swiper-slide">
                                        <a href="detail.html" class="text-decoration-none text-inherit">
                                            <div class="card shadow-sm">
                                                <img src={{ url('template/assets/img/lanscape.png') }}
                                                    class="card-img-top rounded" alt="">
                                                <div class="card-body text-capitalize">
                                                    <p class="card-text small mb-1">by suryo atmojo MIT</p>
                                                    <h6 class="card-title font-weight-bold">
                                                        membuat website company profile dari nol sampai mahir
                                                    </h6>
                                                    <div class="row g-3 small my-3">
                                                        <div class="col-6 mt-1"><i class="bi bi-bar-chart-fill mr-2"></i>
                                                            beginner</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-alarm-fill mr-2"></i> 12
                                                            jam
                                                        </div>
                                                        <div class="col-6 mt-1"><i class="bi bi-people-fill mr-2"></i> 80
                                                            siswa</div>
                                                        <div class="col-6 mt-1"><i class="bi bi-book-fill mr-2"></i> 62
                                                            modul
                                                        </div>
                                                    </div>
                                                    <p class="card-text">
                                                        <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0 &nbsp;&nbsp;
                                                        (100) Penilaian
                                                    </p>
                                                </div>
                                                <div class="card-footer small font-weight-bold">
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Beli</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                    <div class="row justify-content-between">
                                                        <div class="col-auto">Sewa</div>
                                                        <div class="col text-right">
                                                            <del class="text-danger mr-2">Rp 380.000,-</del>
                                                            <span>Rp 129.000</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>

                    <nav aria-label="...">
                        <ul class="pagination justify-content-center">
                            <li class="page-item disabled">
                                <a class="page-link">
                                    <span class="d-none d-md-inline">Previous</span>
                                    <span class="d-md-none"><i class="bi bi-chevron-double-left"></i></span>
                                </a>
                            </li>
                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">
                                    <span class="d-md-none"><i class="bi bi-chevron-double-right"></i></span> <span
                                        class="d-none d-md-inline">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('script')
@endsection
