<!-- Name Field -->
<div class="form-group col-sm-6">
    {!! Form::label('name', 'Name:') !!}
    {!! Form::text('name', null, ['class' => 'form-control']) !!}
</div>

<!-- Email Field -->
<div class="form-group col-sm-6">
    {!! Form::label('email', 'Email:') !!}
    {!! Form::text('email', null, ['class' => 'form-control']) !!}
</div>

<!-- Password Field -->
<div class="form-group col-sm-6">
    {!! Form::label('password', 'Password:') !!}
    <input class="form-control" name="password" type="text" value="" id="password">
    {{-- {!! Form::text('password', null, ['class' => 'form-control']) !!} --}}
</div>

<!-- status Field -->
<div class="form-group col-sm-3">
    {!! Form::label('status', 'Status:') !!}
    {!! Form::select('status', [
    '1' => 'Active',
    '2' => 'Banned'
], null, ['class' => 'form-control']) !!}
    {{-- <input class="form-control" name="password" type="text" value="" id="password"> --}}
    {{-- {!! Form::text('password', null, ['class' => 'form-control']) !!} --}}
</div>

<!-- Picture Field -->
<div class="form-group col-sm-3">
    {!! Form::label('picture', 'Picture:') !!}
    {!! Form::file('picture', ['class' => 'form-control']) !!}
</div>