<div class="table-responsive">
    <table class="table" id="categories-table">
        <thead>
        <tr>
            <th>Products Name</th>
            <th>Created By</th>
            <th>Total Reviews</th>
        </tr>
        </thead>
        <tbody>
        @foreach($prodoucts as $prodouct)
            <tr>
                <td><a href="{{ route('prodoucts.show', [$prodouct->id]) }}" style="color: black">
                    {{ $prodouct->name }}
                </a>
                <td>{{ $prodouct->createdBy->name }}</td>
                <td>{{  $prodouct->allReviews->count() }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
