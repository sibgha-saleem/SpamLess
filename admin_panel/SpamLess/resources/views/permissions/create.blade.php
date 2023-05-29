@extends('layouts.app')
@push('pg_btn')
    
@endpush
@section('content')
    <div class="row">
        <div class="col-md-12">

            <div class="card mb-5">
                <div class="d-flex justify-content-between align-items-center header-actions mx-1 ">
                    <div class="card-header bg-transparent">
                        <h6 class="heading-small text-muted mb-4">Permission information</h6>

                    </div>
                    @can('create-permission')
                        <a class="btn add-new btn-primary btn-sm " type="button" href="{{ route('permissions.index') }}">
                            <span>
                                <i data-feather='skip-back'></i>
                                All Permissions
                            </span>
                        </a>
                    @endcan
                </div>

                <div class="card-body">
                    {!! Form::open(['route' => 'permissions.store']) !!}
                        <div class="pl-lg-4">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        {{ Form::label('name', 'Name', ['class' => 'form-control-label']) }}
                                        {{ Form::text('name', null, ['class' => 'form-control']) }}
                                        <small class="text-small text-muted">You can add multiple permission using comma. ex add-user, edit-user, update-user</small>
                                    </div>
                                </div>
                            </div>
                        <div class="pl-lg-1">
                            <div class="row">
                                <div class="col-md-12">
                                    {{ Form::submit('Submit', ['class'=> 'mt-3 btn btn-secondary']) }}
                                </div>
                            </div>
                        </div>
                    {!! Form::close() !!}
                </div>
                </div>
            </div>
        </div>
    </div>
@endsection
