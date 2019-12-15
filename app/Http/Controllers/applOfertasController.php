<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class applOfertasController extends Controller
{
    public function index(){
        $applOferta=DB::table('aplicacions')
                ->join('ofertas','ofertas.id_oferta','aplicacions.id_oferta')
                ->join('usuarios','usuarios.id_usuario','aplicacions.id_usuario')
                ->where('aplicacions.id_usuario','2')
                
                ->select('usuarios.correoU','usuarios.nombreU','usuarios.imgU','usuarios.nickU', 'ofertas.puestoO', 'aplicacions.estadoO')
                ->get();
                return view('applOfertas',[
                    'applOfertas'=>$applOferta
                ]);	
            
    }

}
