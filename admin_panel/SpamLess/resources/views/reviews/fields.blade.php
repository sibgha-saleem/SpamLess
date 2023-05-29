<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('product', 'Product:') !!}
    {!! Form::select('product', $prodoucts, null,['class' => 'form-control']) !!}
</div>



<!-- Rating Field -->
<div class="form-group col-sm-3">
    {!! Form::label('rating', 'Rating:') !!}
    {!! Form::number('rating', null, ['class' => 'form-control']) !!}
</div>

<!-- Status Field -->
<div class="form-group col-sm-3">
    {!! Form::label('status', 'Status:') !!}
    {!! Form::select('status',[
        '' => '',
        '1' => 'Truthful',
        '2' => 'Deceptive'
    ] , null , ['class' => 'form-control']) !!}

    {{-- {!! Form::text('status', null, ['class' => 'form-control']) !!} --}}
</div>

<!-- Text Field -->
<div class="form-group col-sm-12">
    {!! Form::label('review', 'Review:') !!}
    {!! Form::textarea('review', null, ['class' => 'form-control']) !!}
</div>