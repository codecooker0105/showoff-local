<?php

namespace App\Traits;

use App\Device;
use App\Notification;
use App\Posts;
use App\PushNotification;
use Illuminate\Support\Facades\Auth;

trait NotificationTrait
{
    //TYPE
    //1="Comment on against a post", 2="Reply on against a comment", 3="Following", 4="Post Liked",
    public function notificationStore($data)
    {
        $notification_obj_info = new \stdClass();
        $notification_info = new Notification();
        $notification_info->action_taken_by = Auth::id();

        if ($data->type === 3) {//FOLLOWING
            $notification_obj_info->message = 'user_name started following you.';
            $notification_info->type = $data->type;
            $notification_info->user_id = $data->following_id;
            $notification_info->notification_obj = json_encode($notification_obj_info);
            $notification_info->save();

            //PUSH NOTIFICATION
            $push_title = Auth::user()->username . " started following you.";
            $subTtitle = "";
            $msg = array
            (
                'user_id' => Auth::id(),
                'push_type' => $this->pushType('follow_user'),
            );
            $tokens[] = @Device::where('user_id', $data->following_id)->first()->fcm_token;
            if ($tokens) {
                PushNotification::sentpush($push_title, $subTtitle, $msg, $tokens);
            }
        }
        if ($data->type === 1 || $data->type === 2) {//Comment
            $notification_obj_info->post_id = @$data->post_id;
            $notification_obj_info->message = $data->type === 2 ? 'user_name replied to your comment.' : 'user_name commented on your post.';
            $notification_obj_info->comment_id = @$data->comment_id;
            if ($data->type === 2) {
                $notification_obj_info->parent_id = @$data->parent_id;
            }
            $notification_obj_info->comment = @$data->comment;
            $notification_obj_info->comment_file = @$data->comment_file;

            $notification_info->type = $data->type;
            $notification_info->user_id = $data->user_id;
            $notification_info->notification_obj = json_encode($notification_obj_info);
            $notification_info->save();

            //PUSH NOTIFICATION

            if ($data->user_id != Auth::id()) {
                $push_title = $data->type === 2 ? Auth::user()->username . " replied to your comment." : Auth::user()->username . " commented on your post.";
                $subTtitle = @$data->comment;
                $msg = array
                (
                    'post_id' => $data->post_id,
                    'push_type' => $data->type === 2 ? $this->pushType('reply_comment') : $this->pushType('comment'),
                );
                $tokens[] = @Device::where('user_id', $data->user_id)->first()->fcm_token;
                if ($tokens) {
                    PushNotification::sentpush($push_title, $subTtitle, $msg, $tokens);
                }
            }
        }
        if ($data->type === 4) {//LIKE POST
            $notification_obj_info->post_id = @$data->post_id;
            $get_post = Posts::find($data->post_id);
            if ($get_post) {
                if ($get_post->type == 1) {
                    $post_images = array();
                    $post_images[] = $get_post->reference_url;
                    if ($get_post->images) {
                        foreach ($get_post->images as $each_image) {
                            $post_images[] = $each_image->reference_url;
                        }
                    }
                    $total_photos = $get_post->images ? $get_post->images->count() + 1 : 1;
                    $notification_obj_info->message = 'user_name liked your ' . $total_photos . ' photos post.';
                    $notification_obj_info->post_type = $get_post->type;
                    $notification_obj_info->post_images = @$post_images;
                } else {
                    $notification_obj_info->post_type = $get_post->type;
                    $like = 0;
                    if ($get_post->likes->count() > 0) {
                        $like = $get_post->likes->count() - 1;
                    }
                    $total_like = $like > 0 ? ' and ' . $like . ' others liked your post.' : ' liked your post.';
                    $notification_obj_info->message = 'user_name ' . $total_like;
                }
                $notification_info->type = $data->type;
                $notification_info->user_id = $get_post->user_id;
                $notification_info->notification_obj = json_encode($notification_obj_info);
                $notification_info->save();

                //PUSH NOTIFICATION
                $push_title = Auth::user()->username . " liked your post.";
                $subTtitle = "";
                $msg = array
                (
                    'post_id' => $data->post_id,
                    'push_type' => $this->pushType('like_post'),
                );
                $tokens[] = @Device::where('user_id', $get_post->user_id)->first()->fcm_token;
                if ($tokens) {
                    PushNotification::sentpush($push_title, $subTtitle, $msg, $tokens);
                }
            }
        }
    }

    public function pushType($type)
    {
        $type_arr = array(
            'comment' => 1,
            'reply_comment' => 2,
            'follow_user' => 3,
            'like_post' => 4,
            'chatting' => 5,
        );
        return $type_arr[$type];
    }
}