<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kendaraan extends Model
{
    protected $table = "kendaraans";
    protected $fillable = ['id_pengguna', 'nopol', 'jenis_kendaraan', 'merk_kendaraan', 'foto_depan', 'foto_belakang', 'disabled_key'];
}
