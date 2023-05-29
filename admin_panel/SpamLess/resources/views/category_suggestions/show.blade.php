@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Category Suggestion Details</h1>
                </div>
                <div class="col-sm-6">
                    <a class="btn btn-default float-right"
                       href="{{ route('categorySuggestions.index') }}">
                        Back
                    </a>
                </div>
            </div>
        </div>
    </section>

    <div class="px-3">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    @include('category_suggestions.show_fields')
                </div>
            </div>
        </div>
    </div>
@endsection
