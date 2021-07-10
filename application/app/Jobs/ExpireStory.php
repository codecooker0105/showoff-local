<?php

namespace App\Jobs;

use App\Stories;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class ExpireStory implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $payload;

    /**
     * Create a new job instance.
     *
     * @return void
     */

    public function __construct($payload)
    {
        $this->payload = $payload;
    }

    /**
     * Execute the job.
     *
     * @return void
     */

    public function handle()
    {
        $payload = $this->payload;
        $story_id = $payload['story_id'];
        $story = Stories::find($story_id);
        if($story){
            $story->status = 3;
            $story->save();
        }
    }
}