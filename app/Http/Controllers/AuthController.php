<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pengguna;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller {

    public function login(Request $request) {
        $username = $request->post("username");
        $password = $request->post("password");

        $check = DB::table("penggunas")->where([
                ['username', '=', $username],
                ['password', '=', $password]
        ]);

        if ($check->count() > 0) {
            $token = Hash::make(str_random(50));
            $getId = $check->first();
            $status = $this->retrovitResponse("success", "success", 200, false);
            DB::table("penggunas")
                    ->where("id", $getId->id)
                    ->update(['token' => $token]);
        return response()->json(array("status" => $status, "data" => $check->get()), 200);
        } else {
            $status = $this->retrovitResponse("failed", "failed", 502, true);
            return response()->json(array("status" => $check, "data" => array("username" => $username, "password" => $password)), 502);
        }
    }
    
    public function logout(Request $request){
        $token = $request->post("_token");
        $check = DB::table("penggunas")
                ->where("token", $token);
        if($check->count() > 0){
            $getId = $check->first();
            $status = $this->retrovitResponse("success", "success", 200, false);
            DB::table("penggunas")
                    ->where("id", $getId->id)
                    ->update(['token' => ""]);
            return response()->json(array("status" => $status, "data" => $check->get()), 200);
        }else{
            $status = $this->retrovitResponse("failed", "failed", 502, true);
            return response()->json(array("status" => $status), 502);
        }
    }
    
    public function retrovitResponse($type, $message, $code, $error) {
        $data = array(
            "type" => $type,
            "message" => $message,
            "code" => $code,
            "error" => $error
        );
        return $data;
    }

}
