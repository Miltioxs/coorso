<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class curso extends Model
{
    public function categorias(){
        return $this->belongsTo(categoria::class);
    }

    public function rangos(){
        return $this->belongsTo(rango::class);
    }
}
