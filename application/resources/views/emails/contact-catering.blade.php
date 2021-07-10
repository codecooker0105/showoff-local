@component('mail::message')
    # Dear {{@$crequest['business_name']}}

    Thank you for your interest in joining the Thoag team. Our business development manager will
    contact you soon.


    Regards,<br>
    {{ config('app.name') }}
@endcomponent
