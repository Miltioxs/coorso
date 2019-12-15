<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class empresa extends Model
{
    public function ofertas(){
        return $this->hasMany(oferta::class);
    }

    public function municipio(){
        return $this->belongsTo(municipio::class);
    }
}
