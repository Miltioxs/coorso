<?php

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

Route::get('/', function () {
    return view('welcome');
});

route::resource('/mis_cursos' , 'miscursosController');
route::resource('/misaplicaciones' , 'aplicacionesController');
route::resource('/requerimientos' , 'requerimientosController');
route::resource('/empresa_', 'empresaController');
route::resource('/cursos', 'cursoController');
route::resource('/clases', 'clasesController');
route::resource('/usuarios', 'usuarioController');