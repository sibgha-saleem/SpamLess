<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use App\Models\User;

class LoginController extends Controller
{
    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function login(Request $request)
    {
        $this->validateLogin($request);

        // Check if the email is admin's email
    if ($request->email !== 'admin@email.com') {
        throw ValidationException::withMessages([
            $this->username() => 'Only admin can login.',
        ])->redirectTo(route('login'));
    }

    if ($this->attemptLogin($request)) {
        return $this->sendLoginResponse($request);
    }

    throw ValidationException::withMessages([
        $this->username() => [trans('auth.failed')],
    ])->redirectTo(route('login'));
    
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);
            return $this->sendLockoutResponse($request);
        }

        if ($this->isBanned($request->email)) {
            throw ValidationException::withMessages([
                $this->username() => 'This account is banned.',
            ]);
        }

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        }

        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    protected function isBanned($email)
    {
        // Replace 'email' with the actual column name for email in your users table
        return User::where('email', $email)->where('status', 2)->exists();
    }
}
