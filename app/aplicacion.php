<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class aplicacion extends Model
{
    public function usuario(){
        return $this->belongsTo(usuario::class);
    }

    public function oferta(){
        return $this->belongsTo(oferta::class); 
    }
}
