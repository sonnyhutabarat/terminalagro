<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class statusTransaksi extends Model
{

    protected $table = 'statustransaksi';
    protected $primarykey = 'id';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'status_transaksi',
    ];
}
