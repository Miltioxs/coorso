<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class usuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aplication=DB::table('usuarios')
                ->join('aplicacions','aplicacions.id_usuario','usuarios.id_usuarios')
                ->join('ofertas','ofertas.id_oferta','aplicacions.id_oferta')
                ->where('ofertas.id_usuario','2')
                
                /*->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')*/
                ->join('empresas', 'empresas.id_empresa', '=', 'ofertas.id_empresa')
                /*->join('categorias', 'categorias.id_categoria', '=', 'cursos.id_categoria')
                ->join('rangos', 'rangos.id_rango', '=', 'cursos.id_rango')*/
                ->select('empresas.nombreE','ofertas.descripcionP', 'usuarios.nombreU')
                ->get();
                return view('miscursos.usuario',[
                    'aplication'=>$aplication
                ]);	
    }

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
