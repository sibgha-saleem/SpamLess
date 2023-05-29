<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Permission;

class PermissionController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('permission:view-permission');
    //     $this->middleware('permission:create-permission', ['only' => ['create','store']]);
    //     $this->middleware('permission:update-permission', ['only' => ['edit','update']]);
    //     $this->middleware('permission:destroy-permission', ['only' => ['destroy']]);
    // }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Manage Permissions';
        $permissions = Permission::paginate( 15);
        return view('permissions.index', compact('permissions','title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $title = 'Create Permission';
        return view('permissions.create', compact('title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:permissions|max:255',
        ]);
        foreach (explode(',',$request->name) as  $perm) {
            $permission = Permission::create(['name' => $perm]);
            $permission->assignRole('super-admin');
        }
        flash('Permission created successfully!')->success();
        return redirect()->route('permissions.index');
    }

}
