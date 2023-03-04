document.write(`
<nav class='navbar navbar-expand-xl navbar-light py-xl-3'>
   <div class="container">
      <a href="index.html" class="navbar-brand">
         <img src="assets/img/logo.svg" class="img-auto" alt="">
      </a>

      <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol">
         <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-collapse collapse" id="navcol">
         <div class="input-group border rounded mt-2 order-xl-2 mt-xl-0 mr-xl-2">
            <div class="input-group-prepend">
               <button class="btn"><i class="bi bi-search"></i></button>
            </div>
            <input type="text" class="form-control border-0 bg-transparent pl-0" placeholder="Temukan..">
         </div>

         <ul class="navbar-nav text-uppercase font-weight-bold my-3 my-xl-0 mr-xl-4 order-xl-1 mr-xl-auto">
            <li class="nav-item dropdown">
               <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">courses</a>
               <div class="dropdown-menu text-capitalize">
                  <div class="subnav">
                     <div class="container-fluid">
                        <div class="row row-cols-1 row-cols-lg-3 g-xl-3">
                           <div class="col">
                              <h6 class="nav-title">kategori</h6>
                              <ul class="navbar-nav flex-column mb-4 mb-xl-0">
                                 <li class="nav-item"><a href="#" class="nav-link">web development</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">mobile development</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">studi kasus</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">fundamental</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">pemula</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">menengah</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">framework</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">front end</a></li>
                                 <li class="nav-item"><a href="#" class="nav-link">back end</a></li>
                              </ul>
                           </div>
                           <div class="col">
                              <h6 class="nav-title">kategori</h6>
                              <ul class="navbar-nav flex-column mb-4 mb-xl-0">
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <img src="assets/img/square.png" width="20" height="auto" class="mr-2" alt=""> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <img src="assets/img/square.png" width="20" height="auto" class="mr-2" alt=""> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <img src="assets/img/square.png" width="20" height="auto" class="mr-2" alt=""> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <img src="assets/img/square.png" width="20" height="auto" class="mr-2" alt=""> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <img src="assets/img/square.png" width="20" height="auto" class="mr-2" alt=""> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <img src="assets/img/square.png" width="20" height="auto" class="mr-2" alt=""> web development
                                    </a>
                                 </li>
                              </ul>
                           </div>
                           <div class="col">
                              <h6 class="nav-title">kategori</h6>
                              <ul class="navbar-nav flex-column mb-4 mb-xl-0">
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <i class="bi bi-apple mr-2"></i> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <i class="bi bi-apple mr-2"></i> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <i class="bi bi-apple mr-2"></i> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <i class="bi bi-apple mr-2"></i> web development
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="#" class="nav-link">
                                       <i class="bi bi-apple mr-2"></i> web development
                                    </a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </li>
            <li class="nav-item dropdown">
               <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">explore</a>
               <div class="dropdown-menu text-capitalize">
                  <a href="#" class="dropdown-item">Lorem Ipsum</a>
                  <a href="#" class="dropdown-item">Lorem Ipsum</a>
                  <a href="#" class="dropdown-item">Lorem Ipsum</a>
                  <a href="#" class="dropdown-item">Lorem Ipsum</a>
                  <a href="#" class="dropdown-item">Lorem Ipsum</a>
               </div>
            </li>
            <li class="nav-item"><a href="#" class="nav-link">program</a></li>
            <li class="nav-item"><a href="#" class="nav-link">partnership</a></li>
         </ul>

         <div class="d-xl-flex order-xl-3">
            <button class="btn btn-secondary btn-block mr-xl-2 font-weight-bold" data-toggle="modal" data-target="#modal-login">LOGIN</button>
            <button class="btn btn-primary btn-block mt-xl-0 font-weight-bold" data-toggle="modal" data-target="#modal-register">REGISTER</button>
         </div>
      </div>
   </div>
</nav>
<style>
   .navbar-brand img {
      width: calc(175px + 2.5vw);
   }

   @media (min-width: 1200px) {
      .navbar .input-group {
         max-width: 235px;
      }
   }

   @media (min-width: 1400px) {
      .navbar-expand-xl .navbar-nav .nav-link {
         padding: .5rem .875rem;
      }
   }

   /* sub navbar */
   .subnav .nav-title {
      font-weight: bold;
      text-transform: uppercase;
   }

   .subnav .row {
      width: calc(100% + 30px);
   }

   .subnav .nav-link {
      font-weight: normal;
      display: block;
   }

   @media (max-width: 1199.98px) {
      .subnav {
         max-height: 60vh;
         overflow-y: auto;
      }
   }

   @media (min-width: 1200px) {
      .subnav {
         width: 640px;
      }

      .subnav .nav-link {
         font-size: .875em;
      }
   }

   @media (min-width: 992px) {
      .nav-title {
         padding-top: 1rem;
         padding-left: .5rem;
      }
   }

   @media (min-width: 1400px) {
      .nav-title {
         padding-left: .875rem;
      }
   }

   /* navbar dropdown */
   @media (min-width: 992px) {
      .navbar .dropdown-menu {
         box-shadow: 0 .125rem .25rem rgba(0,0,0,.075)!important;
      }
      
      .navbar .dropdown:hover .dropdown-menu {
         display: block;
      }
   }
</style>
`)