<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class requerimientosController extends Controller
{
    public function index()
    {
        $requeme=DB::table('requerimientos')
                ->where('requerimientos.id_oferta','2')
                /*->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')*/
                ->join('ofertas', 'ofertas.id_oferta', '=', 'requerimientos.id_oferta')
                ->join('cursos', 'cursos.id_curso', '=', 'requerimientos.id_curso')
                ->join('empresas', 'empresas.id_empresa', '=', 'ofertas.id_empresa')
                ->select('cursos.nombreC')
                ->get();

        $empresa=DB::table('empresas')    
                ->where('empresas.id_empresa','1')
                /*->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')*/
                ->join('municipios', 'municipios.id_municipio', '=', 'empresas.id_municipio')
                ->select('empresas.nombreE', 'empresas.correoE', 'empresas.telefonoE', 'municipios.municipio', 'empresas.direccionE')
                ->first();
        $oferta=DB::table('ofertas')    
                ->where('ofertas.id_oferta','2')
                ->select('ofertas.puestoO', 'ofertas.descripcionP', 'ofertas.viatico')
                ->first();
                return view('miscursos.requerimientos',[
                    'reque'=>$requeme,
                    'empre'=>$empresa,
                    'ofert'=>$oferta
                ]);		
    }
}
