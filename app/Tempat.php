<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tempat extends Model
{
    protected $table = "tempats";
    protected $fillable = ["nama_tempat", "latitude", "longtitude", "deskripsi"];
}
