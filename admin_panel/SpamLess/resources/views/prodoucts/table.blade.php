<div class="table-responsive">
    <table class="table" id="prodoucts-table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Category</th>
                <th>No Of Reviews</th>
                <th>Overall Rating</th>
                <th>Picture</th>
                <th colspan="3">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($prodoucts as $prodouct)
                <tr>
                    <td><a href="{{ route('prodoucts.show', [$prodouct->id]) }}" style="color: black">
                            {{ $prodouct->name }}
                        </a>
                    </td>
                    <td>{{ $prodouct->category->name }}</td>
                    <td>{{ $prodouct->allReviews->count() }}</td>
                    @php
                        $all_reviews = $prodouct->allReviews;
                        $rating = 0;
                        if ($prodouct->allReviews->count()) {
                            foreach ($all_reviews as $review) {
                                $rating += $review->rating;
                            }
                        
                            $rating = (int) $rating / (int) $prodouct->allReviews->count();
                        }
                        
                    @endphp
                    <td>{{ $rating }}</td>

                    <td>
                        @if ($prodouct->picture)
                            <img class="round" src="{{ asset($prodouct->picture) }}" alt="image" height="40"
                                width="40">
                        @endif
                    </td>

                    <td width="120">
                        {!! Form::open(['route' => ['prodoucts.destroy', $prodouct->id], 'method' => 'delete']) !!}
                        <div class='btn-group'>
                            <a href="{{ route('prodoucts.show', [$prodouct->id]) }}" class='btn btn-default btn-sm'>
                                <i data-feather='eye'></i>
                            </a>
                            <!-- <a href="{{ route('prodoucts.edit', [$prodouct->id]) }}" class='btn btn-default btn-sm'>
                                <i data-feather='edit'></i>
                            </a>
                            {!! Form::button('<i data-feather="trash-2"></i>', [
                                'type' => 'submit',
                                'class' => 'btn btn-danger btn-sm',
                                'onclick' => "return confirm('Are you sure?')",
                            ]) !!} -->
                        </div>
                        {!! Form::close() !!}
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
