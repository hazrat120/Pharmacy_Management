<?php

use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


/* Route::get('/', function () {
    return view('welcome');
});
 */

Route::get('/', function () {
    return view('welcome');
});

Route::get('/getuser/{name}', [UserController::class, 'getUsername']);
Route::get('/custommer', [UserController::class, 'custommerName']);
Route::get("/role/{name}", [UserController::class, 'role']);
Route::get('name/{Name}', [UserController::class, 'getName']);
Route::get('/user', [UserController::class, 'user']);