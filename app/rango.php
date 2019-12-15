<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class rango extends Model
{
    public function cursos(){
        return $this->hasMany(curso::class);
    }
}
