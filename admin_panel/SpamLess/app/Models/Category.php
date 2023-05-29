<?php

namespace App\Models;
use Illuminate\Support\Facades\Auth;
use Eloquent as Model;



/**
 * Class Category
 * @package App\Models
 * @version May 4, 2023, 8:01 am UTC
 *
 * @property string $name
 * @property integer $created_by
 */
class Category extends Model
{


    public $table = 'categories';
    



    public $fillable = [
        'name',
        'created_by'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'created_by' => 'integer'
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


    
    public function createdBy()
    {
        return $this->hasOne('App\Models\User', 'id', 'created_by');

    }
    public function products()
    {
        return $this->hasMany('App\Models\Prodouct', 'categor_id', 'id');

    }
    
}
