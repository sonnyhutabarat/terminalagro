<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class statusToko extends Model
{
    protected $table = 'statustoko';
    protected $primarykey = 'id';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nama',
    ];
}
