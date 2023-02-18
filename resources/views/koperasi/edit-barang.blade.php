

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
                <h2>Edit Category Barang</h2>
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
    <form action="{{ route('koperasibarang.update',$find->id) }}" method="POST">
    	@csrf
        {{-- @method('PUT') --}}

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <div class="input-group hdtuto control-group lst increment" >
                          <select class="form-select" name="id_category_barang" id="userSelectCountry"
                          aria-label="Floating label select">
                          {{-- <option value="1">opsi 1</option>
                          <option value="2">opsi 2</option>
                          <option value="3" selected>opsi 3</option>
                          <option value="4">opsi 4</option> --}}


                          @foreach ($res_category_barang as $item)
                            @if ($find->id_category_barang==$item->id)
                            <option value="{{ $item->id }}" selected>{{ $item->category_barang }}</option>
                            @else
                            <option value="{{ $item->id }}">{{ $item->category_barang }}</option>
                            @endif
                             
                          @endforeach
                      </select>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="col-12">
              <div class="card">
                  <div class="card-body">
                      <div class="input-group hdtuto control-group lst increment" >
                          <input type="text" name="barang" value="{{ $find->barang }}" class="form-control" placeholder="Barang">  
                      </div>
                  </div>
              </div>
          </div> 
          <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="input-group hdtuto control-group lst increment" >
                        <input type="text" name="price" value="{{ $find->price }}" class="form-control" placeholder="price">  
                    </div>
                </div>
            </div>
        </div> 
        <div class="col-12">
          <div class="card">
              <div class="card-body">
                  <div class="input-group hdtuto control-group lst increment" >
                      <input type="text" name="stock" value="{{ $find->stock }}" class="form-control" placeholder="stock">  
                  </div>
              </div>
          </div>
      </div> 
            <div class="col-12"> 
            <a class="btn btn-secondary" href="{{ route('koperasibarang.list') }}"> Back</a>     
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
