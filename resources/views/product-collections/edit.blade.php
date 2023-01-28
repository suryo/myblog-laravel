@extends('layouts.master')
@section('title')
    @lang('translation.Datatables')
@endsection
@section('css')
    <!-- DataTables -->
    <link href="{{ URL::asset('/assets/libs/datatables/datatables.min.css') }}" rel="stylesheet" type="text/css" />
@endsection

@section('content')
    @component('common-components.breadcrumb')
        @slot('pagetitle') Product @endslot
        @slot('title') Edit Product Collections @endslot
    @endcomponent
  


    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

<div class="row">
    <form action="{{ route('product-collections.update',$product_collection_models->id) }}" method="POST">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                
                    @csrf
                    @method('PUT')

                    <div class="mb-3 row">
                        <label for="example-text-input" class="col-md-2 col-form-label">Form Name :</label>
                        <div class="col-md-10">
                        <input class="form-control" type="text" name="product_collection_name" value="{{ $product_collection_models->product_collection_name}}" id="example-text-input" placeholder="Product Collection Name">
                        </div>
                    </div>


                    <div class="mb-3 row">
                    
                        <label for="example-text-input" class="col-md-2 col-form-label">Description :</label>
                        <div class="col-md-10">
                        <textarea class="form-control" style="height:150px" name="product_collection_desc" placeholder="Product Collection Desc">{{ $product_collection_models->product_collection_desc}}</textarea>
                        </div>
                
                    </div>

                    <div class="mb-3 row">
                        <label class="col-md-2 col-form-label">Status :</label>
                        <div class="col-md-10">
                            <select class="form-select" name="status">
                                <option value="active" @if($product_collection_models->status == 'active') selected @endif>Active</option>
                                <option value="inactive" @if($product_collection_models->status == 'inactive') selected @endif>Inactive</option>
                            </select>
                        </div>
                    </div> 

                    <div class="mb-3 row">
                        <label class="col-md-2 col-form-label">Order :</label>
                        <div class="col-md-10">
                            <input type="number" class="form-control" name="order" id="order" value="{{ $product_collection_models->order}}">
                        </div>
                    </div> 

                </div>
            </div>
        </div> 
        <div class="pull-right">
            <a class="btn btn-primary" href="{{ route('product-collections.index') }}"> Back</a>
            <button type="submit" class="btn btn-primary">Submit</button>
            </div></form>
        </div>

@endsection
@section('script')
    <script src="{{ URL::asset('/assets/libs/datatables/datatables.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/jszip/jszip.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/datatables.init.js') }}"></script>
@endsection
