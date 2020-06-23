<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::group(['middleware'=>'auth'], function(){
Route::get('/','AdminController@dashboard');

Route::get('/keluar', 'AdminController@logout');

Route::get('/kategori','kategoriController@index');
Route::resource('kategori','kategoriController');
Route::get('kategori/{id}/edit/','kategoriController@edit');
Route::get('/kategori/destroy/{id}','kategoriController@destroy');

Route::get('/statustransaksi','statustransaksiController@index');
Route::resource('statustransaksi','statustransaksiController');
Route::get('statustransaksi/{id}/edit/','statustransaksiController@edit');
Route::get('/statustransaksi/destroy/{id}','statustransaksiController@destroy');

Route::get('/statuspengiriman','statuspengirimanController@index');
Route::resource('statuspengiriman','statuspengirimanController');
Route::get('statuspengiriman/{id}/edit/','statuspengirimanController@edit');
Route::get('/statuspengiriman/destroy/{id}','statuspengirimanController@destroy');

Route::get('/statustoko','statustokoController@index');
Route::resource('statustoko','statustokoController');
Route::get('statustoko/{id}/edit/','statustokoController@edit');
Route::get('/statustoko/destroy/{id}','statustokoController@destroy');

Route::get('/refrensibank','refrensibankController@index');
Route::resource('refrensibank','refrensibankController');
Route::get('refrensibank/{id}/edit/','refrensibankController@edit');
Route::get('/refrensibank/destroy/{id}','refrensibankController@destroy');

Route::get('/syaratketentuan','syaratketentuanController@index');
Route::resource('syaratketentuan','syaratketentuanController');
Route::get('syaratketentuan/{id}/edit/','syaratketentuanController@edit');

Route::get('/role','roleController@index');
Route::resource('role','roleController');
Route::get('role/{id}/edit/','roleController@edit');
Route::get('/role/destroy/{id}','roleController@destroy');

Route::get('/toko', 'tokoController@index');
Route::get('/toko/show/{id}', 'tokoController@show');
Route::get('/toko/indexproduk/{id}', 'tokoController@indexproduk');

Route::get('/konfirmasi', 'konfirmasiController@index');
Route::get('/konfirmasi/terima/{id}', 'konfirmasiController@terima');
Route::get('/konfirmasi/tolak/{id}', 'konfirmasiController@tolak');

Route::get('/transaksi', 'transaksiController@index');
Route::get('/transaksi/terima/{id}', 'transaksiController@terima');
Route::get('/transaksi/tolak/{id}', 'transaksiController@tolak');

Route::get('/produk', 'produkController@index');
Route::get('/produk/show/{id}', 'produkController@show');

Route::get('/pembeli', 'pembeliController@index');
Route::get('/pembeli/show/{id}', 'pembeliController@show');

Route::get('/user', 'userController@index');
Route::resource('user','userController');
Route::get('user/{id}/edit/','userController@edit');

Route::get('/userchart','userchartController@index');

Route::get('/produkchart','produkchartController@index');

Route::get('/penjualanchart','penjualanchartController@index');
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
