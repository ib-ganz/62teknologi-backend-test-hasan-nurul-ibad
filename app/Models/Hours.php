<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Hours extends Model
{
    protected $table = 'hours';

    protected $fillable = [
        'business_id',
        'is_overnight',
        'start',
        'end',
        'day',
    ];
}
