document.write(`
<div id="home-banner" class="carousel slide carousel-fade carousel-fullscreen" data-ride="carousel" data-interval="false"
   data-pause="false">
   <div class="carousel-inner">

      <!-- banner item -->
      <div class="carousel-item active">
         <div class="carousel-caption text-md-left">
            <div class="container-xl">
               <div class="row">
                  <div class="col-lg-8 col-xl-7 px-0">
                     <h1 class="caption-title mb-2">Lorem Ipsum Sit Amet 01.</h1>
                     <p class="lead caption-text mb-4">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                     </p>
                     <a href="#" class="btn btn-primary">
                        READ MORE <i class="bi bi-chevron-right"></i>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- banner item -->
      <div class="carousel-item">
         <div class="carousel-caption text-md-left">
            <div class="container-xl">
               <div class="row">
                  <div class="col-lg-8 col-xl-7 px-0">
                     <h1 class="caption-title mb-2">Lorem Ipsum Sit Amet 02.</h1>
                     <p class="lead caption-text mb-4">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                     </p>
                     <a href="#" class="btn btn-primary">
                        READ MORE <i class="bi bi-chevron-right"></i>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>

   </div>

   <button class="carousel-control carousel-control-prev" type="button" data-target="#home-banner" data-slide="prev">
      <span class="bi bi-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
   </button>
   <button class="carousel-control carousel-control-next" type="button" data-target="#home-banner" data-slide="next">
      <span class="bi bi-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
   </button>

   <ol class="carousel-indicators">
      <li data-target="#home-banner" data-slide-to="0" class="active"></li>
      <li data-target="#home-banner" data-slide-to="1"></li>
   </ol>
</div>
<style>
   #home-banner .carousel-item {
      height: calc(100vh - 30vw);
      background-color: #323232;
      background-repeat: no-repeat;
      background-position: center;
      background-size: cover;
      position: relative;
   }

   #home-banner .carousel-item::after {
      content: '';
      position: absolute;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      background-color: rgba(0, 0, 0, .5);
   }

   @media (min-width: 992px) {
      #home-banner .carousel-item {
         height: 82vh;
      }
   }

   #home-banner .carousel-item .carousel-caption {
      top: 50%;
      bottom: unset;
      transform: translateY(-50%);
   }

   #home-banner .carousel-control {
      font-size: calc(3rem + 1vw);
   }

   /* image banner */
   #home-banner .carousel-item {
      background-image: url(assets/img/lanscape.png);
   }
</style>
`)