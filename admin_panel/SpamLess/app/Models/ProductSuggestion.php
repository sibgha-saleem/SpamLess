<?php

namespace App\Models;

use Eloquent as Model;



/**
 * Class ProductSuggestion
 * @package App\Models
 * @version May 7, 2023, 1:41 pm UTC
 *
 * @property string $name
 * @property string $description
 * @property string $reason
 * @property string $category_name
 */
class ProductSuggestion extends Model
{


    public $table = 'product_suggestions';
    



    public $fillable = [
        'name',
        'description',
        'reason',
        'category_name'
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
        'category_name' => 'string'
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
        'category_name' => 'required'
    ];

    
}
