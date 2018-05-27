<?php

use Illuminate\Http\Request;

header('Access-Control-Allow-Origin: http://localhost');

Route::get("tempat", "TempatController@index");
Route::get("tempat/{tempat}", "TempatController@show");
Route::post("tempat", "TempatController@store");
Route::post("tempat/{tempat}", "TempatController@delete");
Route::put("tempat/{tempat}", "TempatController@update");
Route::delete("tempat/{tempat}", "TempatController@delete");

Route::group(['middleware' => ['token']], function() {
    Route::get("pengguna", "PenggunaController@index");
    Route::get("pengguna/{pengguna}", "PenggunaController@show");
    Route::post("pengguna/{pengguna}", "PenggunaController@update");
    Route::delete("pengguna/{pengguna}", "PenggunaController@delete");

    Route::get("kendaraan", "KendaraanController@index");
    Route::get("kendaraan/{kendaraan}", "KendaraanController@show");
    Route::post("kendaraan", "KendaraanController@store");
    Route::post("kendaraan/{kendaraan}", "KendaraanController@update");
    Route::delete("kendaraan/{kendaraan}", "KendaraanController@delete");

    Route::post("pesan", "ParkingController@pesan");
    Route::get("aktifitas/{id_pengguna}", "ParkingController@aktifitas");
    Route::post("keluar", "ParkingController@keluar");
    Route::post("history", "ParkingController@history");
    Route::post("history/historywhere", "ParkingController@historyFirst");
});
Route::post("logout", "AuthController@logout");
Route::post("registrasi", "PenggunaController@store");
Route::post("login", "AuthController@login");

Route::post("in_device", "ParkingController@communicateParkir");
Route::post("parkir", "ParkingController@parkir");

Route::get("mitra", "MitraController@index");
Route::get("mitra/{mitra}", "MitraController@show");
Route::post("mitra", "MitraController@store");
Route::put("mitra/{mitra}", "MitraController@update");
Route::delete("mitra/{mitra}", "MitraController@delete");
