
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- head component -->
    {{-- <script src={{ url('template/head.js') }}></script> --}}
    <title>BrainwareHub &bull; Home</title>
    <style>
        /* garis bantu */
        * {
            /* outline: solid 1px green; */
        }
    </style>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href={{ url('template/assets/img/ikon-logo.ico') }}>
    <link rel="stylesheet" href={{ url('template/assets/bootstrap-4.6.2-dist/css/bootstrap.min.css') }}>
    <link rel="stylesheet" href={{ url('template/assets/bootstrap-icons-1.9.1/bootstrap-icons.css') }}>
    <link rel="stylesheet" href={{ url('template/assets/swiper/swiper-bundle.min.css') }}>
    <link rel="stylesheet" href={{ url('template/assets/css/styles.css') }}>
</head>

<body>

    <!-- header topbar -->
    @include('lms-front/navtop')

    <main class="wrapper pt-5">
		@yield('konten')
	</main>
  
    <!-- footer copyright -->
    @include('lms-front/footer')
    <!-- modal login -->
    @include('lms-front/login')
    <!-- modal register -->
    @include('lms-front/register')
    <!-- footer component -->
    <script src={{ url('template/assets/jquery-3.6.1/jquery-3.6.1.min.js') }}></script>
    <script src={{ url('template/assets/bootstrap-4.6.2-dist/js/bootstrap.bundle.min.js') }}></script>
    <script src={{ url('template/assets/swiper/swiper-bundle.min.js') }}></script>
    <script src={{ url('template/assets/js/slider.js') }}></script>
    <script src={{ url('template/assets/js/script.js') }}></script>

</body>

</html>
