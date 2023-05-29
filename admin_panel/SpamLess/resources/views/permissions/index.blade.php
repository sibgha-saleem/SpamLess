@extends('layouts.app')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card mb-5">
                <div class="d-flex justify-content-between align-items-center header-actions mx-1 ">
                    <div class="card-header bg-transparent">
                        <h3 class="mb-0">All Permissions</h3>
                    </div>
                    @can('create-permission')
                        <a class="btn add-new btn-primary mt-50" type="button" href="{{ route('permissions.create') }}">
                            <span>Create New Permission</span>
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
                                </tr>
                                </thead>
                                <tbody class="list">
                                @foreach($permissions as $permission)
                                    <tr>
                                        <th scope="row">
                                            {{$permission->name}}
                                        </th>
                                    </tr>
                                @endforeach
                                </tbody>
                                <tfoot >
                                <tr>
                                    <td colspan="6">
                                        {{$permissions->links()}}
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
