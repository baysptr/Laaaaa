<?php

use Illuminate\Database\Seeder;
use App\Pengguna;

class PenggunaTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Pengguna::truncate();
        $faker = \Faker\Factory::create();

        $password = "12345678";

        for ($i = 1; $i <= 10; $i++) {
            Pengguna::create([
                "nama_lengkap" => $faker->name,
                "email" => $faker->email,
                "username" => $faker->userName,
                "password" => $password,
                "verifikasi_pengguna" => "no",
                "disabled_key" => "no"
            ]);
        }
    }

}
