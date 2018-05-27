<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mitra extends Model
{
    protected $table = 'mitras';
    protected $fillable = ['nama_lengkap', 'foto', 'username', 'password', 'id_wilayah', 'no_telp', 'email', 'blocked_user', 'hak_akses'];
}
