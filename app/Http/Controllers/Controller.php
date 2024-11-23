<?php

namespace App\Http\Controllers;

use App\Traits\ApiResponse;

class Controller {
	use ApiResponse;
	public function _( $var ) {
		info( json_encode( $var ) );
		return $var;
	}
}
