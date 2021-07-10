<?php

namespace App\Jobs;

use App\Ads;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class AdStatus implements ShouldQueue
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
        $ad_id = $payload['ad_id'];
        $type = $payload['type'];
        $ad = Ads::find($ad_id);
        if($ad){
            $ad->status = $type === "Pending" ? 1 : 3;
            $ad->save();
        }
    }
}