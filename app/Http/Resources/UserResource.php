<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource {
	/**
	 * Transform the resource into an array.
	 *
	 * @return array<string, mixed>
	 */
	public function toArray( Request $request ): array {
		return [ 
			'name' => $this?->name ?? 'null',
			'email' => $this?->email ?? 'null',
			'type' => $this?->type ?? 'null',
			'accessToken' => $this?->access_token ?? 'null',
			'token' => $this?->token ?? 'null',
			'fcmtoken' => $this?->fcmtoken ?? 'null',
			'avatar' => $this?->avatar ?? 'null',
			'description' => $this?->description ?? 'null',
			'expireDate' => $this?->expire_date ?? 'null',
			'online' => $this?->online ?? 'null',
			'openId' => $this?->open_id ?? 'null',
		];
	}
}