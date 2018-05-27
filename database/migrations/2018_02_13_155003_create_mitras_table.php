<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMitrasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mitras', function (Blueprint $table) {
            $table->increments('id');
            $table->string("nama_lengkap");
            $table->text("foto")->nullable();
            $table->string("username");
            $table->string("password");
            $table->string("id_wilayah");
            $table->string("no_telp", 15);
            $table->string("email");
            $table->enum("blocked_user", ['yes', 'no']);
            $table->enum("hak_akses", ['admin', 'operator']);
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
        Schema::dropIfExists('mitras');
    }
}
