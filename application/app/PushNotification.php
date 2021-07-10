<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Log;
use LaravelFCM\Facades\FCM;
use LaravelFCM\Message\OptionsBuilder;
use LaravelFCM\Message\PayloadDataBuilder;
use LaravelFCM\Message\PayloadNotificationBuilder;

class PushNotification extends Model
{
    public static function sentpush($title, $subtitle, $message, $device_tokens)
    {
        try {
            $optionBuilder = new OptionsBuilder();
            $optionBuilder->setTimeToLive(30);

            $notificationBuilder = new PayloadNotificationBuilder($title);
            $notificationBuilder->setBody($subtitle)->setSound('default');

            $dataBuilder = new PayloadDataBuilder();
            $dataBuilder->addData([
                'title' => $title,
                'subtitle' => $subtitle,
                'body' => $message
            ]);

            $option = $optionBuilder->build();
            $notification = $notificationBuilder->build();
            $data = $dataBuilder->build();
            $status = FCM::sendTo($device_tokens, $option, $notification, $data);
            Log::info('push sent. ');
        } catch (\Exception $e) {
            Log::info('push error. ');
        }
    }
}