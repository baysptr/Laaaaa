<?php

use Illuminate\Database\Seeder;
use App\Mitra;
class MitraTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Mitra::truncate();
        $faker = \Faker\Factory::create();

        for ($i = 1; $i <= 10; $i++) {
            Mitra::create([
                "nama_lengkap" => $faker->name,
                "foto" => "",
                "username" => $faker->userName,
                "password" => "12345678",
                "id_wilayah" => $i,
                "no_telp" => $faker->century,
                "email" => $faker->email,
                "blocked_user" => "no",
                "hak_akses" => "operator"
            ]);
        }
    }

}
