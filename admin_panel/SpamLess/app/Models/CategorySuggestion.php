<?php

namespace App\Models;

use Eloquent as Model;



/**
 * Class CategorySuggestion
 * @package App\Models
 * @version May 7, 2023, 1:40 pm UTC
 *
 * @property integer $name
 * @property integer $description
 * @property integer $reason
 * @property integer $products_name
 */
class CategorySuggestion extends Model
{


    public $table = 'category_suggestions';
    



    public $fillable = [
        'name',
        'description',
        'reason',
        'products_name'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'name' => 'string',
        'description' => 'string',
        'reason' => 'string',
        'products_name' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'name' => 'required',
        'description' => 'required',
        'reason' => 'required',
        'products_name' => 'required'
    ];

    
}
