<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class oferta extends Model
{
    public function aplications(){
        return $this->hasMany(aplication::class);
    }

    public function empresa(){
        return $this->belongsTo(empresa::class);
    }

    public function requerimientos(){
        return $this->hasMany(requerimiento::class); 
    }
}
