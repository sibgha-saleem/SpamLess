<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Validation\UnauthorizedException;

class CheckBan
{
    public function handle(Request $request, Closure $next)
    {
        if ($request->user() && $request->user()->is_banned) {
            throw new UnauthorizedException('This account is banned.');
        }

        return $next($request);
    }
}
