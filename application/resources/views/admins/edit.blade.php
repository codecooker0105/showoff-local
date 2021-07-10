@extends('layouts.app')

@section('styles')

@endsection

@section('content')
    <div class="m-grid__item m-grid__item--fluid m-wrapper">

        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title ">Edit Admin</h3>
                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="" class="m-nav__link">
                                <span class="m-nav__link-text">Edit Admin</span>
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
            <form class="m-portlet m-portlet--last m-portlet--head m-portlet--responsive-mobile"
                  method="POST" action="{{url('admin/staffs/edit')}}" enctype="multipart/form-data">
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
                                                <h3 class="m-form__heading-title mb-0">Admin Details</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('name') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Name: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="name" value="{{old('name',$admin->name)}}" class="form-control m-input" placeholder="">
                                            {!! $errors->first('name', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Gender:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" value="male"
                                                        {{ old('gender',$admin->gender == 'male') ? 'checked' : '' }}>
                                                <label class="form-check-label" for="male">Male</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="female" value="female"
                                                        {{ old('gender',$admin->gender == 'female') ? 'checked' : '' }}>
                                                <label class="form-check-label" for="female">Female</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" name="gender" id="others" value="others" {{ old('gender',$admin->gender == 'others') ? 'checked' : '' }}f>
                                                <label class="form-check-label" for="Others">Others</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('phone') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Phone:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="phone" class="form-control m-input" value="{{old('phone', $admin->phone)}}" placeholder="">
                                            {!! $errors->first('phone', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>

                                    <div class="form-group m-form__group row" {{ $errors->has('email') ? 'has-error' : ''}}>
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Email: <span class="text-danger">*</span></label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="email" name="email" class="form-control m-input" value="{{old('email', $admin->email)}}" placeholder="" {{$admin->id == Auth::user()->id ? 'readonly' : ''}}>
                                            {!! $errors->first('email', '<p class="help-block" style="color: red;">:message</p>') !!}
                                            {!! $admin->id == Auth::user()->id ? '<p class="help-block" style="color: red;">Can not change your email.</p>' : '' !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label for="bio" class="col-xl-3 col-lg-3 col-form-label text-right">Bio:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <textarea name="bio" id="bio" class="form-control" rows="3">{{old('bio',$admin->bio) }}</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row" {{ $errors->has('date_of_birth') ? 'has-error' : ''}}>
                                        <label for="" class="col-xl-3 col-lg-3 col-form-label text-right">Date of Birth:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <input type="text" name="date_of_birth" value="{{old('date_of_birth',$admin->date_of_birth)}}" class="plx_datepicker form-control m-input" placeholder="">
                                            {!! $errors->first('date_of_birth', '<p class="help-block" style="color: red;">:message</p>') !!}
                                        </div>
                                    </div>
                                    <div class="form-group m-form__group row">
                                        <label class="col-xl-3 col-lg-3 col-form-label text-right">Image:</label>
                                        <div class="col-xl-9 col-lg-9">
                                            <img src="{{@$admin->image_url}}" alt="" width="50">
                                            <input type="file" name="image" class="form-control m-input" placeholder="">
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
                                        <input type="hidden" name="id" value="{{$admin->id}}">
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