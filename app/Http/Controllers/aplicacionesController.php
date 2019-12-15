<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class aplicacionesController extends Controller
{
    public function index(){
        $aplicacion=DB::table('aplicacions')
                ->join('ofertas','ofertas.id_oferta','aplicacions.id_oferta')
                ->join('usuarios','usuarios.id_usuario','aplicacions.id_usuario')
                ->where('aplicacions.id_usuario','2')
                ->join('empresas', 'empresas.id_empresa', '=', 'ofertas.id_empresa')
                ->select('usuarios.nickU', 'empresas.nombreE', 'ofertas.puestoO','ofertas.descripcionP', 'aplicacions.estadoO')
                ->get();
                return view('miscursos.misaplicaciones',[
                    'aplicacion'=>$aplicacion
                ]);	
    }
    
}
