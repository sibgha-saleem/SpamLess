<div class="table-responsive">
    <table class="table" id="reviews-table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Review</th>
                <th>Rating</th>
                <th>Status</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($reviews as $review)
                <tr>
                    <td>
                    <a href="{{ route('users.show', [$review->createdBy->id]) }}" style="color: black">
                        
                        {{ $review->createdBy->name }}
                    </td>
                    <td
                        style="
                            text-overflow: ellipsis;
                            overflow: hidden;
                            white-space: nowrap;
                            max-width: 400px;
                    ">
                        {{ $review->text }}</td>
                    <td>{{ $review->rating }}</td>

                    <td>
                        @if ($review->status === 1)
                            Truthful
                        @else
                            Deceptive
                        @endif
                    </td>

                    <td width="120">
                        {!! Form::open(['route' => ['reviews.destroy', $review->id], 'method' => 'delete']) !!}
                        <div class='btn-group'>
                            <a href="{{ route('reviews.show', [$review->id]) }}" class='btn btn-default btn-sm'>
                                <i data-feather='eye'></i>
                            </a>
                            <a href="{{ route('reviews.edit', [$review->id]) }}" class='btn btn-default btn-sm'>
                                <i data-feather='edit'></i>
                            </a>
                            {!! Form::button('<i data-feather="trash-2"></i>', [
                                'type' => 'submit',
                                'class' => 'btn btn-danger btn-sm',
                                'onclick' => "return confirm('Are you sure?')",
                            ]) !!}
                        </div>
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
