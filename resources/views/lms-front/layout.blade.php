{{-- <!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	@if (!empty($title))
	<title>BrainwareHub &bull; {{ $title }}</title>	
	@else
	<title>BrainwareHub</title>	
	@endif
	

	<link rel="icon" href="../ui/img/logo.ico">
	<link rel="stylesheet" href="../ui/dist52/css/bootstrap.min.css">
	<link rel="stylesheet" href="../ui/bootstrap-icons-1.9.1/bootstrap-icons.css">
	<link rel="stylesheet" href="../ui/swiper/swiper-bundle.min.css" />
	<link rel="stylesheet" href="../assets/libs/select2/select2.min.css">
	<link rel="stylesheet" href="../ui/fonts/font-awesome.min.css">
	<link rel="stylesheet" href="../ui/fonts/line-awesome.min.css">
	<link rel="stylesheet" href="../ui/icomoon/style.css">
	<link rel="stylesheet" href="../ui/css/global.css">
	<link rel="stylesheet" href="../ui/css/navtop.css">
	<link rel="stylesheet" href="../ui/css/navdown.css">
	<link rel="stylesheet" href="../ui/css/footer.css">
	@if (!empty($pages))
	<link rel="stylesheet" href="../ui/css/{{ $pages }}.css">
	@endif
	
</head>
<body>

	@yield('notifikasi')
	@include('front/navtop')
	@include('front/navdown')
	<main class="wrapper">
		@yield('konten')
	</main>


	<div class="collapse backdrop-spinner" id="loading">
		<div class="position-fixed start-0 top-0 end-0 bottom-0 w-100 h-100 d-flex justify-content-center align-items-center flex-column text-light fs-4" style="background-color: rgba(0,0,0,.5); z-index: 3000;">
			<div class="spinner-border" role="status"></div>
			<span class="p-3">Loading...</span>
			
		</div>
	</div>

	
	@include('front/footer')
	@yield('popup')

	
<script async src={{url("template/https://www.googletagmanager.com/gtag/js?id=G-HQB3WHD8HW"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-HQB3WHD8HW');
</script>

	<script type="text/javascript" src={{url("template/../ui/js/jquery-3.6.0.min.js"></script>
	{{-- <script type="text/javascript" src={{url("template/../ui/js/popper.min.js"></script> --}}
{{-- <script type="text/javascript" src={{url("template/../ui/dist52/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src={{url("template/../ui/swiper/swiper-bundle.min.js"></script>
	<script type="text/javascript" src={{url("template/../ui/select2/select2.min.js"></script>
	<script type="text/javascript" src={{url("template/../ui/js/global.js"></script>
	<script>
		// fungsi tooltip
		const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
		const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl));

		$('#triggerSpinner').click(function() {
			if ($('.backdrop-spinner').hasClass('show')) {
				$('html').addClass('no-scroll');
			} else {
				$('html').removeClass('no-scroll');
			}
		});

		// garis bantu
		[].forEach.call(document.querySelectorAll("*"), function(a) {
			// a.style.outline = "1px solid green";
		});
	</script>
	@if (!empty($pages))
	<script type="text/javascript" src={{url("template/../ui/js/{{ $pages }}.js"></script>
	@endif
	
	

	<script type="text/javascript">
		[].forEach.call(document.querySelectorAll("*"), function(a) {
			// a.style.outline = "1px solid green";
		});
	</script>

	<div class="collapse backdrop-spinner" id="loading-screen">
		<div class="position-fixed start-0 top-0 end-0 bottom-0 w-100 h-100 d-flex justify-content-center align-items-center" style="background-color: rgba(0,0,0,.5); z-index: 3000;">
			<div class="spinner-border text-light" role="status">
				<span class="visually-hidden">Loading...</span>
			</div>
		</div>
	</div>
</body>
</html> --}}



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
