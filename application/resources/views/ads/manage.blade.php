@extends('layouts.app')

@section('styles')
    <style>
        /*Stock Product*/
        .plx__item-wrap {
            /*padding: 30px;*/
        }
        .plx__item-wrap .plx__item-wrap-header {
            padding: 15px 30px;
            background-color: #f8faff;
            border-bottom: 1px solid #ebedf2;
        }
        .plx__item-wrap .plx__item-wrap-header .plx__block-title {
            font-size: 1.1rem;
            margin-bottom: 12px;
            text-transform: uppercase;
        }
        .plx__item-list-wrap {
            padding: 30px;
        }
        .plx__item-wrap .plx__item-list {
            padding: 0;
            margin: 0;
        }
        .plx__item-wrap .plx__item-list li {
            list-style-type: none;
            padding-bottom: 15px;
            margin-bottom: 15px;
            border-bottom: 1px solid #ebedf2;
        }
        .plx__item-wrap .plx__item-list li:last-child {
            margin-bottom: 0;
            padding-bottom: 0;
            border-bottom: 0;
        }
        .plx__item-wrap .plx__item-list .plx__p-thumb {
            width: 50px;
        }
        .plx__item-wrap .plx__item-list .plx__p-thumb img {
            width: 100%;
            height: auto;
        }
        .plx__item-wrap .plx__item-list .plx__p-desc {
            position: relative;
        }
        .plx__item-wrap .plx__item-list .plx__action-btn {
            position: absolute;
            top: 50%;
            right: 0;
            -webkit-transform: translateY(-50%);
            -moz-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            -o-transform: translateY(-50%);
            transform: translateY(-50%);
        }
        .plx__item-wrap .plx__item-list .plx__p-name {
            font-size: 1.1rem;
            margin-bottom: 6px;
        }
    </style>
@endsection

@section('content')

    <div class="m-grid__item m-grid__item--fluid m-wrapper">
        <!-- BEGIN: Subheader -->
        <div class="m-subheader ">
            <div class="d-flex align-items-center">
                <div class="mr-auto">
                    <h3 class="m-subheader__title m-subheader__title--separator">Ad Management</h3>

                    <ul class="m-subheader__breadcrumbs m-nav m-nav--inline">
                        <li class="m-nav__item m-nav__item--home">
                            <a href="#" class="m-nav__link m-nav__link--icon">
                                <i class="m-nav__link-icon la la-home"></i>
                            </a>
                        </li>
                        <li class="m-nav__separator">-</li>
                        <li class="m-nav__item">
                            <a href="#" class="m-nav__link">
                                <span class="m-nav__link-text">Ad Management</span>
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
            <div class="m-portlet m-portlet--full-height ">
                <div class="m-portlet__head">
                    <div class="m-portlet__head-caption">
                        <div class="m-portlet__head-title">
                            <h3 class="m-portlet__head-text">
                                Ad Management
                            </h3>
                        </div>
                    </div>
                    <div class="m-portlet__head-tools">

                    </div>
                </div>

                <div class="row m-row--no-padding m-row--col-separator-xl">
                    <div class="col-md-8">
                        <form class="m-form m-form--fit m-form--label-align-right m-portlet--full-height"
                              enctype="multipart/form-data" action="{{url('admin/manage/ads')}}" method="post">
                            {{csrf_field()}}
                            <div class="m-portlet__body">
                                <div class="m-form__group">
                                    <table id="sortable" class="banner-list-table table table-striped">
                                        <thead>
                                        <tr>
                                            <th width="1%"></th>
                                            <th width="70">Image</th>
                                            <th class="plx__p-desc" width="40%">Item Name</th>
                                            <th width="1%"></th>
                                        </tr>
                                        </thead>
                                        <tbody id="bannerList">

                                        @forelse($banners as $banner)
                                             @if(@$banner->ads)

                                                <tr class="listedItem ui-sortable-handle" id="listedItem-{{@$banner->adv_id}}" style="">
                                                    <input type="hidden" name="banner_data[]" value="{{$banner->adv_id}}">
                                                    <td width="1%"><span class="srNo">&nbsp;</span></td>
                                                    <td width="70">
                                                        <img src="{{url(@$banner->ads->ads_banner)}}" alt="" width="56">
                                                    </td>
                                                    <td class="plx__p-desc" width="40%">
                                                        <h6 class="plx__p-name">{{@$banner->ads->title}}</h6>
                                                        <span class="text-muted">{{@$banner->ads->merchant->name}}</span>
                                                    </td>
                                                    <td width="1%">
                                                          <a href="javascript://" data-target="#banner-item-{{@$banner->adv_id}}" class="removeItem removeToBannerList"><i class="la la-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                            @endif
                                        @empty
                                            <tr class="emptyRow">
                                                <td colspan="5" class="text-center">No item</td>
                                            </tr>
                                        @endforelse

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="m-portlet__foot m-portlet__foot--fit">
                                <div class="m-form__actions text-right">
                                    <button type="submit" class="btn btn-primary">Save Changes</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="col-md-4">

                        <div class="plx__item-wrap">
                            <div class="plx__item-wrap-header">
                                <h3 class="plx__block-title">Adds</h3>
                                <div class="input-group input-group--sm">
                                    <input type="text" class="form-control form-group-sm searchInput" placeholder="Search adds...">
                                    <div class="input-group-append">
                                        <button class="btn btn-default" type="button"><i class="la la-search"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="plx__item-list-wrap">
                                <div class="m-scrollable" data-scrollable="true" data-height="250"
                                     data-mobile-height="220">
                                    <ul id="promoItems" class="plx__item-list">
                                        @forelse($ads_lists as $ads_list)
                                            @php
                                            $actionBtncls = "addToBannerList btn-info";
                                                $la = "plus";
                                                $adc_add_check= $banners->contains('adv_id', $ads_list->id);
                                                $actionBtncls = "addToBannerList btn-info";
                                                if($adc_add_check){
                                                    $actionBtncls = "removeToBannerList btn-danger";
                                                    $la = "close";
                                                }

                                                @endphp
                                        <li  id="banner-item-{{$ads_list->id}}">
                                            <div class="plx__p-desc">
                                                <p class="plx__p-name">{{$ads_list->title}}</p>
                                                <span class="text-muted">{{@$ads_list->merchant->name}}</span>
                                                <a href="javascript://"
                                                   data-title="{{$ads_list->title}}"
                                                   data-id="{{$ads_list->id}}"
                                                   data-url=""
                                                   data-img-url="{{url($ads_list->ads_banner)}}"
                                                   data-type="{{@$ads_list->merchant->name}}"
                                                   data-meta-text="{{@$ads_list->merchant->name}}"
                                                   class="btn btn-sm {{@$actionBtncls}} plx__action-btn btn-info"><i
                                                            class="la la-{{@$la}}"></i></a>
                                            </div>
                                        </li>
                                       @empty
                                        @endforelse

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

@section('scripts')

    <script src="{{asset('/')}}js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="{{asset('/')}}assets/demo/default/custom/crud/forms/widgets/bootstrap-daterangepicker.js" type="text/javascript"></script>

    <script>
        $(function () {
            'use strict';
            $('.bs-datepicker').datepicker().on('change', function () {
                $(this).datepicker('hide');
            });

            $('.plx__select2').select2({
                placeholder: "--Select--"
            });
        });

        $(document).on('click', '.removeItem', function (e) {
            $(this).closest('tr').remove();
            changeSrNo();
        });

        itemSortable();
        searchItems();

        let bannerList = $('#bannerList');

        $(document).on('click', '.addToBannerList', function (e) {
            e.preventDefault();
            let itemID = $(this).data('id'),
                itemTitle = $(this).data('title'),
                itemURL = $(this).data('url'),
                imgURL = $(this).data('img-url'),
                itemType = $(this).data('type'),
                itemMetaText = $(this).data('meta-text'),
                addedItemLength = $(this).closest('.plx__item-list').find('.removeToBannerList').length;

            if (addedItemLength < parseInt(5)) {
                if (bannerList.find('tr').hasClass('emptyRow')) {
                    $('tr.emptyRow').remove();
                }
                bannerList.prepend(prependItemToCart(itemID, itemTitle, itemURL, imgURL, itemType, itemMetaText));
                changeSrNo();
                itemSortable();
                $(this).removeClass('addToBannerList btn-info');
                $(this).addClass('removeToBannerList btn-danger');
                $(this).html('<i class="la la-close"></i>');
            } else {
                swal("Max limit reached!","You can add only 5 items in each list.","warning");
            }
        });

        $(document).on('click', '.removeToBannerList', function (e) {
            e.preventDefault();

            let itemID = $(this).data('id');

            if (itemID !== undefined) {
                $('#listedItem-' + itemID).remove();
                $(this).removeClass('removeToBannerList btn-danger');
                $(this).addClass('addToBannerList btn-info');
                $(this).html('<i class="la la-plus"></i>');
            } else {
                let target = $(this).data('target');

                $(this).closest('tr').remove();
                $("#primaryButton").click();
                $(target).find('.removeToBannerList').click();
            }

            if ($('.listedItem').length === 0) {
                $('#bannerList').html('<tr class="emptyRow"><td colspan="5" class="text-center">No item</td></tr>');
            }
            changeSrNo();
        });

        let prependItemToCart = (id, title, url, imgUrl, type, metaText) => {
            return `
                    <tr class="listedItem ui-sortable-handle" id="listedItem-${id}" style="">
                    <input type="hidden" name="banner_data[]" value="${id}">
                        <td width="1%"><span class="srNo">&nbsp;</span>
                        </td>
                        <td width="70">
                            <img src="${imgUrl}" alt="" width="56">
                        </td>
                        <td class="plx__p-desc" width="40%">
                            <h6 class="plx__p-name">${title}</h6>
                            <span class="text-muted">${metaText}</span>
                        </td>

                        <td width="1%">
                            <a href="javascript://" data-target="#banner-item-${id}" class="removeItem removeToBannerList"><i class="la la-trash-o"></i></a>
                        </td>
                    </tr>
                   `
        };

        function itemSortable() {

            $("#sortable tbody").sortable({
                cursor: "move",
                placeholder: "sortable-placeholder",
                helper: function (e, tr) {
                    let length = bannerList.find('tr').length;
                    for (let i = 0; i < length; i++ ) {
                        console.log(i, length);
                        $('.srNo').eq(i).text(i + 1);
                    }
                    let $originals = tr.children();
                    let $helper = tr.clone();
                    $helper.children().each(function (index) {
                        $(this).width($originals.eq(index).width());
                    });
                    return $helper;
                },
                start: function (event, ui) {
                    let start_pos = ui.item.index();
                    ui.item.data('start_pos', start_pos);
                },
                update: function (event, ui) {
                    let start_pos = ui.item.data('start_pos');
                    let end_pos = ui.item.index();
                    console.log(start_pos + ' - ' + end_pos);
                    changeSrNo();
                },
                change: function( event, ui ) {

                },
            }).disableSelection();
        }

        function changeSrNo () {
            let length = bannerList.find('tr').length;
            for (let i = 0; i < length; i++ ) {
                console.log(i, length);
                $('.srNo').eq(i).text(i + 1);
            }
        }

      

        function searchItems() {
            $('.plx__item-wrap').each(function () {
                let input = $(this).find('.searchInput');
                let itemList = $(this).find('.plx__item-list');
                $(input).on('keyup', function () {
                    let value = $(this).val();
                    itemList.each(function () {
                        $(this).find("li").each(function() {
                            if ($(this).text().search(new RegExp(value, "i")) > -1) {
                                $(this).show();
                            } else {
                                $(this).hide();
                            }
                        });
                    })
                });
            })
        }


    </script>
@endsection