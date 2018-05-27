<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePenggunasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penggunas', function (Blueprint $table) {
            $table->increments('id');
            $table->string("nama_lengkap");
            $table->string("alamat")->nullable();
            $table->string("no_telp")->nullable();
            $table->string("email");
            $table->string("foto", 255)->nullable();
            $table->string("username");
            $table->string("password", 255);
            $table->text("token")->nullable();
            $table->enum("verifikasi_pengguna", ["yes", "no"]);
            $table->enum("disabled_key", ["yes", "no"]);
            $table->softDeletes();
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
        Schema::dropIfExists('penggunas');
    }
}
