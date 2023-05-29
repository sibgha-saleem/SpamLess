<?php

namespace App\Models;

use Illuminate\Support\Facades\Auth;

use Eloquent as Model;



/**
 * Class Prodouct
 * @package App\Models
 * @version May 4, 2023, 7:59 am UTC
 *
 * @property string $name
 * @property integer $categor_id
 * @property integer $no_of_reviews
 * @property string $overall_rating
 * @property string $picture
 */
class Prodouct extends Model
{


    public $table = 'prodoucts';
    



    public $fillable = [
        'name',
        'categor_id',
        'no_of_reviews',
        'overall_rating',
        'picture'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'categor_id' => 'integer',
        'no_of_reviews' => 'integer',
        'overall_rating' => 'string',
        'picture' => 'string'
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
            if (!$model->created_by) {
                    $model->created_by = Auth::user()->id;
            }
        });
    }


    public function category()
    {
        return $this->hasOne('App\Models\Category', 'id', 'categor_id');

    }

    public function createdBy()
    {
        return $this->hasOne('App\Models\User', 'id', 'created_by');
    }

    public function allReviews()
    {
        return $this->hasMany('App\Models\Review', 'product_id', 'id');

    }
    
}
