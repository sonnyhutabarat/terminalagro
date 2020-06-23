<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class konfirmasi extends Model
{
    protected $table = 'toko';
    public $primaryKey = 'id';

        public function toko()
    {
    	return $this->belongsTo('App\statustoko', 'status_toko', 'id');
    }
}
