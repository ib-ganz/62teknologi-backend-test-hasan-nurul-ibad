<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Business extends Model
{
    use SoftDeletes;

    protected $table = 'business';

    public $incrementing = false;

    protected $keyType = 'string';

    protected $fillable = [
        'id',
        'alias',
        'name',
        'image_url',
        'is_claimed',
        'is_closed',
        'url',
        'review_count',
        'rating',
        'latitude',
        'longitude',
        'price',
        'phone',
        'display_phone',
        'distance',
        'photos',
    ];

    protected $appends = [
        'coordinates'
    ];

    protected $hidden = [
        'latitude',
        'longitude',
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function getCoordinatesAttribute()
    {
        return [
            'latitude' => $this->latitude,
            'longitude' => $this->longitude,
        ];
    }

    public function getPhotosAttribute($value)
    {
        return json_decode($value ?: '[]');
    }

    public function location()
    {
        return $this->hasOne(Location::class, 'business_id', 'id');
    }

    public function categories()
    {
        return $this->hasManyThrough(
            Category::class,
            BusinessCategory::class,
            'business_id',
            'id',
            'id',
            'category_id'
        );
    }

    public function transactions()
    {
        return $this->hasManyThrough(
            Transaction::class,
            BusinessTransaction::class,
            'business_id',
            'id',
            'id',
            'transaction_id'
        );
    }

    public function hours()
    {
        return $this->hasMany(Hours::class, 'business_id', 'id');
    }
}
