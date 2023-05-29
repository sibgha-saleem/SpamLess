
<!-- Name Field -->
<div class="col-sm-4">
    {!! Form::label('name', 'Name:') !!}
    <p>{{ $user->name }}</p>
</div>

<!-- Email Field -->
<div class="col-sm-4">
    {!! Form::label('email', 'Email:') !!}
    <p>{{ $user->email }}</p>
</div>

<!-- Email Field -->
<div class="col-sm-2">
    {!! Form::label('Status', 'Status:') !!}
    @if ($user->status == 1)
       <p>Active</p> 
    @else
    <p>Banned</p>
         
    @endif
</div>


<!-- Picture Field -->
<div class="col-sm-2">
    <img class="round" src="{{ asset($user->picture) }}" alt="avatar" height="90" width="90">
</div>

<div class="col-md-12">

    <hr class="solid">
</div>
<div class="col-md-12">
@if ($user->reviews->count())
    @foreach ($user->reviews as $review)
        <b>Product: </b>
        <span>{{ $review->product->name }}</span> <b>Rating</b> <span>{{ $review->rating }}</span>  <br>
        <b>Review</b>
        <p>{{ $review->text }}</p>
    @endforeach


@else
<p>This user has written no reviews</p>
@endif
</div>
