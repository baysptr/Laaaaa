<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pengguna;

class PenggunaController extends Controller {

    public function index() {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => Pengguna::all()), 200);
    }

    public function show(Pengguna $pengguna) {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $pengguna));
    }

    public function store(Request $request) {
        $pengguna = Pengguna::create($request->all());
        $status = $this->retrovitResponse("success", "success", 201, false);

        return response()->json(array("status" => $status, "data" => $pengguna), 201);
    }

    public function update(Request $request, Pengguna $pengguna) {
        $pengguna->update($request->all());
        $status = $this->retrovitResponse("success", "success", 200, false);

        return response()->json(array("status" => $status, "data" => $pengguna), 200);
    }

    public function delete(Pengguna $pengguna) {
        $pengguna->delete();
        $status = $this->retrovitResponse("success", "success", 200, false);

        return response()->json(array("status" => $status), 204);
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
