<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table = 'category';

    protected $fillable = [
        'alias',
        'title',
    ];

    protected $hidden = [
        'id',
        'created_at',
        'updated_at',
        'laravel_through_key'
    ];
}
