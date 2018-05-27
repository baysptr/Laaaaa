<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mitra;

class MitraController extends Controller {

    public function index() {
        return Mitra::where("blocked_user", "no")->get();
    }

    public function show(Mitra $mitra) {
        $data = Mitra::where("id", $mitra->id)->where("blocked_user", "no")->get();
        return response()->json($data, 200);
    }

    public function store(Request $request) {
        $mitra = Mitra::create($request->all());

        return response()->json($mitra, 201);
    }

    public function update(Request $request, Mitra $mitra) {
        $mitra->update($request->all());

        return response()->json($mitra, 200);
    }

    public function delete(Mitra $mitra) {
        $ubah = Mitra::find($mitra->id);
        $ubah->blocked_user = "yes";
        $ubah->save();

        return response()->json($ubah, 200);
    }

}
