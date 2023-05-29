<div class="table-responsive">
    <table class="table" id="reviews-table">
        @if ($prodouct->allReviews->count())
            
        <thead>
            <tr>
                <th>Name</th>
                <th>Review</th>
                <th>Rating</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            
            @foreach ($prodouct->allReviews as $review)
                <tr>
                    <td>{{ $review->createdBy->name }}</td>
                    <td
                        style="max-width: 400px; ">
                        {{ $review->text }}</td>
                    <td>{{ $review->rating }}</td>

                    <td>
                        @if ($review->status === 1)
                            Truthful
                        @else
                            Deceptive
                        @endif
                    </td>
                </tr>
            @endforeach
        </tbody>

        @else

        <h3>0 Reviews for this product</h3>

        @endif

    </table>
</div>
