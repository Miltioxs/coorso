<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\respuesta;
use Illuminate\Support\Facades\DB;

class miscursosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cursos=DB::table('caminos')
                ->where('caminos.id_usuario','2')
                
                /*->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')*/
                ->join('cursos', 'cursos.id_curso', '=', 'caminos.id_curso')
                ->join('categorias', 'categorias.id_categoria', '=', 'cursos.id_categoria')
                ->join('usuarios', 'usuarios.id_usuario', '=', 'caminos.id_usuario')
                ->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')
                ->select('cursos.nombreC','rangos.rango', 'categorias.categoria', 'cursos.descripcionC', 'caminos.estadoC','cursos.imgCurso', 'cursos.maestro','usuarios.nickU', 'caminos.notaC')
                ->get();
                return view('miscursos',[
                    'cursos'=>$cursos
                ]);		
    }

    /* $cursos=DB::table('cursos')->
                ->join('categorias', 'categorias.id_categoria', '=', 'cursos.id_categoria')
                ->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')
                ->select('categorias.categoria', 'rangos.rango', 'cursos.nombreC')
                ->get();
                return view('miscursos.miscursos',[
                    'cursos'=>$cursos
                ]);*/

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
