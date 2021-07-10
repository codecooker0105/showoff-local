@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Edit Ad</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Edit Ad</span>
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
            <form class="m-portlet" method="POST" action="{{url('/admin/ads/update')}}" enctype="multipart/form-data">
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
                                                <h3 class="m-form__heading-title mb-0">Ad Details</h3>
                                            </div>
                                        </div>
                                    </div>
                                    {{--<div class="form-group m-form__group row" {{$errors->has('title') ? 'has-error' : ''}}>--}}
                                        {{--<label class="col-xl-3 col-lg-3 col-form-label text-right">Ad Title: <span class="text-danger">*</span></label>--}}
                                        {{--<div class="col-xl-9 col-lg-9">--}}
                                            {{--<input type="text" name="title" value="{{old('title', @$ad->title)}}" class="form-control m-input" placeholder="" required>--}}
                                            {{--{!! $errors->first('title', '<p class="help-block" style="color: red;">:message</p>') !!}--}}
                                        {{--</div>--}}
                                    {{--</div>--}}


                                    <div class="form-group m-form__group row" {{$errors->has('company_name') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Company Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="company_name" value="{{old('company_name', @$ad->company_name)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('company_name', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{$errors->has('company_logo') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Company Logo: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <img src="{{@$ad->company_logo}}" alt="" width="50">
                                            <input type="file" name="company_logo" class="form-control m-input" value="{{old('company_logo')}}" placeholder="">
                                            {!! $errors->first('company_logo', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{$errors->has('start_time' ? 'has-error' : '')}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Start Time: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="start_time" value="{{old('start_time', @$ad->start_time)}}" class="form-control plx_dateTimePicker m-input" placeholder="" autocomplete="off">
                                            {!! $errors->first('start_time', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('end_time') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">End Time: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="end_time" value="{{old('end_time',@$ad->end_time)}}" class="form-control plx_dateTimePicker m-input" placeholder="" autocomplete="off">
                                            {!! $errors->first('end_time', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('link') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Link: </label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="url" name="link" value="{{old('link',@$ad->link)}}" class="form-control m-input" placeholder="" autocomplete="off">
                                            {!! $errors->first('link', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('description') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Description: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="description" maxlength="500" placeholder="Maximum 500 Characters"  id="" rows="3" class="form-control">{{old('description', @$ad->description)}}</textarea>
                                            {!! $errors->first('description', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('ads_banner') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Ad Banner: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <img src="{{@$ad->ads_banner}}" alt="" width="50">
                                            <input type="file" name="ads_banner" class="form-control m-input" value="{{old('ads_banner')}}" placeholder="">
                                            {!! $errors->first('ads_banner', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    {{--<div class="form-group m-form__group row" {{$errors->has('location') ? 'has-error' : ''}}>--}}
                                    {{--<label class="col-xl-3 col-lg-3 col-form-label text-right">Location: <span class="text-danger">*</span></label>--}}
                                    {{--<div class="col-xl-9 col-lg-9">--}}
                                    {{--<input type="text" name="location" value="{{old('location', @$ad->location)}}" class="form-control m-input" placeholder="" required>--}}
                                    {{--{!! $errors->first('location', '<p class="help-block" style="color: red;">:message</p>') !!}--}}
                                    {{--</div>--}}
                                    {{--</div>--}}
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="m-portlet__foot m-portlet__foot--fit">
                        <div class="col-xl-8 offset-xl-2">
                            <div class="m-form__actions m-form__actions">
                                <div class="row">
                                    <div class="col-lg-9 ml-lg-auto">
                                        <input type="hidden" name="ads_id" value="{{@$ad->id}}">
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
    <script>
        $(function () {
            'use strict';

            $('.plx_dateTimePicker').datetimepicker().on('dp.change', function (e) {
                if (!e.oldDate || !e.date.isSame(e.oldDate, 'day')) {
                    $(this).data('DateTimePicker').hide();
                }
            });
            ;
            $('.plxSelect2').select2({})
        })
    </script>
@endsection