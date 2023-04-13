<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!-- SEO Meta Tags -->
        <meta name="description" content="Your description">
        <meta name="author" content="Your name">

        <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->
        <meta property="og:site_name" content="" /> <!-- website name -->
        <meta property="og:site" content="" /> <!-- website link -->
        <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
        <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
        <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
        <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
        <meta name="twitter:card" content="summary_large_image"> <!-- to have large image post format in Twitter -->

        <!-- Webpage Title -->
        <title>Ioniq Webpage Title</title>
        
        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,400&display=swap" rel="stylesheet">
        <link href="../ioniq/css/bootstrap.min.css" rel="stylesheet">
        <link href="../ioniq/css/fontawesome-all.min.css" rel="stylesheet">
        <link href="../ioniq/css/swiper.css" rel="stylesheet">
        <link href="../ioniq/css/styles.css" rel="stylesheet">
        
        <!-- Favicon  -->
        <link rel="icon" href="images/favicon.png">
		</head>
		<body data-bs-spy="scroll" data-bs-target="#navbarExample">

		@include('front/navtop')
		
			
		
		<main class="wrapper">
			@yield('konten')
		</main>
        
        
		@include('front/footer')

    
        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <p class="p-small">Copyright © <a href="#your-link">Your name</a></p>
                    </div> <!-- end of col -->

                    <div class="col-lg-6">
                        <p class="p-small">Distributed By<a href="https://themewagon.com/"> Themewagon</a></p>    
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->
        

        <!-- Back To Top Button -->
        <button onclick="topFunction()" id="myBtn">
            <img src="../ioniq/images/up-arrow.png" alt="alternative">
        </button>
        <!-- end of back to top button -->
            
        <!-- Scripts -->
        <script src="../ioniq/js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="../ioniq/js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="../ioniq/js/purecounter.min.js"></script> <!-- Purecounter counter for statistics numbers -->
        <script src="../ioniq/js/replaceme.min.js"></script> <!-- ReplaceMe for rotating text -->
        <script src="../ioniq/js/scripts.js"></script> <!-- Custom scripts -->
    </body>
</html>