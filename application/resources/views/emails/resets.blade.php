@component('mail::message')
    # Dear ,{{$email}}

    You have requested  {{ config('app.name') }} to reset your password,
    Please verify your change by entering the token into app:



@component('mail::button', ['url' => $token])
{{$token}}
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
