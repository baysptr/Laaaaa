<?php

namespace App\Http\Controllers;

date_default_timezone_set('Asia/Jakarta');

use App\Kendaraan;
use App\Parking;
use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class ParkingController extends Controller {

    public function aktifitas(Request $req) {
        $data = Parking::where('id_pengguna', $req->id_pengguna)
                        ->where('status', 'OTW')->get();

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $data));
    }

    public function pesan(Request $req) {
        $data = [
            "id_pengguna" => $req->post('id_pengguna'),
            "id_kendaraan" => $req->post('id_kendaraan'),
            "id_tempat" => $req->post('id_tempat'),
            "status" => 'OTW',
        ];
        Parking::create($data);

        $data_response = Parking::where('id_pengguna', $req->post('id_pengguna'))
                        ->where('id_kendaraan', $req->post('id_kendaraan'))
                        ->where('id_tempat', $req->post('id_tempat'))->get();

        $status = $this->retrovitResponse("success", "success", 201, false);
        return response()->json(array("status" => $status, "data" => $data_response));
    }

    public function parkir(Request $req) {
        $parking = Parking::find($req->post('id'));

        //id_parking, id_pengguna, id_kendaraan, id_tempat
        $isi = $parking->id . ',' . $parking->id_pengguna . ',' . $parking->id_kendaraan . ',' . $parking->id_tempat;
        $barcode = base64_encode(QrCode::format('png')->size(250)->generate($isi));

        $parking->barcode = $barcode;
        $parking->waktu_masuk = date('Y-m-d H:i:s');
        $parking->status = 'IN';
        $parking->save();

        $status = $this->retrovitResponse("success", "success", 201, false);
        return response()->json(array("status" => $status, "data" => $parking));
    }

    public function communicateParkir(Request $req){
        $kendaraan = Kendaraan::where("nopol", $req->post("nopol"))->get();
        if($kendaraan->count() != 1){
            $status = 0;
        }else{
            $kendaraan = $kendaraan->first();
            $dataParkir = Parking::where('id_pengguna', $kendaraan->id_pengguna)
                            ->where('id_kendaraan', $kendaraan->id)
                            ->where('status', "OTW")->get()->first();
            $status = $dataParkir->id;
        }

        return response()->json($status);
//        $checkData = [
//            "id_kendaraan" => $kendaraan->first()->id,
//            "id_pengguna" => $kendaraan->first()->id_pengguna,
//            "status" => "OTW"
//        ];
//
//        $dataParkir = Parking::where('id_pengguna', $kendaraan->first()->id_pengguna)
//            ->where('id_kendaraan', $kendaraan->first()->id)
//            ->where('status', "OTW")->get();
//
//        if($dataParkir->count() == 1){
//            $dataOutput = [
//              "id_parkir" => $dataParkir->first()->id
//            ];
//        }else{
//            $dataOutput = [
//              "message" => "No availalble data"
//            ];
//        }

        /*
            where clause nopol di table kendaraan
            join table parkir where id_kendaraan, id_pengguna dan status = "OTW"
        */
    }

    public function keluar(Request $req) {
        $parking = Parking::find($req->post('id'));
        $parking->barcode = "";
        $parking->status = "OUT";
        $parking->waktu_keluar = date("Y-m-d H:i:s");
        $parking->estimasi_waktu = (strtotime($parking->waktu_keluar) - strtotime($parking->waktu_masuk)) % 60;
        $parking->save();

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $parking));
    }

    public function history(Request $req) {
        $parking = Parking::where('status', 'OUT')
                ->where("id_pengguna", $req->post('id_pengguna'))
                ->orderBy("waktu_keluar", 'desc')
                ->get();

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $parking));
    }

    public function historyFirst(Request $req) {
        $parking = Parking::where('status', 'OUT')
                ->where("id_pengguna", $req->post('id_pengguna'))
                ->where("id", $req->post("id_parkir"))
                ->orderBy("waktu_keluar", 'desc')
                ->get();

        $status = $this->retrovitResponse("success", "success", 200, false);
        return response()->json(array("status" => $status, "data" => $parking));
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
