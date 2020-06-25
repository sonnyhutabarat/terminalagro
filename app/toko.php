<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class toko extends Model
{
    protected $table = 'toko';
    public $primaryKey = 'id';

        public function toko()
    {
    	return $this->belongsTo('App\statustoko', 'status_toko', 'id');
    }

    public function pengguna()
    {
        return $this->belongsTo('App\pembeli','id_pengguna','id');
    }
}
