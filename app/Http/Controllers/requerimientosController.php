<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class requerimientosController extends Controller
{
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
                return view('miscursos.requerimientos',[
                    'cursos'=>$cursos
                ]);		
    }
}
