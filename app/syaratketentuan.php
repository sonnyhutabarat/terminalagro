<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class syaratKetentuan extends Model
{
    protected $table = 'syaratketentuan';
    protected $primarykey = 'id';


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'syaratketentuan',  
    ];
}
