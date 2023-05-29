@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">

                <div class="d-flex justify-content-between align-items-center header-actions mx-1 row mt-75">
                    <div class="card-header bg-transparent">
                        <h3 class="mb-0">All Roles</h3>
                    </div>
                    @can('create-role')
                        <a class="btn add-new btn-primary mt-50" type="button" href="{{ route('roles.create') }}">
                            <span>Add New Role</span>
                        </a>
                    @endcan
                </div>


                <div class="card-body p-0">
                    <div class="table-responsive">
                        <div>
                            <table class="table table-hover align-items-center">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Permission</th>
                                        <th scope="col" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody class="list">
                                    @foreach ($roles as $role)
                                        <tr>
                                            <th scope="row">
                                                {{ $role->name }}
                                            </th>
                                            <td class="budget">
                                                <div class="mx-w-440 d-flex flex-wrap">

                                                    @foreach ($role->getAllPermissions() as $permission)
                                                        <span
                                                            class="badge badge-pill badge-light-primary ml-1">{{ $permission->name }}</span>
                                                    @endforeach
                                                </div>
                                            </td>
                                            <td class="text-center">
                                                @if ($role->name != 'super-admin')
                                                    @can('destroy-role')
                                                        {!! Form::open(['route' => ['roles.destroy', $role], 'method' => 'delete', 'class' => 'd-inline-block dform']) !!}
                                                    @endcan

                                                    <div class="btn-group" >
                                                        @can('update-role')
                                                            <a type="button"
                                                                class="btn btn-primary btn-sm waves-effect "
                                                                data-toggle="tooltip" data-placement="top"
                                                                title="Edit role details"
                                                                href="{{ route('roles.edit', $role) }}">
                                                                <i data-feather='edit-2'></i>
                                                            </a>
                                                        @endcan
                                                        @can('destroy-role')
                                                            <button type="submit" data-toggle="tooltip" data-placement="top"
                                                                title="Delete role" href=""
                                                                class="btn btn-danger btn-sm waves-effect ">
                                                                <i data-feather='trash-2'></i>
                                                            </button>
                                                            {!! Form::close() !!}
                                                        @endcan
                                                    </div>
                                                @else
                                                    <span class="text-muted text-small">-</span>
                                                @endif
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="6">
                                            {{ $roles->links() }}
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script>
        jQuery(document).ready(function() {
            $('.delete').on('click', function(e) {
                e.preventDefault();
                let that = jQuery(this);
                jQuery.confirm({
                    icon: 'fas fa-wind-warning',
                    closeIcon: true,
                    title: 'Are you sure!',
                    content: 'You can not undo this action.!',
                    type: 'red',
                    typeAnimated: true,
                    buttons: {
                        confirm: function() {
                            that.parent('form').submit();
                        },
                        cancel: function() {}
                    }
                });
            })
        })
    </script>
@endpush
