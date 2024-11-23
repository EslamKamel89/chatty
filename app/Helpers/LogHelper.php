<?php
namespace App\Helpers;
class LogHelper {
	static public function _( $var ) {
		info( json_encode( $var ) );
		return $var;
	}
}
