<?php

namespace App\Http\Middleware;

use Closure;

class CorsMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $userInput = $request->all();

        array_walk_recursive($userInput, function (&$userInput) {
            if (is_string($userInput)) $userInput = strip_tags($userInput);
            else $userInput = $userInput;
        });

        $request->merge($userInput);

        $headers = [
            'Access-Control-Allow-Origin'      => '*',
            'Access-Control-Allow-Methods'     => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Credentials' => 'true',
            'Access-Control-Max-Age'           => '86400',
            'Access-Control-Allow-Headers'     => '*',
            'X-Frame-Options'                  => 'SAMEORIGIN',
            'X-XSS-Protection'                 => '1; mode=block',
            'X-Content-Type-Options'           => 'nosniff'
        ];

        if ($request->isMethod('OPTIONS')) {
            return response()->json('{"method":"OPTIONS"}', 200, $headers);
        }

        $response = $next($request);
        foreach ($headers as $key => $value) {
            $response->headers->set($key, $value);
        }

        return $response;
    }
}
