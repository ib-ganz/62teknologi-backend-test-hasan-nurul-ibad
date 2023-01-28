<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BusinessTransaction extends Model
{
    protected $table = 'business_transaction';

    protected $fillable = [
        'business_id',
        'transaction_id',
    ];
}
