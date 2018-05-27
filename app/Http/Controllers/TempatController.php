<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tempat;

class TempatController extends Controller {

    public function index() {
        $data = Tempat::all();
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $data), 200);
    }

    public function show(Tempat $tempat) {
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $tempat), 200);
    }

    public function store(Request $request) {
        $tempat = Tempat::create($request->all());
        $status = $this->retrovitResponse("success", "success", 201, false);

        return response()->json(array("status" => $status, "data" => $tempat), 201);
    }

    public function update(Request $request, Tempat $tempat) {
        $tempat->update($request->all());

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $tempat));
    }

    public function delete(Tempat $tempat) {
        $tempat->delete();

        $status = $this->retrovitResponse("success", "success", 204, false);
        return response()->json(array("status" => $status, "data" => $tempat));
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
