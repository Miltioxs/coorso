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


route::resource('/miscursos' , 'miscursosController');
route::resource('/misaplicaciones' , 'aplicacionesController');
route::resource('/requerimientos' , 'requerimientosController');
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

route::resource('/applOfertas', 'applOfertasController');

route::get('/buscador', function(){
    return view('buscar');
});

route::get('/vistagrl', function(){
    return view('vistagrl');
});