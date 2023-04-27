@extends('front/layout')

@section('notifikasi')
{{-- <section id="notifikasiSubscribe" class="collapse sticky-top show">
	<div class="container-fluid py-3 px-4 text-center" style="background-color: #404041;">
		<a data-bs-toggle="modal" href="#formSubscribe" role="button" class="text-light">
			Hello. Get 10% OFF* | your first order when you subscribe to our newsletter! | Claim My 10% OFF <i class="bi bi-chevron-right"></i>
		</a>
	</div>
</section> --}}
@endsection

@section('konten')
 <!-- Header -->
 <header class="ex-header">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h1>Visi & Misi</h1>
			</div> <!-- end of col -->
		</div> <!-- end of row -->
	</div> <!-- end of container -->
</header> <!-- end of ex-header -->
<!-- end of header -->
  <!-- Basic -->
  <div class="ex-basic-1 pt-5 pb-5">
	<div class="container">
		<div class="row">
			<div class="col-xl-10 offset-xl-1">
				<h2 class="mt-5 mb-3">Visi</h2>
				<div class="text-box mb-5">
					<h3>Among the features you will find details lightbox</h3>
					<p>l two bed way pleasure confined followed. Shew up ye away no eyes life or were this. Perfectly did suspicion daughters but his intention. Started on society an brought it explain. Position two saw greatest stronger old. Pianoforte if at simplicity do estim elicity supplied mr. September suspicion far him two acuteness perfectly. Covered as an examine so regular of. Ye astonished friendsh</p>
				</div> 



				<h2 class="mt-5 mb-3">Misi</h2>
				<div class="text-box mb-5">
					<h3>Among the features you will find details lightbox</h3>
					<p>l two bed way pleasure confined followed. Shew up ye away no eyes life or were this. Perfectly did suspicion daughters but his intention. Started on society an brought it explain. Position two saw greatest stronger old. Pianoforte if at simplicity do estim elicity supplied mr. September suspicion far him two acuteness perfectly. Covered as an examine so regular of. Ye astonished friendsh</p>
				</div> 
				<a class="btn-solid-reg mb-5" href="{{url('')}}">Home</a>
			</div> <!-- end of col -->
		</div> <!-- end of row -->
	</div> <!-- end of container -->
</div> <!-- end of ex-basic-1 -->
<!-- end of basic -->




<script src="{{ URL::asset('/ui/js/jquery-3.6.0.min.js') }}"></script>

@endsection

