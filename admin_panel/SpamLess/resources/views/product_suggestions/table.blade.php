<div class="table-responsive">
    <table class="table" id="productSuggestions-table">
        <thead>
        <tr>
            <th>Name</th>
        <th>Description</th>
        <th>Reason</th>
        <th>Category Name</th>
            <th colspan="3">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($productSuggestions as $productSuggestion)
            <tr>
                <td>{{ $productSuggestion->name }}</td>
            <td>{{ $productSuggestion->description }}</td>
            <td>{{ $productSuggestion->reason }}</td>
            <td>{{ $productSuggestion->category_name }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['productSuggestions.destroy', $productSuggestion->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('productSuggestions.show', [$productSuggestion->id]) }}"
                           class='btn btn-default btn-sm'>
                            <i data-feather='eye'></i>
                        </a>
                        <a href="{{ route('productSuggestions.edit', [$productSuggestion->id]) }}"
                           class='btn btn-default btn-sm'>
                            <i data-feather='edit'></i>
                        </a>
                        {!! Form::button('<i data-feather="trash-2"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-sm', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
