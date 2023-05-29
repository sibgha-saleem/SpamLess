<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('home');
});

Auth::routes();

Route::group(['middleware' => ['auth', 'verified', 'checkban']], function () {
    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

    Route::resource('tests', App\Http\Controllers\TestController::class);
    Route::resource('roles', App\Http\Controllers\RoleController::class)->except('show');
    Route::resource('permissions', App\Http\Controllers\PermissionController::class)->except(['show', 'destroy', 'update']);
    Route::resource('prodoucts', App\Http\Controllers\ProdouctController::class);
    Route::resource('categories', App\Http\Controllers\CategoryController::class);
    Route::get('reviews/spam', [App\Http\Controllers\ReviewController::class, 'spam'])->name('spam');
    Route::resource('reviews', App\Http\Controllers\ReviewController::class);
    Route::resource('users', App\Http\Controllers\UserController::class);
    Route::resource('categorySuggestions', App\Http\Controllers\CategorySuggestionController::class);
    Route::resource('productSuggestions', App\Http\Controllers\ProductSuggestionController::class);
});

