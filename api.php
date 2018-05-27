<?php

use Illuminate\Http\Request;

Route::get("tempat", "TempatController@index");
Route::get("tempat/{tempat}", "TempatController@show");
Route::post("tempat", "TempatController@store");
Route::put("tempat/{tempat}", "TempatController@update");
Route::delete("tempat/{tempat}", "TempatController@delete");

Route::group(['middleware' => ['token']], function() {
    Route::get("pengguna", "PenggunaController@index");
    Route::get("pengguna/{pengguna}", "PenggunaController@show");
    Route::post("pengguna", "PenggunaController@store");
    Route::put("pengguna/{pengguna}", "PenggunaController@update");
    Route::delete("pengguna/{pengguna}", "PenggunaController@delete");

    Route::get("kendaraan", "KendaraanController@index");
    Route::get("kendaraan/{kendaraan}", "KendaraanController@show");
    Route::post("kendaraan", "KendaraanController@store");
    Route::put("kendaraan/{kendaraan}", "KendaraanController@update");
    Route::delete("kendaraan/{kendaraan}", "KendaraanController@delete");
});
Route::post("logout", "AuthController@logout");

Route::post("login", "AuthController@login");
