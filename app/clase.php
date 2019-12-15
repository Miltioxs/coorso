<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class clase extends Model
{
    public function cursos(){
        return $this->hasMany(curso::class);
    }

    public function recursos(){
        return $this->hasMany(recurso::class);
    }
}
