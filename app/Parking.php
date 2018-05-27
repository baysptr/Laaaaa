<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Parking extends Model
{
    protected $table = "parkings";
    protected $fillable = ['id_pengguna', 'id_kendaraan', 'id_tempat', 'barcode', 'waktu_masuk', 'status', 'waktu_keluar', 'estimasi_waktu'];
}
