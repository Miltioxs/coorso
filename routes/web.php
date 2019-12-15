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

<<<<<<< HEAD
route::resource('/miscursos' , 'miscursosController');
=======
route::resource('/mis_cursos' , 'miscursosController');
route::resource('/misaplicaciones' , 'aplicacionesController');
route::resource('/requerimientos' , 'requerimientosController');
>>>>>>> 969a8b5e21a336cfb2c0898f13d8717f62ade8a7
route::resource('/empresa_', 'empresaController');
route::resource('/cursos', 'cursoController');
route::resource('/clases', 'clasesController');
route::resource('/usuarios', 'usuarioController');

/*route::get('/cursopage', function(){
    return redirect('/cursos');
});*/

route::get('/cursos', function(){
    return view('courses');
});

