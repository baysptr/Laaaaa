<?php

use Illuminate\Database\Seeder;
use App\Kendaraan;

class KendaraanTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Kendaraan::truncate();
        $faker = \Faker\Factory::create();

        for ($i = 1; $i <= 10; $i++) {
            Kendaraan::create([
                "id_pengguna" => $i,
                "nopol" => $faker->postcode,
                "jenis_kendaraan" => $faker->languageCode,
                "merk_kendaraan" => $faker->companySuffix,
                "foto_depan" => $faker->mimeType,
                "foto_belakang" => $faker->mimeType,
                "disabled_key" => "no",
                "blocked_kendaraan" => "no",
            ]);
        }
    }

}
