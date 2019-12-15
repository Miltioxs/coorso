<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class curso extends Model
{
    public function categoria(){
        return $this->belongsTo(categoria::class);
    }

    public function rango(){
        return $this->belongsTo(rango::class);
    }

    public function requerimientos(){
        return $this-hasMany(requerimiento::class);
    }

    public function camino(){
        return $this->belongsTo(camino::class);
    }

    public function clase(){
        return $this->belongsTo(clase::class);
    }
}
