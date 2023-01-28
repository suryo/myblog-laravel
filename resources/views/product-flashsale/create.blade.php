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
        @slot('pagetitle')
            Tables
        @endslot
        @slot('title')
            Datatables
        @endslot
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
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('flashsale.store') }}" method="POST">
                        @csrf

                        <div class="mb-3 row">
                            <label class="col-md-2 col-package-label"> Product :</label>
                            <div class="col-md-10">

                                <select class="form-select" name="id_product">
                                @foreach ($product as $product)
                                    <option value={{$product->id}}>{{$product->product_name}}-{{$product->product_weight}}g ({{$product->product_form_name}}-{{$product->product_collection_name}}-{{$product->product_type_name}}-{{$product->product_package_name}})
                                    </option>
                                @endforeach 
                                </select>

                            </div>
                    
                        </div>


                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-md-2 col-form-label">Minimum Order :</label>
                            <div class="col-md-10">
                                <input class="form-control" type="text" name="flashsaleprice" value=""
                                    id="example-text-input" placeholder="$50">
                            </div>
                        </div>

                        <div class="pull-right">
                            <a class="btn btn-primary" href="{{ route('flashsale.index') }}"> Back</a>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>


                    </form>
                </div>
            </div>
        </div> <!-- end col -->
    </div>

@endsection
@section('script')
    <script src="{{ URL::asset('/assets/libs/datatables/datatables.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/jszip/jszip.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/datatables.init.js') }}"></script>
@endsection
