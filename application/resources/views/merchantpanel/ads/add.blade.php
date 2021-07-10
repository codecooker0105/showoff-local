@extends('merchantpanel.layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Add Ad</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Add Ad</span>
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
            <form class="m-portlet" method="POST" action="{{url('/merchant/ads/store')}}" enctype="multipart/form-data">
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
                                    <div class="form-group m-form__group row" {{$errors->has('title') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Ad Title: <span
                                                    class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="title" value="{{old('title')}}"
                                                   class="form-control m-input" placeholder="">
                                            {!! $errors->first('title', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{@$errors->has('merchant') ? 'has-error' : ''}}>
                                        <label for="merchant" class="col-xl-3 col-lg-3 col-form-label text-right">Merchant:
                                            <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <select name="merchant" id="merchant" class="plxSelect2 form-control">
                                                <option value="">--Select--</option>
                                                <option value="{{ Auth::user()->id }}" selected>{{ Auth::user()->name }}</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('start_time' ? 'has-error' : '')}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Start Time: <span
                                                    class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="start_time" value="{{old('start_time')}}"
                                                   class="form-control plx_dateTimePicker m-input" placeholder=""
                                                   autocomplete="off">
                                            {!! $errors->first('start_time', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('end_time') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">End Time: <span
                                                    class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="end_time" value="{{old('end_time')}}"
                                                   class="form-control plx_dateTimePicker m-input" placeholder=""
                                                   autocomplete="off">
                                            {!! $errors->first('end_time', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('ads_banner') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Ad Banner: <span
                                                    class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="file" name="ads_banner" class="form-control m-input"
                                                   value="{{old('ads_banner')}}" placeholder="">
                                            {!! $errors->first('ads_banner', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('location') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Location: <span
                                                    class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="location" value="{{old('location')}}"
                                                   class="form-control m-input" placeholder="">
                                            {!! $errors->first('location', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{$errors->has('description') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Description: <span
                                                    class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="description" id="" rows="3"
                                                      class="form-control">{{old('description')}}</textarea>
                                            {!! $errors->first('description', '<p class="help-block" style="color: red;">:message</p>') !!}
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
                                            Save
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

            $('.plx_dateTimePicker').datetimepicker();
            $('.plxSelect2').select2({
                placeholder: "--Select--"
            })
        })
    </script>
@endsection