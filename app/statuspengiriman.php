<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class statusPengiriman extends Model
{
    protected $table = 'statuspengiriman';
    protected $primarykey = 'id';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'status_pengiriman',
    ];
}
