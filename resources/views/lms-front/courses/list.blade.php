@extends('lms-front/courses/layout')

@section('notifikasi')
@endsection

@section('konten')
    <section class="pt-4 pt-lg-5">
        <header class="mb-4 mb-lg-5">
            <div class="container">
                <h3 class="font-weight-bold mb-0">Siap Untuk Menjadi Programmer Professional?</h3>
                <p>Pilih dan Jadilah Professional!</p>
            </div>
        </header>

        <div class="container">
            <div class="row">
                <!-- sidebar filter kelas -->
                <div class="d-none d-lg-block col-auto pr-5">
                    <h5 class="font-weight-bold mb-3">Filter Kelas</h5>
                    <ul class="list-unstyled filter-kelas text-capitalize">
                        <li class="media">
                            <img src={{ url('template/assets/img/square_brainwarehub.png') }} class="img-fluid"
                                alt="">
                            <div class="media-body"><a onclick="searchcourses('technology_id','all')">Semua Kelas</a></div>
                        </li>
                        @foreach ($coursestechnology as $technology)
                            <li class="media">

                                <img src={{ url('template/assets/img/' . $technology->image) }} class="img-fluid"
                                    alt="">
                                <div class="media-body"> <a
                                        onclick="searchcourses('technology_id',{{ $technology->id }})">{{ $technology->name }}</a>
                                </div>
                            </li>
                        @endforeach

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

                                        {{-- <select name="" id="" onchange="searchcourses()">
                                            <option>Semua Level</option>
                                            <option>Pemula</option>
                                            <option>Menengah</option>
                                            <option>Mahir</option>
                                        </select> --}}
                                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                            data-toggle="dropdown">
                                            level
                                        </button>
                                        <div class="dropdown-menu">
                                            <button class="dropdown-item" onclick="searchcourses('level','all')">Semua
                                                Level</button>
                                            <button class="dropdown-item"
                                                onclick="searchcourses('level','beginner')">Pemula</button>
                                            <button class="dropdown-item"
                                                onclick="searchcourses('level','middle')">Menengah</button>
                                            <button class="dropdown-item"
                                                onclick="searchcourses('level','advanced')">Mahir</button>
                                        </div>
                                    </div>
                                    <div class="dropdown d-none">
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
                                    <div class="dropdown d-none">
                                        <button class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                            data-toggle="dropdown">
                                            tampilkan
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <button class="dropdown-item">Semua Kelas</button>
                                            <button class="dropdown-item">Kelas Gratis</button>
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
                        <div class="row row-cols-1 row-cols-sm-2 row-cols-xl-3 g-3" id="courseslist">
                            {{-- @foreach ($kelasonline as $courses)
                                <div class="col">
                                    <a href="{{ url('courses/' . $courses->id) }}" class="d-inline">
                                        <!-- produk item -->
                                        <div class="swiper-slide">
                                            <a href="{{ url('courses/' . $courses->id) }}"
                                                class="text-decoration-none text-inherit">
                                                <div class="card shadow-sm">
                                                    <img src={{ url('template/assets/img/' . $courses->image_landscape) }}
                                                        class="card-img-top rounded" alt="">
                                                    <div class="card-body text-capitalize">
                                                        <p class="card-text small mb-1">by {{ $courses->author }}</p>
                                                        <h6 class="card-title font-weight-bold">
                                                            {{ $courses->title }}
                                                        </h6>
                                                        <div class="row g-3 small my-3">
                                                            <div class="col-6 mt-1"><i
                                                                    class="bi bi-bar-chart-fill mr-2"></i>
                                                                {{ $courses->level }}</div>
                                                            <div class="col-6 mt-1 d-none"><i
                                                                    class="bi bi-alarm-fill mr-2"></i> 12
                                                                jam
                                                            </div>
                                                            <div class="col-6 mt-1 d-none"><i
                                                                    class="bi bi-people-fill mr-2"></i> 80
                                                                siswa</div>
                                                            <div class="col-6 mt-1 d-none"><i
                                                                    class="bi bi-book-fill mr-2"></i> 62
                                                                modul
                                                            </div>
                                                        </div>
                                                        <p class="card-text d-none">
                                                            <i class="bi bi-star-fill mr-2 text-warning"></i> 5.0
                                                            &nbsp;&nbsp;
                                                            (100)
                                                            Penilaian
                                                        </p>
                                                    </div>
                                                    <div class="card-footer small font-weight-bold">
                                                        @if ($courses->price_buy != 0)
                                                            <div class="row justify-content-between">
                                                                <div class="col-auto">Beli</div>
                                                                <div class="col text-right">
                                                                    <del class="text-danger mr-2">Rp 380.000,-</del>
                                                                    <span>Rp 129.000</span>
                                                                </div>
                                                            </div>
                                                        @endif

                                                        @if ($courses->price_rent != 0)
                                                            <div class="row justify-content-between">
                                                                <div class="col-auto">Sewa</div>
                                                                <div class="col text-right">
                                                                    <del class="text-danger mr-2">Rp 380.000,-</del>
                                                                    <span>Rp 129.000</span>
                                                                </div>
                                                            </div>
                                                        @endif

                                                        @if ($courses->price_buy == 0 && $courses->price_rent == 0)
                                                            <div class="row justify-content-between">
                                                                <div class="col-auto text-success">Free</div>

                                                            </div>
                                                        @endif

                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                    </a>
                                </div>
                            @endforeach --}}


                        </div>
                    </div>

                    <nav aria-label="...">
                        <ul class="pagination justify-content-center d-none">
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
@php
    if (isset($_GET['technology'])) {
        $technology = $_GET['technology'];
    } else {
        $technology = 0;
    }

    if (isset($_GET['level'])) {
        $level = $_GET['level'];
    } else {
        $level = 'all';
    }
@endphp
<script src="{{ URL::asset('/ui/js/jquery-3.6.0.min.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    let courses = @json($kelasonline);
    let technology = @json($technology);
    let level = @json($level);
    console.log("tech");
    console.log(technology);
    console.log(typeof(technology));
    console.log(typeof(technology));

    $(document).ready(function() {
        if ((technology === 0)&&(level === 'all')) {
            console.log(technology);
            console.log(level);
            
            showcourses()
        } else if(technology != 0){
            console.log("search by technology")
            searchcourses('technology_id', parseInt(technology))
        }else if(level != 'all'){
            console.log("search by level")
            searchcourses('level', level)
        }

        // if (level === 'all') {
        //     showcourses()
        // } else {
        //     searchcourses('level', level)
        // }

    });

    function showcourses() {
        var strcourses = "";
        for (let index = 0; index < courses.length; index++) {
            console.log(courses[index].image_landscape);
            strcourses += "<div class='col'>";
            strcourses += "    <a href={{ url('coursesss/') }}";
            strcourses += "/" + courses[index].id + " ";
            strcourses += "class='d-inline'>";
            strcourses += "        <div class='swiper-slide'>";
            strcourses += "            <a href={{ url('courses/') }}";
            strcourses += "/" + courses[index].id + " ";
            strcourses += "                class='text-decoration-none text-inherit'>";
            strcourses += "                <div class='card shadow-sm'>";
            strcourses += "                    <img src={{ url('template/assets/img/') }}";
            strcourses += "/" + courses[index].image_landscape;
            strcourses += "                        class='card-img-top rounded' alt=''>";
            strcourses += "                    <div class='card-body text-capitalize'>";
            strcourses += "                        <p class='card-text small mb-1'>by " + courses[index].author +
                "</p>";
            strcourses += "                        <h6 class='card-title font-weight-bold'>";
            strcourses += courses[index].title;
            strcourses += "                        </h6>";
            strcourses += "                        <div class='row g-3 small my-3'>";
            strcourses += "                            <div class='col-6 mt-1'><i";
            strcourses += "                                    class='bi bi-bar-chart-fill mr-2'></i>";
            strcourses += "                                " + courses[index].level + "</div>";
            strcourses += "                            <div class='col-6 mt-1 d-none'><i";
            strcourses += "                                    class='bi bi-alarm-fill mr-2'></i> 12";
            strcourses += "                                jam";
            strcourses += "                            </div>";
            strcourses += "                            <div class='col-6 mt-1 d-none'><i";
            strcourses += "                                    class='bi bi-people-fill mr-2'></i> 80";
            strcourses += "                                siswa</div>";
            strcourses += "                            <div class='col-6 mt-1 d-none'><i";
            strcourses += "                                    class='bi bi-book-fill mr-2'></i> 62";
            strcourses += "                                modul";
            strcourses += "                            </div>";
            strcourses += "                        </div>";
            strcourses += "                        <p class='card-text d-none'>";
            strcourses += "                            <i class='bi bi-star-fill mr-2 text-warning'></i> 5.0";
            strcourses += "                            &nbsp;&nbsp;";
            strcourses += "                            (100)";
            strcourses += "                            Penilaian";
            strcourses += "                        </p>";
            strcourses += "                    </div>";
            strcourses += "                    <div class='card-footer small font-weight-bold'>";
            if (courses[index].price_buy != 0) {
                strcourses += "                            <div class='row justify-content-between'>";
                strcourses += "                                <div class='col-auto'>Beli</div>";
                strcourses += "                                <div class='col text-right'>";
                strcourses += "                                    <del class='text-danger mr-2'>Rp 380.000,-</del>";
                strcourses += "                                    <span>Rp 129.000</span>";
                strcourses += "                                </div>";
                strcourses += "                            </div>";
            }
            if (courses[index].price_rent != 0) {
                strcourses += "                            <div class='row justify-content-between'>";
                strcourses += "                                <div class='col-auto'>Sewa</div>";
                strcourses += "                                <div class='col text-right'>";
                strcourses += "                                    <del class='text-danger mr-2'>Rp 380.000,-</del>";
                strcourses += "                                    <span>Rp 129.000</span>";
                strcourses += "                                </div>";
                strcourses += "                            </div>";
            }
            if ((courses[index].price_buy == 0 && courses[index].price_rent == 0)) {
                strcourses += "                            <div class='row justify-content-between'>";
                strcourses += "                                <div class='col-auto text-success'>Free</div>";
                strcourses += "";
                strcourses += "                            </div>";
            }
            strcourses += "                    </div>";
            strcourses += "                </div>";
            strcourses += "            </a>";
            strcourses += "        </div>";
            strcourses += "    </a>";
            strcourses += "</div>";

        }
        document.getElementById("courseslist").innerHTML = strcourses;
    }

    function search(varparams, varsearch) {
        var objfilter = [];
        console.log(courses)
        for (let index = 0; index < courses.length; index++) {

            if (varparams === 'technology_id') {
                if (varsearch == 'all') {
                    objfilter.push(courses[index]);
                } else {
                    console.log("bukan all")
                    console.log(typeof(varsearch))
                    console.log(courses[index].technology_id)
                    if (courses[index].technology_id == varsearch) {
                        console.log("apakah sama dengan ")
                        objfilter.push(courses[index]);
                    }
                }

            } else if (varparams === 'level') {
                if (varsearch == 'all') {
                    objfilter.push(courses[index]);
                } else {
                    if (courses[index].level === varsearch) {
                        objfilter.push(courses[index]);
                    }
                }

            }

        }

        return objfilter;
    }

    function searchcourses(varparams, varsearch) {
        console.log(varsearch);
        const found = search(varparams, varsearch);
        var strcourses = "";
        for (let index = 0; index < found.length; index++) {
            strcourses += "<div class='col'>";
            strcourses += "    <a href={{ url('coursesss/') }}";
            strcourses += "/" + found[index].id + " ";
            strcourses += "class='d-inline'>";
            strcourses += "        <div class='swiper-slide'>";
            strcourses += "            <a href={{ url('courses/') }}";
            strcourses += "/" + found[index].id + " ";
            strcourses += "                class='text-decoration-none text-inherit'>";
            strcourses += "                <div class='card shadow-sm'>";
            strcourses += "                    <img src={{ url('template/assets/img/') }}";
            strcourses += "/" + found[index].image_landscape;
            strcourses += "                        class='card-img-top rounded' alt=''>";
            strcourses += "                    <div class='card-body text-capitalize'>";
            strcourses += "                        <p class='card-text small mb-1'>by " + found[index].author + "</p>";
            strcourses += "                        <h6 class='card-title font-weight-bold'>";
            strcourses += found[index].title;
            strcourses += "                        </h6>";
            strcourses += "                        <div class='row g-3 small my-3'>";
            strcourses += "                            <div class='col-6 mt-1'><i";
            strcourses += "                                    class='bi bi-bar-chart-fill mr-2'></i>";
            strcourses += "                                " + found[index].level + "</div>";
            strcourses += "                            <div class='col-6 mt-1 d-none'><i";
            strcourses += "                                    class='bi bi-alarm-fill mr-2'></i> 12";
            strcourses += "                                jam";
            strcourses += "                            </div>";
            strcourses += "                            <div class='col-6 mt-1 d-none'><i";
            strcourses += "                                    class='bi bi-people-fill mr-2'></i> 80";
            strcourses += "                                siswa</div>";
            strcourses += "                            <div class='col-6 mt-1 d-none'><i";
            strcourses += "                                    class='bi bi-book-fill mr-2'></i> 62";
            strcourses += "                                modul";
            strcourses += "                            </div>";
            strcourses += "                        </div>";
            strcourses += "                        <p class='card-text d-none'>";
            strcourses += "                            <i class='bi bi-star-fill mr-2 text-warning'></i> 5.0";
            strcourses += "                            &nbsp;&nbsp;";
            strcourses += "                            (100)";
            strcourses += "                            Penilaian";
            strcourses += "                        </p>";
            strcourses += "                    </div>";
            strcourses += "                    <div class='card-footer small font-weight-bold'>";
            if (courses[index].price_buy != 0) {
                strcourses += "                            <div class='row justify-content-between'>";
                strcourses += "                                <div class='col-auto'>Beli</div>";
                strcourses += "                                <div class='col text-right'>";
                strcourses += "                                    <del class='text-danger mr-2'>Rp 380.000,-</del>";
                strcourses += "                                    <span>Rp 129.000</span>";
                strcourses += "                                </div>";
                strcourses += "                            </div>";
            }
            if (found[index].price_rent != 0) {
                strcourses += "                            <div class='row justify-content-between'>";
                strcourses += "                                <div class='col-auto'>Sewa</div>";
                strcourses += "                                <div class='col text-right'>";
                strcourses += "                                    <del class='text-danger mr-2'>Rp 380.000,-</del>";
                strcourses += "                                    <span>Rp 129.000</span>";
                strcourses += "                                </div>";
                strcourses += "                            </div>";
            }
            if ((found[index].price_buy == 0 && found[index].price_rent == 0)) {
                strcourses += "                            <div class='row justify-content-between'>";
                strcourses += "                                <div class='col-auto text-success'>Free</div>";
                strcourses += "";
                strcourses += "                            </div>";
            }
            strcourses += "                    </div>";
            strcourses += "                </div>";
            strcourses += "            </a>";
            strcourses += "        </div>";
            strcourses += "    </a>";
            strcourses += "</div>";

        }
        document.getElementById("courseslist").innerHTML = strcourses;
    }
</script>
