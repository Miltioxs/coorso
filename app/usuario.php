<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class usuario extends Model
{
    public function caminos(){
        return $this->hasMany(camino::class); 
    }

    public function cargo(){
        return $this->belongsTo(cargo::class);
    }

    public function aplicaciones(){ 
        return $this->hasMany(aplication::class);
    }
}
