<?php

namespace App\Traits;


trait ApiStatusTrait
{
    public $successStatus = 200;
    public $failureStatus = 100;

    public function successApiResponse($response){
        return response()->json(['meta' => array('status' => $this->successStatus), 'response' => $response]);
    }
    public function failureApiResponse($response){
        return response()->json(['meta' => array('status' => $this->failureStatus), 'response' => $response]);
    }


}