<?php

use App\Http\Controllers\TestController;
use App\Http\Middleware\TestMiddleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get( '/user', function (Request $request) {
	return $request->user();
} )->middleware( 'auth:sanctum' );



Route::group( [ 
	'namespace' => 'App\Http\Controllers\Api',
	'prefix' => 'auth',
	// 'middleware', 'auth:sanctum'
],
	function () {
		Route::post( '/login-or-register', 'AuthController@loginOrRegister' );
		Route::middleware( 'auth:sanctum' )->group( function () {
			Route::any( '/get-profile', 'AuthController@getProfile' );
			Route::post( '/contact', 'AuthController@contact' );
		} );
	},
);
