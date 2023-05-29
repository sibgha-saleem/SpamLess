<div class="table-responsive">
    <table class="table" id="users-table">
        <thead>
        <tr>
            <th>Name</th>
        <th>Email</th>
        <th>Status</th>
        <th>Picture</th>
        <th>Reviews</th>
        <th colspan="3">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($users as $user)
        {{-- @dd($user->name); --}}
            <tr>
                <td>
                    <a href="{{ route('users.show', [$user->id]) }}" style="color: black">
                        {{ $user->name }}
                    </a>
                </td>
            <td>{{ $user->email }}</td>
            <td>
                @if ($user->status == 1)
                    Active
                @else
                    Banned
                @endif
            </td>
            <td>
                @if ($user->picture)
                    
                <img class="round" src="{{ asset($user->picture) }}" alt="avatar" height="40" width="40">
                @endif

            </td>
            <td>{{ $user->reviews->count() }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['users.destroy', $user->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('users.show', [$user->id]) }}"
                           class='btn btn-default btn-sm'>
                            <i data-feather='eye'></i>
                        </a>
                        <a href="{{ route('users.edit', [$user->id]) }}"
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
