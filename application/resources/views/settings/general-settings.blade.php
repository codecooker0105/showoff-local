@extends('layouts.app')
@section('styles')
@endsection
@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">General Settings</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">General Settings</span>
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
            <form class="m-portlet" method="POST" action="{{url('/admin/settings/update')}}" enctype="multipart/form-data">
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
                                                <h3 class="m-form__heading-title mb-0">General Settings</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{$errors->has('about_us') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">About Us: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="about_us" id="" rows="3" class="form-control">{{@$data->about_us}}</textarea>
                                            {!! $errors->first('about_us', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{$errors->has('terms_conditions') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Terms & Condition: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="terms_conditions" id="" rows="3" class="form-control">{{@$data->terms_conditions}}</textarea>
                                            {!! $errors->first('terms_conditions', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{$errors->has('privacy_policy') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Privacy Policy: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="privacy_policy" id="" rows="3" class="form-control">{{@$data->privacy_policy}}</textarea>
                                            {!! $errors->first('privacy_policy', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{$errors->has('version') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">App Version: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="version" value="{{@$data->version}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('version', '<p class="help-block" style="color: red;">:message</p>') !!}
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
                                        <button type="submit" class="btn btn-brand"><i class="la la-save"></i> &nbsp;
                                            Update
                                        </button>
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

    @if (Session::has('message'))
        <script>
            swal('Success!', '{{ Session::get('message') }}', 'success');
        </script>
    @endif
    <script>
        $(function () {
            'use strict';
        })
    </script>
@endsection