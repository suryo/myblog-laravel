@extends('layouts.master')
@section('title')
    @lang('translation.Profile')
@endsection

@section('content')
    @component('common-components.breadcrumb')
        @slot('pagetitle')
            Contacts
        @endslot
        @slot('title')
            Profile
        @endslot
    @endcomponent

    <div class="row mb-4">
        <div class="col-xl-4">
            <div class="card h-100">
                <div class="card-body">
                    <div class="text-center">
                        <div class="dropdown float-end">
                            <a class="text-body dropdown-toggle font-size-18" href="#" role="button"
                                data-bs-toggle="dropdown" aria-haspopup="true">
                                <i class="uil uil-ellipsis-v"></i>
                            </a>

                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="#">Edit</a>
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Remove</a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div>
                            <img src="{{ URL::asset('/assets/images/logosupresso.png') }}" alt="" height="98px">
                        </div>
                        <h5 class="mt-3 mb-1">{{ $user->name }},{{ $userId }}</h5>
                        <p class="text-muted">{{ count($role) != 0 ? $role[0] : '' }}</p>

                    </div>

                    <hr class="my-4">

                    <div class="text-muted">
                        {{-- <h5 class="font-size-16">About</h5>
                        <p>Hi I'm Marcus,has been the industry's standard dummy text To an English person, it will seem like
                            simplified English, as a skeptical Cambridge.</p> --}}
                        <div class="table-responsive mt-4">
                            <div>
                                <p class="mb-1">Name :</p>
                                <h5 class="font-size-16">{{ $user->fullname }}</h5>
                            </div>
                            <div class="mt-4">
                                <p class="mb-1">Mobile :</p>
                                <h5 class="font-size-16">{{ $user->notelp }}</h5>
                            </div>
                            <div class="mt-4">
                                <p class="mb-1">E-mail :</p>
                                <h5 class="font-size-16">{{ $user->email }}</h5>
                            </div>
                            <div class="mt-4">
                                <p class="mb-1">Address :</p>
                                <h5 class="font-size-16">{{ $user->alamat }}</h5>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-8">
            <div class="card mb-0">

                <div class="tab-content p-4">
                    <div class="tab-pane active" id="about" role="tabpanel">
                        <div>

                            @if (count($errors) > 0)
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
                                {!! Form::model($user, ['method' => 'PATCH', 'route' => ['profile.update', 'id=' . $userId]]) !!}
                                <div class="col-12">
                                    <div class="card">
                                        <div class="card-body">
                                            @csrf
                                            @method('put')


                                            <div class="mb-3 row">
                                                <label for="example-text-input"
                                                    class="col-md-2 col-form-label">Password</label>
                                                <div class="col-md-10">
                                                    {!! Form::password('password', ['placeholder' => 'Password', 'class' => 'form-control']) !!}
                                                </div>
                                            </div>


                                            <div class="mb-3 row">
                                                <label for="example-text-input" class="col-md-2 col-form-label">Password
                                                    Confirm</label>
                                                <div class="col-md-10">
                                                    {!! Form::password('confirm-password', ['placeholder' => 'Confirm Password', 'class' => 'form-control']) !!}
                                                </div>
                                            </div>



                                        </div>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    {{-- <a class="btn btn-primary" href="{{ route('users.index') }}"> Back</a> --}}
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                                {!! Form::close() !!}
                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
@endsection
