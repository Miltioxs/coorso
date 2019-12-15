<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class rango extends Model
{
    public function curso(){
        return $this->hasMany(curso::class);
    }
}
