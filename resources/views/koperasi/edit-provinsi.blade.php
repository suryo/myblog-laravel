

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
        @slot('title') Datatables @endslot
    @endcomponent
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit provinsi</h2>
            </div>
        </div>
    </div>


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
    <form action="{{ route('koperasiprovinsi.update',$find->id) }}" method="POST">
    	@csrf
        {{-- @method('PUT') --}}

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="input-group hdtuto control-group lst increment" >
                            <input type="text" name="category_barang" value="{{ $find->provinsi }}" class="form-control" placeholder="provinsi">  
                        </div>
                    </div>
                </div>
            </div> 
            <div class="col-12"> 
            <a class="btn btn-secondary" href="{{ route('koperasiprovinsi.list') }}"> Back</a>     
            <button type="submit" class="btn btn-primary btn-md">Submit</button>
        </div> 
        </div>
       
    </form>
@endsection
@section('script')
    <script src="{{ URL::asset('/assets/libs/datatables/datatables.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/jszip/jszip.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/datatables.init.js') }}"></script>
@endsection
