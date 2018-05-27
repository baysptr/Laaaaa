<?php

namespace App\Http\Middleware;

use Closure;

class CheckToken {

    public function handle($request, Closure $next) {
        if ($request->_token == "") {
            return response()->json(array("message" => "Sorry, problem in authentication", "code" => 503), 503);
        }
        return $next($request);
    }

}
