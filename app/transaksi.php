<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class transaksi extends Model
{
    protected $table = 'transaksi';
    public $primaryKey = 'id';

        public function pengguna()
    {
    	return $this->belongsTo('App\pembeli', 'id_pengguna', 'id');
    }

        public function statustransaksi()
    {
    	return $this->belongsTo('App\statustransaksi', 'status_transaksi', 'id');
    }

}
