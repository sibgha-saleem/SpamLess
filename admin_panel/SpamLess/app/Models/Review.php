<?php

namespace App\Models;
use Illuminate\Support\Facades\Auth;

use Eloquent as Model;



/**
 * Class Review
 * @package App\Models
 * @version May 4, 2023, 10:31 am UTC
 *
 * @property integer $name
 * @property string $text
 * @property string $rating
 * @property integer $status
 */
class Review extends Model
{


    public $table = 'reviews';
    



    public $fillable = [
        'user_id',
        'product_id',
        'text',
        'rating',
        'status'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'user_id' => 'integer',
        'product_id' => 'integer',
        'text' => 'string',
        'rating' => 'string',
        'status' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        
    ];

    protected static function boot()
    {
        parent::boot(); 
        static::creating(function ($model) {
            if (!$model->user_id) {
                    $model->user_id = Auth::user()->id;
            }
        });
    }
    
    public function createdBy()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');

    }

    public function product()
    {
        return $this->hasOne('App\Models\Prodouct', 'id', 'product_id');

    }
}
