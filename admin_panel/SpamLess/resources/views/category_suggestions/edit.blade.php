@extends('layouts.app')

@section('content')
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-12">
                    <h1>Edit Category Suggestion</h1>
                </div>
            </div>
        </div>
    </section>

    <div class="px-3">

        @include('adminlte-templates::common.errors')

        <div class="card">

            {!! Form::model($categorySuggestion, ['route' => ['categorySuggestions.update', $categorySuggestion->id], 'method' => 'patch']) !!}

            <div class="card-body">
                <div class="row">
                    @include('category_suggestions.fields')
                </div>
            </div>

            <div class="card-footer">
                {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
                <a href="{{ route('categorySuggestions.index') }}" class="btn btn-default">Cancel</a>
            </div>

            {!! Form::close() !!}

        </div>
    </div>
@endsection
