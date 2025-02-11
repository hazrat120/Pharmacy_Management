<?php

use App\Http\Controllers\UserController;
use GuzzleHttp\Psr7\Request;
use Illuminate\Support\Facades\Route;

//  php artisan install:api

/* Route::get('/', function () {
    return view('welcome');
});
 */

//  Basic Route
Route::get('/', function () {
    return view('welcome');
});

// Default Route
// Route::get('/custommer', [UserController::class, 'custommerName']);

// Route::get('/getuser/{name}', [UserController::class, 'getUsername']);
// Route::get("/role/{name}", [UserController::class, 'role']);
// Route::get('name/{Name}', [UserController::class, 'getName']);
// Route::get('/header', [UserController::class, 'header']);

// Route::get('/user', [UserController::class, 'user']);
// Api Route
/* Route::get('/user', function(Request $request){
return $request->user();
})->middleware('auth:sanctum'); */

Route::view('/user', 'user');

// Route::view('/header', 'components.header');

// Route::get('/welcome', [UserController::class, 'userHome']);

// Route::get('/home-user/{name}', [UserController::class, "aboutPage"]);
// Route::get('/user-page', [UserController::class, 'aboutPage']);
// Route::get('/userget', [UserController::class, 'getUser']);
// Route::view('/home', 'home');