<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class respuesta extends Model
{
    public $timestamps = false;
    public function pregunta(){
        
        return $this->belongsTo(pregunta::class);
    }
}
