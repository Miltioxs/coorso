<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class municipio extends Model
{
    public function empresas(){ 
        return $this->hasMany(empresa::class); 
    }

    public function departamento(){
        return $this->belongsTo(departamento::class);
    }
}
