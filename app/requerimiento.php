<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class requerimiento extends Model
{
    public function curso(){
        return $this->belongsTo(curso::class);
    }

    public function oferta(){
        return $this->belongsTo(oferta::class);
    }
}
