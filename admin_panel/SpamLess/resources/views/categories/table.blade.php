<div class="table-responsive">
    <table class="table" id="categories-table">
        <thead>
        <tr>
            <th>Name</th>
            <th>No of Products</th>
            <th>Created By</th>
            <th colspan="3">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($categories as $category)
            <tr>
                <td>
                    <a href="{{ route('categories.show', [$category->id]) }}"
                        style="color: black">
                        {{ $category->name }}
                     </a>
                </td>
                
                <td>{{ $category->products->count() }}</td>
            <td>{{ $category->createdBy->name }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['categories.destroy', $category->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('categories.show', [$category->id]) }}"
                           class='btn btn-default btn-sm'>
                            <i data-feather='eye'></i>
                        </a>
                        <!-- <a href="{{ route('categories.edit', [$category->id]) }}"
                           class='btn btn-default btn-sm'>
                            <i data-feather='edit'></i>
                        </a>
                        {!! Form::button('<i data-feather="trash-2"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-sm', 'onclick' => "return confirm('Are you sure?')"]) !!} -->
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
