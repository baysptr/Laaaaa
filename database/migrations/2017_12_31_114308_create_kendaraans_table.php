<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKendaraansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kendaraans', function (Blueprint $table) {
            $table->increments('id');
            $table->integer("id_pengguna");
            $table->string("nopol");
            $table->string("jenis_kendaraan");
            $table->string("merk_kendaraan");
            $table->text("foto_depan");
            $table->text("foto_belakang");
            $table->enum("disabled_key", ['yes', 'no']);
            $table->enum("blocked_kendaraan", ['yes', 'no']);
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
        Schema::dropIfExists('kendaraans');
    }
}
