<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\VentasController;
use App\Http\Controllers\EmailController;

use Illuminate\Http\Request;


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

// routes/web.php
// Rutas de la API
Route::prefix('api')->group(function () {
    Route::get('/iniciar-sesion', [UsuarioController::class, 'loginUsuario'])->name('loginUsuario');
    Route::get('/mis-datos', [UsuarioController::class, 'misDatos'])->name('misDatos');
    Route::get('/verificarLogin', [UsuarioController::class, 'verificarLogin'])->name('verificarLogin');
    Route::post('/editar-usuario', [UsuarioController::class, 'editarUsuario'])->name('editarUsuario');
    Route::post('/cambiar-password', [UsuarioController::class, 'cambiarPassword'])->name('cambiarPassword');
    Route::get('/consultar-usuarios', [UsuarioController::class, 'consultarUsuarios'])->name('consultarUsuarios');
    Route::post('/registrar-usuario', [UsuarioController::class, 'registrarUsuario'])->name('registrarUsuario');
    Route::post('/editar-usuario-admin', [UsuarioController::class, 'editarUsuarioAdmin'])->name('editarUsuarioAdmin');
    Route::get('/cambiar-estado-usuario', [UsuarioController::class, 'cambiarEstadoUsuario'])->name('cambiarEstadoUsuario');
    Route::get('/cerrar-sesion', [UsuarioController::class, 'cerrarSesion'])->name('cerrarSesion');

    Route::post('/guardar-venta', [VentasController::class, 'guardarVenta'])->name('guardarVenta');
    Route::get('/ver-clientes', [VentasController::class, 'consultarClientes'])->name('consultarClientes');
    Route::get('/ver-ventas', [VentasController::class, 'consultarVentas'])->name('consultarVentas');
    Route::get('/datos-dashboard-admin', [VentasController::class, 'datosDashboardAdmin'])->name('datosDashboardAdmin');

});

Route::get('/', function () {
    return view('vue');
});

Route::get('/{any}', function () {
    return view('principal');
})->where('any', '.*');