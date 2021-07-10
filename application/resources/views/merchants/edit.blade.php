@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Edit Merchant</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="{{url('admin')}}" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="{{url()->current()}}" class="m-nav__link">
                                <span class="m-nav__link-text">Edit Merchant</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div>
                    {{----}}
                </div>
            </div>
        </div>
        <!-- END: Subheader -->

        <div class="m-content">
            <!--begin::Portlet-->
            <form class="m-portlet" method="post" action="{{url('/admin/merchants/edit/')}}">
                {{csrf_field()}}
                <div class="m-form m-form--label-align-left- m-form--state-" id="m_form">
                    <!--begin: Form Body -->
                    <div class="m-portlet__body">
                        <div class="row">
                            <div class="col-xl-8 offset-xl-2">
                                <div class="m-form__section m-form__section--first">
                                    <div class="row">
                                        <label class="col-xl-3 col-lg-3 col-form-label">&nbsp;</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <div class="m-form__heading mb-0">
                                                <h3 class="m-form__heading-title mb-0">Merchant Details</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('name') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Merchant Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="name" class="form-control m-input" placeholder="" value="{{ old('name', $user->name)}}" required>
                                            {!! $errors->first('name', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('owner_name') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Owner Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="owner_name" class="form-control m-input" placeholder="" value="{{ old('owner_name', $user->owner_name)}}" required>
                                            {!! $errors->first('owner_name', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('phone') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Phone: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="phone" class="form-control m-input" placeholder="" value="{{ old('phone', $user->phone)}}" required>
                                            {!! $errors->first('phone', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('email') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Email: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="email" name="email" class="form-control m-input" placeholder="" value="{{ old('email', $user->email)}}" required>
                                            {!! $errors->first('email', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('password') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Password:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="password" name="password" class="form-control m-input" placeholder="">
                                            {!! $errors->first('password', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="m-portlet__foot m-portlet__foot--fit">
                        <div class="col-xl-8 offset-xl-2">
                            <div class="m-form__actions m-form__actions">
                                <div class="row">
                                    <div class="col-lg-9 ml-lg-auto">
                                        <input type="hidden" name="id" value="{{$user->id}}">
                                        <button type="submit" class="btn btn-brand"><i class="la la-save"></i> &nbsp; Update</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!--end::Portlet-->
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(function () {
            'use strict';

            $('.plx_datepicker').datepicker();
        })
    </script>
@endsection