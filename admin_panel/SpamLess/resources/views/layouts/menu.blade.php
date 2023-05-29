<li class=" nav-item {{ Request::is('/') ? 'active' : '' }}"><a class="d-flex align-items-center {{ Request::is('/') ? 'active' : '' }}" href="{{ route('home') }}">
    <i data-feather="home"></i>
    <span>Dasboard</span>
</a>
</li>


<li class="nav-item {{ Request::is('categories*') ? 'active' : '' }}">
    <a href="{{ route('categories.index') }}"
       class="d-flex align-items-center {{ Request::is('categories*') ? 'active' : '' }}">
       <i data-feather='aperture'></i>
        <span>Categories</span>
    </a>
</li>


<li class="nav-item {{ Request::is('prodoucts*') ? 'active' : '' }}">
    <a href="{{ route('prodoucts.index') }}"
       class="d-flex align-items-center {{ Request::is('prodoucts*') ? 'active' : '' }}">
       <i data-feather='gift'></i>
       <span>Prodoucts</span>
    </a>
</li>



<li class="nav-item {{ Request::is('reviews*') ? 'active' : '' }}">
    <a href="{{ route('reviews.index') }}"
       class="d-flex align-items-center {{ Request::is('reviews*') ? 'active' : '' }}">
       <i data-feather='book-open'></i>
       <span>Reviews</span>
    </a>
</li>

<li class="nav-item {{ Request::is('categorySuggestions*') ? 'active' : '' }}">
    <a href="{{ route('categorySuggestions.index') }}"
       class="d-flex align-items-center {{ Request::is('categorySuggestions*') ? 'active' : '' }}">
       <i data-feather='shopping-bag'></i>
        <span>Category Suggestions</span>
    </a>
</li>


<li class="nav-item {{ Request::is('productSuggestions*') ? 'active' : '' }}">
    <a href="{{ route('productSuggestions.index') }}"
       class="d-flex align-items-center {{ Request::is('productSuggestions*') ? 'active' : '' }}">
       <i data-feather='briefcase'></i>
        <span>Product Suggestions</span>
    </a>
</li>





<li class="nav-item {{ Request::is('users*') ? 'active' : '' }}">
    <a href="{{ route('users.index') }}"
       class="d-flex align-items-center {{ Request::is('users*') ? 'active' : '' }}">
       <i data-feather='users'></i>
       <span>Users</span>
    </a>
</li>


<!-- @can('view-role')
<li class="nav-item {{ Request::is('roles*') ? 'active' : '' }}">
    <a href="{{ route('roles.index') }}"
       class="d-flex align-items-center {{ Request::is('roles*') ? 'active' : '' }}">
       <i data-feather='user-check'></i>
        <span>Roles</span>
    </a>
</li>
@endcan

@can('view-permission')
<li class="nav-item {{ Request::is('permissions*') ? 'active' : '' }}">
    <a href="{{ route('permissions.index') }}"
       class="d-flex align-items-center {{ Request::is('permissions*') ? 'active' : '' }}">
       <i data-feather='unlock'></i>
        <span>Permissions</span>
    </a>
</li>
@endcan -->
