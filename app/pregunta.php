<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pregunta extends Model
{
    public $timestamps = false;
    public function respuestas(){
        
        return $this->hasMany(respuesta::class);
    }
}
