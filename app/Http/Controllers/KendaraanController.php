<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kendaraan;

class KendaraanController extends Controller {

    public function index() {
        $data = Kendaraan::where("blocked_kendaraan", "no")->get();
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $data));
    }

    public function show(Kendaraan $kendaraan) {
        $data = Kendaraan::where("id_pengguna", $kendaraan->id_pengguna)->where("blocked_kendaraan", "no")->get();
        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $data));
    }

    public function store(Request $request) {
        $kendaraan = Kendaraan::create($request->all());

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $kendaraan));
    }

    public function update(Request $request, Kendaraan $kendaraan) {
        $kendaraan->update($request->all());

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $kendaraan));
    }

    public function delete(Kendaraan $kendaraan) {
        $ubah = Kendaraan::find($kendaraan->id);
        $ubah->blocked_kendaraan = "yes";
        $ubah->save();

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $ubah));
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
