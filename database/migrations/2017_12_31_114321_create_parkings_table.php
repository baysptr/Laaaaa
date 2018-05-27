<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateParkingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parkings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer("id_pengguna");
            $table->integer("id_kendaraan");
            $table->integer("id_tempat");
            $table->text("barcode")->nullable();
            $table->dateTime("waktu_masuk")->nullable();
            $table->enum("status", ['OTW', 'IN', 'OUT']);
            $table->dateTime("waktu_keluar")->nullable();
            $table->string("estimasi_waktu")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('parkings');
    }
}
