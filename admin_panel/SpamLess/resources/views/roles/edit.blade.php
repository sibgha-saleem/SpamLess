@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="d-flex justify-content-between align-items-center header-actions mx-1 row mt-75">
                        
                    <h6 class="heading-small text-muted mb-4">Role information</h6>

                
                    @can('create-role')
                        <a class="btn btn-primary btn-sm" type="button" href="{{ route('roles.index') }}">
                            <span>
                                <i data-feather='skip-back'></i>
                                All Roles</span>
                        </a>
                    @endcan
                </div>


                <div class="card-body">
                    {!! Form::open(['route' => ['roles.update', $role], 'method'=>'put']) !!}
                    
                        <div class="pl-lg-4">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        {{ Form::label('name', 'Name', ['class' => 'form-control-label']) }}
                                        {{ Form::text('name', $role->name, ['class' => 'form-control']) }}
                                    </div>
                                </div>
                            </div>
                        <hr class="my-4" />
                        <div class="pl-lg-1">
                            <div class="row">
                                    <div class="col-lg-6">
                                        @foreach ($permissions as $key => $permission)
                                        <div class="form-group p-2 d-inline-block">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" name="permissions[]" value="{{ $key }}" class="custom-control-input" id="{{ $permission }}"
                                                @foreach ($role->permissions as $perm)
                                                    @if ($perm->id== $key))
                                                        checked
                                                    @endif
                                                @endforeach
                                                @if($role->name == 'super-admin')
                                                    disabled
                                                @endif>
                                                {{ Form::label($permission, $permission, ['class' => 'custom-control-label']) }}
                                            </div>
                                        </div>
                                        @endforeach
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
