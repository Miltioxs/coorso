<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class departamento extends Model
{
    public function municipios(){
        return $this->hasMany(municipio::class);
    }
}
