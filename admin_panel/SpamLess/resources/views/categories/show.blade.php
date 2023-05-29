@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Category's Prodoucts   ({{ $prodoucts->count() }})</h1>
                </div>
                <div class="col-sm-6">
                    <a class="btn btn-default float-right"
                       href="{{ route('categories.index') }}">
                        Back
                    </a>
                </div>
            </div>
        </div>
    </section>

    <div class="px-3">
        <div class="clearfix"></div>
        <div class="card">
            <div class="card-body p-0">
                @if ($prodoucts->count())
                    

                @include('categories.show_fields')
                @else
                <div class="form-group col-sm-6">
                    <h4>Please add some products to this category</h4>
                </div>
                
                
                @endif

                {{-- <div class="card-footer clearfix">
                    <div class="float-right">
                        @include('adminlte-templates::common.paginate', ['records' => $categories])
                    </div>
                </div> --}}
            </div>

        </div>
    </div>

@endsection
