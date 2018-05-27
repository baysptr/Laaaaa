<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $this->call(TempatTableSeeder::class);
         $this->call(PenggunaTableSeeder::class);
         $this->call(KendaraanTableSeeder::class);
         $this->call(MitraTableSeeder::class);
    }
}
