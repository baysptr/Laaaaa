<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pengguna extends Model
{
    protected $table = 'penggunas';
    protected $fillable = ["nama_lengkap", "alamat", "no_telp", "email", "foto", "username", "password", "token", "verifikasi_pengguna", "disabled_key"];
    protected $hidden = ['id'];
}
