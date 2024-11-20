<?php

use App\Http\Controllers\TestController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get( '/user', function (Request $request) {
	return $request->user();
} )->middleware( 'auth:sanctum' );



Route::group( [ 
	'namespace' => 'App\Http\Controllers\Api',
	'prefix' => 'auth',
],
	function () {
		Route::post( '/login-or-register', 'AuthController@loginOrRegister' );
		Route::any( '/get-profile', 'AuthController@getProfile' );
	},
);
