<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $table = 'location';

    protected $fillable = [
        'business_id',
        'address1',
        'address2',
        'address3',
        'city',
        'zip_code',
        'country',
        'state',
        'display_address',
        'cross_streets'
    ];

    protected $hidden = [
        'id',
        'business_id',
        'created_at',
        'updated_at',
    ];

    public function getDisplayAddressAttribute($value)
    {
        return json_decode($value);
    }

}
