<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StoryFiles extends Model
{
    protected $appends = ['Width','Height'];
    public function  getWidthAttribute()
    {
        return null;
//        return $this->getWidthHeight()[0];
    }
    public function  getHeightAttribute()
    {
        return null;
//        return $this->getWidthHeight()[1];
    }

    public function getWidthHeight()
    {
        $remoteFile = public_path() . $this->file_path;
        $ch = curl_init($remoteFile);
        curl_setopt($ch, CURLOPT_NOBODY, true);
        curl_exec($ch);
        $responseCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        if ($responseCode == 200) {
            return list($width, $height, $type, $attr) = getimagesize($remoteFile);
        }
        return;
    }
}
