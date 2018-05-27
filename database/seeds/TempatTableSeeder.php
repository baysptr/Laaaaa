<?php

use Illuminate\Database\Seeder;
use App\Tempat;

class TempatTableSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run() {
        Tempat::truncate();
        $faker = \Faker\Factory::create();

        for ($i = 0; $i < 50; $i++) {
            Tempat::create([
                'nama_tempat' => $faker->name,
                'latitude' => $faker->latitude,
                'longtitude' => $faker->longitude,
                'deskripsi' => $faker->city
            ]);
        }
    }

}
