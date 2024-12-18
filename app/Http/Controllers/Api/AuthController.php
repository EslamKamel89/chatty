<?php

namespace App\Http\Controllers\Api;

use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Models\User;
use App\Utils\Constant;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller {
	public function loginOrRegister( Request $request ) {
		$validated = $request->validate(
			[ 
				'name' => [ 'required' ],
				'avatar' => [ 'required' ],
				'type' => [ 'required' ],
				'open_id' => [ 'required' ],
				'email' => [ 'sometimes', 'email', 'max:50' ],
				'phone' => [ 'sometimes', 'max:30' ],
			],
			$request->all(),
		);
		$user = User::where( 'type', $validated['type'] )
			->where( 'open_id', $validated['open_id'] )
			->first();
		if ( $user ) {
			return $this->success( new UserResource( $user ),
				message: Constant::$userFound
			);
		}
		$user = User::create( $validated );
		$token = $user->createToken( $user->email )->plainTextToken;
		$user->update( [ 
			'token' => $token,
			'access_token' => $token,
		] );
		return $this->success( data: new UserResource( $user ),
			message: Constant::$userCreated
		);

	}
	public function getProfile( Request $request ) {
		return $this->success( $request->all() );
	}
	public function contact( Request $request ) {
		$users = User::where( 'id', '!=', auth()->id() )->get();
		return $this->success( UserResource::collection( $users ) );

	}
}
