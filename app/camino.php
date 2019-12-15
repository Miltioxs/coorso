<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class camino extends Model
{
    public function cursos(){
        return $this->hasMany(curso::class);
    }


    public function usuario(){
        return $this->belongsTo(usuario::class);
    }
}
