<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class MessageSent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    /**
     * Create a new event instance.
     *
     * @return void
     */

//    public function __construct()
//    {
//        //
//    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */

//    public function broadcastOn()
//    {
//        return new PrivateChannel('channel-name');
//    }

    public $message;

    public function __construct($message, $data = [])
    {
        $this->data = $data;
        $this->message = $message;
    }

    public function broadcastOn()
    {
//        return new PrivateChannel($this->message->channel_name);
        return [$this->message->channel_name];
    }

    public function broadcastAs()
    {
        return $this->message->event_name;
    }
}