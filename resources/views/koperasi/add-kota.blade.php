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
                    <form action="{{ route('koperasikota.add') }}" method="POST">
                        @csrf

                       

                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-md-2 col-form-label">Provinsi :</label>
                            <div class="col-md-10">
                            <select class="form-select" name="id_provinsi" id="userSelectCountry"
                                aria-label="Floating label select">
                                @foreach ($res_provinsi as $item)
                                    <option value="{{ $item->id }}">{{ $item->provinsi }}</option>
                                @endforeach
                            </select>
                        </div>
                        </div>

                        <div class="mb-3 row">
                            <label for="example-text-input" class="col-md-2 col-form-label">Name :</label>
                            <div class="col-md-10">
                                <input class="form-control" type="text" name="kota" value=""
                                    id="example-text-input" placeholder="kota">
                            </div>
                        </div>
                        <div class="pull-right">
                            <a class="btn btn-primary" href="{{ route('koperasikota.list') }}"> Back</a>
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
