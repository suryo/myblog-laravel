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
        @slot('pagetitle') Tables @endslot
        @slot('title') Product Types @endslot
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

<div class="row"><form action="{{ route('product-types.store') }}" method="POST">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
    
    	@csrf


            <div class="mb-3 row">
                <label for="example-text-input" class="col-md-2 col-form-label">Type Name :</label>
                <div class="col-md-10">
                <input class="form-control" type="text" name="product_type_name" value="" id="example-text-input" placeholder="Product Type Name">
                </div>
            </div>


		    <div class="mb-3 row">
		       
		        <label for="example-text-input" class="col-md-2 col-form-label">Description :</label>
		        <div class="col-md-10">
                <textarea class="form-control" style="height:150px" name="product_type_desc" placeholder="Product Type Desc"></textarea>
		        </div>
        
		    </div>

             <div class="mb-3 row">
                <label class="col-md-2 col-form-label">Status :</label>
                <div class="col-md-10">
                    <select class="form-select" name="status">
                        <option>Active</option>
                        <option>Inactive</option>
                    </select>
                </div>
            </div>  
    
    </div>
            </div>
        </div>
          <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('product-types.index') }}"> Back</a>
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
