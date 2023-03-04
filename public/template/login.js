document.write(`
<div class="modal fade" id="modal-login" data-backdrop="static" data-keyboard="false" tabindex="-1"
   aria-labelledby="modal-loginLabel" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content">
         <button type="button" class="close position-absolute top-0 right-0 m-2" data-dismiss="modal" aria-label="Close"
            style="z-index: 100;">
            <span aria-hidden="true">&times;</span>
         </button>
         <div class="modal-body p-4 p-lg-5">
            <div class="text-center">
               <h4 class="mb-4 font-weight-bold">Login</h4>
               <form action="" class="text-left mb-4">
                  <div class="form-group">
                     <div class="input-group">
                        <div class="input-group-prepend">
                           <span class="input-group-text bg-white"><i class="bi bi-envelope"></i></span>
                        </div>
                        <input type="email" class="form-control border-left-0 pl-0" placeholder="Email">
                     </div>
                  </div>
                  <div class="form-group">
                     <div class="input-group">
                        <div class="input-group-prepend">
                           <span class="input-group-text bg-white"><i class="bi bi-lock"></i></span>
                        </div>
                        <input type="password" class="form-control border-left-0 pl-0" placeholder="Password">
                     </div>
                  </div>
                  <a href="#" class="btn btn-primary btn-block btn-lg">Login</a>
                  <a href="#" class="btn btn-outline-primary btn-block">
                     <i class="bi bi-google mr-2"></i> Login With Google
                  </a>
               </form>
               <div>
                  <a href="#">Forgot Password</a> /
                  <br>Don't have an account? <a data-dismiss="modal" data-toggle="modal"
                     href="#modal-register">Register</a>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
`)