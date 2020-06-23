<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class refrensiBank extends Model
{
    protected $table = 'refrensibank';
    protected $primarykey = 'id';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'namabank', 'nomorrefrensi', 
    ];
}
