<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', 'Name:') !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<!-- Categor Id Field -->
<div class="form-group col-sm-6">
    {!! Form::label('categor_id', 'Category:') !!}
    <select name="categor_id" id="categor_id" class="form-control">
        <option selected disabled>Select Category</option>
        @foreach ($categories as $category)
            <option value="{{ $category->id }}" 
                @isset($prodouct) @if ($prodouct->categor_id == $category->id) selected @endif @endisset 
                >{{ $category->name }}</option>
        @endforeach
    </select>
</div>

{{-- <!-- No Of Reviews Field -->
<div class="form-group col-sm-6">
    {!! Form::label('no_of_reviews', 'No Of Reviews:') !!}
    {!! Form::text('no_of_reviews', null, ['class' => 'form-control']) !!}
</div>

<!-- Overall Rating Field -->
<div class="form-group col-sm-6">
    {!! Form::label('overall_rating', 'Overall Rating:') !!}
    {!! Form::text('overall_rating', null, ['class' => 'form-control']) !!}
</div> --}}

<!-- Picture Field -->
<div class="form-group col-sm-6">
    {!! Form::label('picture', 'Picture:') !!}
    {!! Form::FILE('picture', ['class' => 'form-control']) !!}
</div>