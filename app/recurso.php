<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class recurso extends Model
{
    public function clase(){
        return $this->belongsTo(clase::class);
    }
}
