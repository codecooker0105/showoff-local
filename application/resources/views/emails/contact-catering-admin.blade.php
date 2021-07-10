@component('mail::message')
    # Dear Admin,

    A new caterer is interested to join. His details are given bellow.
    Informations: <br>

    'BUSINESS NAME'={{@$crequest['business_name']}} <br>
    'LOCATION'={{@$crequest['location']}} <br>
    'EMAIL'={{@$crequest['email']}} <br>
    'MOBILE NUMBER'={{@$crequest['mobile_number']}} <br>



    Thanks,<br>
    {{ config('app.name') }}
@endcomponent
