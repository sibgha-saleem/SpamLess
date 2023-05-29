<!-- Id Field -->
<div class="col-sm-12">
    {!! Form::label('id', 'Id:') !!}
    <p>{{ $categorySuggestion->id }}</p>
</div>

<!-- Name Field -->
<div class="col-sm-12">
    {!! Form::label('name', 'Name:') !!}
    <p>{{ $categorySuggestion->name }}</p>
</div>

<!-- Description Field -->
<div class="col-sm-12">
    {!! Form::label('description', 'Description:') !!}
    <p>{{ $categorySuggestion->description }}</p>
</div>

<!-- Reason Field -->
<div class="col-sm-12">
    {!! Form::label('reason', 'Reason:') !!}
    <p>{{ $categorySuggestion->reason }}</p>
</div>

<!-- Products Name Field -->
<div class="col-sm-12">
    {!! Form::label('products_name', 'Products Name:') !!}
    <p>{{ $categorySuggestion->products_name }}</p>
</div>
