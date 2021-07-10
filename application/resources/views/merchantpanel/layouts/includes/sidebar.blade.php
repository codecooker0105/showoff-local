<button class="m-aside-left-close  m-aside-left-close--skin-lilght " id="m_aside_left_close_btn">
    <i class="la la-close"></i>
</button>

<div id="m_aside_left" class="m-grid__item	m-aside-left  m-aside-left--skin-light ">
    <!-- BEGIN: Aside Menu -->
    <div id="m_ver_menu"
         class="m-aside-menu  m-aside-menu--skin-light m-aside-menu--submenu-skin-light "
         m-menu-vertical="1"
         m-menu-scrollable="1"
         m-menu-dropdown-timeout="500"
         style="position: relative;">
        <ul class="m-menu__nav  m-menu__nav--dropdown-submenu-arrow ">
            <li class="m-menu__item  {{@$dashboard}}" aria-haspopup="true">
                <a href="{{url('/')}}" class="m-menu__link ">
                    <i class="m-menu__link-icon flaticon-line-graph"></i>
                    <span class="m-menu__link-title">
                        <span class="m-menu__link-wrap">
                            <span class="m-menu__link-text">Dashboard</span>
                            <span class="m-menu__link-badge">
                                <span class="m-badge m-badge--danger">2</span>
                            </span>
                        </span>
                    </span>
                </a>
            </li>

            <li class="m-menu__section">
                <h4 class="m-menu__section-text">Components</h4>
                <i class="m-menu__section-icon flaticon-more-v2"></i>
            </li>

            {{--<li class="m-menu__item  {{@$posts}}" aria-haspopup="true">
                <a href="{{url('/posts')}}" class="m-menu__link ">
                    <i class="m-menu__link-icon flaticon-file-1"></i>
                    <span class="m-menu__link-title">
                        <span class="m-menu__link-wrap">
                            <span class="m-menu__link-text">Posts</span>
                        </span>
                    </span>
                </a>
            </li>

            <li class="m-menu__item  m-menu__item--submenu {{@$users}}" aria-haspopup="true">
                <a href="javascript:;" class="m-menu__link m-menu__toggle">
                    <i class="m-menu__link-icon flaticon-users"></i>
                    <span class="m-menu__link-text">Users</span>
                    <i class="m-menu__ver-arrow la la-angle-right"></i>
                </a>
                <div class="m-menu__submenu "><span class="m-menu__arrow"></span>
                    <ul class="m-menu__subnav">
                        <li class="m-menu__item {{@$add_user}}" aria-haspopup="true">
                            <a href="{{url('admin/users/add')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">Add New User</span>
                            </a>
                        </li>
                        <li class="m-menu__item {{@$user_list}}" aria-haspopup="true">
                            <a href="{{url('admin/users')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">User List</span></a>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="m-menu__item  m-menu__item--submenu {{@$merchants}}" aria-haspopup="true">
                <a href="javascript:;" class="m-menu__link m-menu__toggle">
                    <i class="m-menu__link-icon flaticon-users"></i>
                    <span class="m-menu__link-text">Merchants</span>
                    <i class="m-menu__ver-arrow la la-angle-right"></i>
                </a>
                <div class="m-menu__submenu "><span class="m-menu__arrow"></span>
                    <ul class="m-menu__subnav">
                        <li class="m-menu__item {{@$add_merchant}}" aria-haspopup="true">
                            <a href="{{url('admin/merchants/add')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">Add New Merchant</span>
                            </a>
                        </li>
                        <li class="m-menu__item {{@$merchant_list}}" aria-haspopup="true">
                            <a href="{{url('admin/merchants')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">Merchant List</span></a>
                        </li>
                    </ul>
                </div>
            </li>--}}

            <li class="m-menu__item  m-menu__item--submenu {{@$ads}}" aria-haspopup="true">
                <a href="javascript:;" class="m-menu__link m-menu__toggle">
                    <i class="m-menu__link-icon la la-list-alt"></i>
                    <span class="m-menu__link-text">Ads</span>
                    <i class="m-menu__ver-arrow la la-angle-right"></i>
                </a>
                <div class="m-menu__submenu "><span class="m-menu__arrow"></span>
                    <ul class="m-menu__subnav">
                        <li class="m-menu__item {{@$add_ad}}" aria-haspopup="true">
                            <a href="{{url('merchant/ads/add')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">Add New Ad</span>
                            </a>
                        </li>
                        <li class="m-menu__item {{@$ad_list}}" aria-haspopup="true">
                            <a href="{{url('merchant/ads')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">Ad List</span></a>
                        </li>
                    </ul>
                </div>
            </li>

            {{--<li class="m-menu__item  {{@$feedback}}" aria-haspopup="true">
                <a href="{{url('admin/feedback')}}" class="m-menu__link ">
                    <i class="m-menu__link-icon flaticon-comment"></i>
                    <span class="m-menu__link-title">
                        <span class="m-menu__link-wrap">
                            <span class="m-menu__link-text">Feedback</span>
                        </span>
                    </span>
                </a>
            </li>--}}

            {{--<li class="m-menu__item  {{@$contactMessages}}" aria-haspopup="true">
                <a href="{{url('#contact-messages')}}" class="m-menu__link ">
                    <i class="m-menu__link-icon flaticon-email"></i>
                    <span class="m-menu__link-title">
                        <span class="m-menu__link-wrap">
                            <span class="m-menu__link-text">Contact Messages</span>
                        </span>
                    </span>
                </a>
            </li>--}}

            {{--<li class="m-menu__item  m-menu__item--submenu {{@$settings}}" aria-haspopup="true">
                <a href="javascript:;" class="m-menu__link m-menu__toggle">
                    <i class="m-menu__link-icon flaticon-cogwheel"></i>
                    <span class="m-menu__link-text">Settings</span>
                    <i class="m-menu__ver-arrow la la-angle-right"></i>
                </a>
                <div class="m-menu__submenu "><span class="m-menu__arrow"></span>
                    <ul class="m-menu__subnav">
                        <li class="m-menu__item " aria-haspopup="true">
                            <a href="{{url('#candidates/candidate-list')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">General Settings</span>
                            </a>
                        </li>
                        <li class="m-menu__item " aria-haspopup="true">
                            <a href="{{url('#candidates/favourite-list')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">About</span></a>
                        </li>
                        <li class="m-menu__item " aria-haspopup="true">
                            <a href="{{url('#candidates/favourite-list')}}" class="m-menu__link ">
                                <i class="m-menu__link-bullet m-menu__link-bullet--dot"><span></span></i>
                                <span class="m-menu__link-text">Terms &amp; Condition</span></a>
                        </li>
                    </ul>
                </div>
            </li>--}}
        </ul>
    </div>
    <!-- END: Aside Menu -->
</div>