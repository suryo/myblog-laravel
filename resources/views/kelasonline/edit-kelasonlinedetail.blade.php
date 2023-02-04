@extends('layouts.master')
@section('title')
    @lang('translation.Add_Product')
@endsection
@section('css')
    <!-- DataTables -->
    <link href="{{ URL::asset('/assets/libs/select2/select2.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ URL::asset('/assets/libs/dropzone/dropzone.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')
    @component('common-components.breadcrumb')
        @slot('pagetitle')
            Kelas-Online
        @endslot
        @slot('title')
            Edit Topics
        @endslot
    @endcomponent
    {{-- <form> --}}

    <form action="{{ route('kelasonlinedetail.update', $kelasonlinedetail->id) }}" method="POST" enctype="multipart/form-data">

        @csrf
        @method('put')


      
        <div class="row">

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <label for="exampleFormControlTextarea1">Title</label>
                        <input type="text" class="form-control @error('title') is-invalid @enderror" name="title"
                value="{{ $kelasonlinedetail->title }}">
                    </div>
                </div>
            </div>

            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <label for="exampleFormControlTextarea1">Short Desc</label>
                        @if (!empty($kelasonlinedetail->short_desc))
                        <textarea name="short_desc" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ $kelasonlinedetail->short_desc }}</textarea>
                        @else 
                        <textarea name="short_desc" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        @endif
                        
                    </div>
                </div>
            </div>


            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <h4 class="card-title">Content</h4>
                        {{-- <p class="card-title-desc">Bootstrap-wysihtml5 is a javascript
                            plugin that makes it easy to create simple, beautiful wysiwyg editors
                            with the help of wysihtml5 and Twitter Bootstrap.</p> --}}
                            @if (!empty($kelasonlinedetail->text))
                        <textarea id="elm1" name="text">
                            {{ $kelasonlinedetail->text }}
                            
                        </textarea>
                        @else 
                        <textarea id="elm1" name="text"></textarea>
                        @endif

                    </div>
                </div>
            </div>


            
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
      
                        <div class="input-group hdtuto control-group lst increment" >
                            <input type="file" name="image" class="myfrm form-control">
                            
                        </div>
                     
                    </div>
                </div>
            </div>       

        </div>
  


            <button type="submit" class="btn btn-md btn-primary mt-3">Update</button>
            {{-- <a href="{{ route('post.index') }}" class="btn btn-md btn-secondary">back</a> --}}

        </form>
@endsection
@section('script')
    <script src="{{ URL::asset('/assets/libs/ckeditor/ckeditor.min.js') }}"></script>
        <script src="{{ URL::asset('/assets/libs/tinymce/tinymce.min.js') }}"></script>
        <script src="{{ URL::asset('/assets/js/pages/form-editor.init.js') }}"></script>
        <script src="{{ URL::asset('/assets/libs/select2/select2.min.js') }}"></script>
        <script src="{{ URL::asset('/assets/libs/dropzone/dropzone.min.js') }}"></script>
        <script src="{{ URL::asset('/assets/js/pages/ecommerce-add-product.init.js') }}"></script>
@endsection
