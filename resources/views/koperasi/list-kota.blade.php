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
            Kota
        @endslot
    @endcomponent

    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="card">
                <div class="card-body">
                    <a class="btn btn-success" href="{{ route('koperasikota.create') }}"> Create Master Kota</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap"
                            style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Provinsi</th>
                                    <th>kota</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($res_kota as $item)
                                    <tr>
                                        <td>{{ $loop->index + 1 }}</td>
                                        <td>{{ $item->provinsi }}</td>
                                        <td>{{ $item->kota }}</td>
                                        <td>
                                            <form action="{{ route('koperasikota.destroy', $item->id) }}"
                                                method="POST">
                                                @csrf
                                                <a class="btn btn-info"
                                                    href="{{ route('koperasikota.show', $item->id) }}">Show</a>
                                                <a class="btn btn-primary"
                                                    href="{{ route('koperasikota.edit', $item->id) }}">Edit</a>
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
    </div> <!-- end row -->
@endsection
@section('script')
    <script src="{{ URL::asset('/assets/libs/datatables/datatables.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/jszip/jszip.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/libs/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ URL::asset('/assets/js/pages/datatables.init.js') }}"></script>
@endsection
