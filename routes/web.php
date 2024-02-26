<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\SatuanController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\TransaksiController;
use App\Http\Controllers\TransaksiSementaraController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Route::get('/daftar', [AuthController::class, 'index']);
Route::post('/user/daftar', [AuthController::class, 'store'])->name('store');
Route::post('/postlogin', [AuthController::class, 'postlogin']);
Route::get('/logout', [AuthController::class, 'logout']);
Route::get('/login', [AuthController::class, 'login'])->name('login');

Route::group(['middleware' => ['auth', 'ceklevel:Admin']], function(){
    Route::get('/dashboard', [DashboardController::class, 'index']);

    Route::get('/kategori', [KategoriController::class, 'index']);
    Route::post('/kategori/store', [KategoriController::class, 'store']);
    Route::get('/kategori/{id}/edit', [KategoriController::class, 'edit']);
    Route::put('/kategori/{id}', [KategoriController::class, 'update']);
    Route::get('/kategori/{id}', [KategoriController::class, 'destroy']);
    
    Route::get('/satuan', [SatuanController::class, 'index']);
    Route::post('/satuan/store', [SatuanController::class, 'store']);
    Route::get('/satuan/{id}/edit', [SatuanController::class, 'edit']);
    Route::put('/satuan/{id}', [SatuanController::class, 'update']);
    Route::get('/satuan/{id}', [SatuanController::class, 'destroy']);
    
    Route::get('/barang', [BarangController::class, 'index']);
    Route::post('/barang/store', [BarangController::class, 'store']);
    Route::get('/barang/{id}/edit', [BarangController::class, 'edit']);
    Route::get('/barang/{id}/show', [BarangController::class, 'show']);
    Route::put('/barang/{id}', [BarangController::class, 'update']);
    Route::get('/barang/{id}', [BarangController::class, 'destroy']);
    
    Route::get('/laporan', [TransaksiController::class, 'index']);
    Route::get('/laporan/{kodeTransaksi}/print', [TransaksiController::class, 'print']);
    Route::get('/laporan/cari', [TransaksiController::class, 'cari']);
    Route::get('/laporan/{kodeTransaksi}', [TransaksiController::class, 'show']);
    Route::get('/laporan/{dari}/{sampai}/print', [TransaksiController::class, 'printTanggal']);
    
    Route::get('/user', [UserController::class, 'index']);
    Route::post('/user/store', [UserController::class, 'store']);
    Route::get('/user/{id}/edit', [UserController::class, 'edit']);
    Route::put('/user/{id}', [UserController::class, 'update']);
    Route::get('/user/{id}', [UserController::class, 'destroy']);
});

Route::group(['middleware' => ['auth', 'ceklevel:Admin,Kasir']], function(){
    Route::get('/penjualan', [TransaksiSementaraController::class, 'index']);
    Route::post('/penjualan/store', [TransaksiSementaraController::class, 'store']);
    Route::post('/penjualan/bayar/{kodeTransaksi}', [TransaksiSementaraController::class, 'bayar']);
    Route::get('/penjualan/{id}', [TransaksiSementaraController::class, 'destroy']);
    Route::get('/penjualan/hapus/semua', [TransaksiSementaraController::class, 'hapusSemua']);
    
    Route::get('/laporan', [TransaksiController::class, 'index']);
    Route::get('/laporan/{kodeTransaksi}/print', [TransaksiController::class, 'print']);
    Route::get('/laporan/{kodeTransaksi}', [TransaksiController::class, 'show']);
});