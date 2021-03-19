<!DOCTYPE html>
<html lang="zxx">
   <head>
      <!-- The above 6 meta tags *must* come first in the head; any other head content must come *after* these tags -->
      <meta charset="utf-8">
      <meta http-equiv="x-ua-compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="keyword" content="">
      <meta name="author"  content=""/>
      <!-- Page Title -->
      <title>Soteria |Neurotron - Securtiy Admin Dashboard</title>
      <!-- Main CSS -->			
      <link type="text/css" rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css"/>
      <link type="text/css" rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css"/>
      <link type="text/css" rel="stylesheet" href="assets/plugins/flag-icon/flag-icon.min.css"/>
      <link type="text/css" rel="stylesheet" href="assets/plugins/simple-line-icons/css/simple-line-icons.css">
      <link type="text/css" rel="stylesheet" href="assets/plugins/ionicons/css/ionicons.css">
      <link type="text/css" rel="stylesheet" href="assets/plugins/toastr/toastr.min.css">
      <link type="text/css" rel="stylesheet" href="assets/plugins/chartist/chartist.css">
      <link type="text/css" rel="stylesheet" href="assets/plugins/apex-chart/apexcharts.css">
      <link type="text/css" rel="stylesheet" href="assets/css/app.min.css"/>
      <link type="text/css" rel="stylesheet" href="assets/css/style.min.css"/>
      <!-- Favicon -->	
      <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
      <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn"t work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <!--================================-->
      <!-- Page Container Start -->
      <!--================================-->
      <div class="page-container">
         <!--================================-->
         <!-- Page Sidebar Start -->
         <!--================================-->
         <div class="page-sidebar">
            <div class="logo">
               <a class="logo-img" href="index.html">		
               <img class="desktop-logo" src="assets/images/logo-white-soteria.png" alt="">
               <img class="small-logo" src="assets/images/small-logo.png" alt="">
               </a>			
               <i class="ion-ios-close-empty" id="sidebar-toggle-button-close"></i>
            </div>
            <!--================================-->
            <!-- Sidebar Menu Start -->
            <!--================================-->
            <div class="page-sidebar-inner">
               <div class="page-sidebar-menu">
                  <ul class="accordion-menu">

                     <li class="open active">
                        
                     <!--================================-->
               <!-- 우리제품  Menu Start -->
                     <li class="menu-divider mg-y-20-force"></li>
                     <li class="mg-20-force menu-elements">사용자 메뉴</li>
                     

                     <li>
                       <a href=""><i data-feather="home"></i>
                       <span>대시보드</span></a>
                     </li>
                    
                     <li>
                        <a href=""><i data-feather="pocket"></i>
                        <span>이상징후</span><i class="accordion-icon fa fa-angle-left"></i></a>
                        <ul class="sub-menu">
                           <li><a href="ui-alert.html">Nerotron AI</a></li>
                           <li><a href="ui-button.html">Syslog</a></li>
                        
                        </ul>
                     </li>

                     <li>
                       <a href=""><i data-feather="printer"></i>
                       <span>리포트</span></a>
                     </li>

                     <li>
                        <a href=""><i data-feather="settings"></i>
                        <span>설정</span><i class="accordion-icon fa fa-angle-left"></i></a>
                        <ul class="sub-menu">
                           <li><a href="ui-alert.html">개인설정</a></li>
                           <li><a href="ui-button.html">SBB관리 설정</a></li>
                        </ul>
                     </li>

               <!--/ 우리제품 Menu End -->
               <!--================================-->
                     <!-- <li class="open active"> -->
                   
                     <li>
                        <a href=""><i data-feather="mail"></i>
                        <span>Mailbox</span><span class="badge badge-warning ft-right">10+</span></a>
                        <ul class="sub-menu">
                           <li><a href="mailbox.html">Inbox</a></li>
                           <li><a href="mailbox-message.html">View Mail</a></li>
                           <li><a href="mailbox-compose.html">Compose Mail</a></li>
                        </ul>
                     </li>
                     <li>
                        <a href="widgets.html"><i data-feather="layout"></i>
                        <span>Widgets</span><span class="badge badge-info ft-right">Hot</span></a>
                     </li>

               
                     <li class="menu-divider mg-y-20-force"></li>
                     <li class="mg-20-force menu-others">Others</li>
                     <li>
                        <a href="../documentation/documentation.html"><i data-feather="life-buoy"></i>
                        <span>Documentation</span></a>
                     </li>
                     <li>
                        <a href="../documentation/changelog.html"><i data-feather="coffee"></i>
                        <span>Changelog</span><span class="badge badge-primary ft-right">1.7</span></a>
                     </li>
                  </ul>
               </div>
            </div>
            <!--/ Sidebar Menu End -->
            <!--================================-->
            <!-- Sidebar Footer Start -->
            <!--================================-->
            <div class="sidebar-footer">									
               <a class="pull-left" href="page-profile.html" data-toggle="tooltip" data-placement="top" data-original-title="Profile">
               <i data-feather="user" class="ht-15"></i></a>									
               <a class="pull-left " href="mailbox.html" data-toggle="tooltip" data-placement="top" data-original-title="Mailbox">
               <i data-feather="mail" class="ht-15"></i></a>
               <a class="pull-left" href="page-unlock.html" data-toggle="tooltip" data-placement="top" data-original-title="Lockscreen">
               <i data-feather="lock" class="ht-15"></i></a>
               <a class="pull-left" href="page-singin.html" data-toggle="tooltip" data-placement="top" data-original-title="Sing Out">
               <i data-feather="log-out" class="ht-15"></i></a>
            </div>
            <!--/ Sidebar Footer End -->
         </div>
         <!--/ Page Sidebar End -->
         <!--================================-->
         <!-- Page Content Start -->
         <!--================================-->
         <div class="page-content">
            <!--================================-->
            <!-- Page Header Start -->
            <!--================================-->
            <div class="page-header">
               <div class="search-form">
                  <form action="#" method="GET">
                     <div class="input-group">
                        <input class="form-control search-input" name="search" placeholder="Type something..." type="text"/>
                        <span class="input-group-btn">
                        <span id="close-search"><i class="ion-ios-close-empty"></i></span>
                        </span>
                     </div>
                  </form>
               </div>
               <!--================================-->
               <!-- Page Header  Start -->
               <!--================================-->
               <nav class="navbar navbar-expand-lg">
                  <ul class="list-inline list-unstyled mg-r-20">
                     <!-- Mobile Toggle and Logo -->
                     <li class="list-inline-item align-text-top"><a class="hidden-md hidden-lg" href="#" id="sidebar-toggle-button"><i class="ion-navicon tx-20"></i></a></li>
                     <!-- PC Toggle and Logo -->
                     <li class="list-inline-item align-text-top"><a class="hidden-xs hidden-sm" href="#" id="collapsed-sidebar-toggle-button"><i class="ion-navicon tx-20"></i></a></li>
                  </ul>
                  <!--================================-->
                  <!-- Mega Menu Start -->
                  <!--================================-->
                  <div class="collapse navbar-collapse">
                     <ul class="navbar-nav mr-auto">
                        <!-- Features -->
                        <li class="dropdown mega-dropdown mg-t-5">
                           <a class="dropdown-toggle btn mg-r-10" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false">Features
                           </a>
                           <div class="dropdown-menu mega-menu pd-15">
                              <div class="row">
                                 <div class="col-md-6 col-xl-3 sub-menu mb-xl-0 mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Featured</h6>
                                    <ul class="list-unstyled">
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-arrow-right-circle pl-1 pr-2"></i>Lorem ipsum dolor sit amet
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-arrow-right-circle pl-1 pr-2"></i>Consectetur adipiscing elit
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-arrow-right-circle pl-1 pr-2"></i>Sed do eiusmod tempor incididunt
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-arrow-right-circle pl-1 pr-2"></i>Ut labore et dolore magna
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-arrow-right-circle pl-1 pr-2"></i>Ut enim ad minim veniam
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                                 <div class="col-md-6 col-xl-3 sub-menu mb-xl-0 mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Related</h6>
                                    <ul class="list-unstyled">
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-options pl-1 pr-2"></i>Screen Protectors
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-options pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-options pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-options pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-options pl-1 pr-2"></i>Mobile Phone Lenses
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                                 <div class="col-md-6 col-xl-3 sub-menu mb-md-0 mb-xl-0 mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Design</h6>
                                    <ul class="list-unstyled">
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Lenses
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Screen Protectors
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                                 <div class="col-md-6 col-xl-3 sub-menu mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Programming</h6>
                                    <ul class="list-unstyled">
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Lenses
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Screen Protectors
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <!-- Technology -->
                        <li class="dropdown mega-dropdown mg-t-5">
                           <a class="dropdown-toggle btn mg-r-10" data-toggle="dropdown"
                              aria-haspopup="true" aria-expanded="false">Technology
                           </a>
                           <div class="dropdown-menu mega-menu pd-15">
                              <div class="row">
                                 <div class="col-md-12 col-xl-4 sub-menu mb-xl-0 mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Featured</h6>
                                    <!--Featured image-->
                                    <a href="" class="view overlay z-depth-1 p-0 mb-2">
                                       <img src="https://via.placeholder.com/500x400" class="img-fluid wd-100p" alt="">
                                       <div class="mask rgba-white-slight"></div>
                                    </a>
                                    <a class="tx-13 tx-normal" href="">Lorem ipsum dolor sit ipsum dolor sit <br/>
                                    <span class="mb-0 tx-10 tx-gray-500">03-03-2019, 11:32AM</span></a>
                                 </div>
                                 <div class="col-md-6 col-xl-4 sub-menu mb-md-0 mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Related</h6>
                                    <ul class="list-unstyled">
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Lenses
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Screen Protectors
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                                 <div class="col-md-6 col-xl-4 sub-menu mb-4">
                                    <h6 class="tx-dark tx-13 tx-semibold">Design</h6>
                                    <ul class="list-unstyled">
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Lenses
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Screen Protectors
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Accessories
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Chargers
                                          </a>
                                       </li>
                                       <li>
                                          <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                          <i class="icon-check pl-1 pr-2"></i>Mobile Phone Cables
                                          </a>
                                       </li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <!-- Ecommerce -->
                        <li class="dropdown mega-dropdown mg-t-5">
                           <a class="dropdown-toggle btn mg-r-10" data-toggle="dropdown"
                              aria-haspopup="false" aria-expanded="false">Ecommerce
                           </a>
                           <div class="dropdown-menu mega-menu pd-15">
                              <div class="row">
                                 <!-- Popular categories -->
                                 <div class="col-sm-6 col-lg-3 mb-4 hidden-md">
                                    <h6 class="tx-dark tx-13 tx-semibold">Popular Categories</h6>
                                    <a href="" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Gaming <span class="tx-10">(2412+)</span></span>
                                    </a>
                                    <a href="" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Smartphone <span class="tx-10">(2412+)</span></span>
                                    </a>
                                    <a href="" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Smart Watch <span class="tx-10">(1423+)</span></span>
                                    </a>
                                    <a href="" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Headphone <span class="tx-10">(4852+)</span></span>
                                    </a>
                                    <a href="" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Shoes <span class="tx-10">(3261+)</span></span>
                                    </a>
                                    <a href="" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Sunglasses <span class="tx-10">(1245+)</span></span>
                                    </a>
                                    <a href="#" class="align-items-center d-flex bd py-2 mb-2">
                                    <img src="https://via.placeholder.com/100x100" alt="" class="d-block wd-40">
                                    <span class="ml-2">Bags <span class="tx-10">(2543+)</span></span>
                                    </a>
                                 </div>
                                 <!-- / Popular categories -->
                                 <div class="col-6 col-lg-4 col-xl-3">
                                    <div class="row">
                                       <div class="col-12 sub-menu mb-4">
                                          <h6 class="tx-dark tx-13 tx-semibold">Smartphone</h6>
                                          <ul class="list-unstyled">
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Octa Core
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Deca Core
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Single SIM Card
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Dual SIM Card
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>4GB RAM
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>5.5-inch Display
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                       <div class="col-12 sub-menu mb-4">
                                          <h6 class="tx-dark tx-13 tx-semibold">Networking</h6>
                                          <ul class="list-unstyled">
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Wireless Routers
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Network Cards
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>3G Modems
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Wireless Routers
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Modem-Router Combos
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Networking Tools
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-6 col-lg-4 col-xl-3">
                                    <div class="row no-gutters">
                                       <div class="col-12 sub-menu mb-4">
                                          <h6 class="tx-dark tx-13 tx-semibold">Camera & Photos</h6>
                                          <ul class="list-unstyled">
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Camera & Photo
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Digital Cameras
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Camcorders
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Camera Drones
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Action Cameras
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Camera & Photo Accessories
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                       <div class="col-12 sub-menu mb-4">
                                          <h6 class="tx-dark tx-13 tx-semibold">Laptop & Tables</h6>
                                          <ul class="list-unstyled">
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Laptops
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Gaming Laptops
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Tablets
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>2 in 1 Tablets
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Phone Call Tablets
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>iPad
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="col-6 col-lg-4 col-xl-3">
                                    <div class="row no-gutters">
                                       <div class="col-12 sub-menu mb-4">
                                          <h6 class="tx-dark tx-13 tx-semibold">Accessories</h6>
                                          <ul class="list-unstyled">
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Accessories
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Power Bank
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Screen Protectors
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Cables
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Chargers
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Holders & Stands
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                       <div class="col-12 sub-menu mb-4">
                                          <h6 class="tx-dark tx-13 tx-semibold">Laptop Accessories</h6>
                                          <ul class="list-unstyled">
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Accessories
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Power Bank
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Screen Protectors
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Cables
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Mobile Phone Chargers
                                                </a>
                                             </li>
                                             <li>
                                                <a class="menu-item pl-0 tx-13 tx-normal" href="">
                                                <i class="icon-plus pl-1 pr-2"></i>Holders & Stands
                                                </a>
                                             </li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </li>
                     </ul>
                  </div>
                  <!--/ Mega Menu End-->
                  <!--/ Brand and Logo End -->
                  <!--================================-->
                  <!-- Header Right Start -->
                  <!--================================-->
                  <div class="header-right pull-right">
                     <ul class="list-inline justify-content-end">
                        <li class="list-inline-item align-middle"><a  href="#" id="search-button"><i class="ion-ios-search-strong tx-20"></i></a></li>
                        <!--================================-->
                        <!-- Languages Dropdown Start -->
                        <!--================================-->
                        <li class="list-inline-item align-middle dropdown hidden-xs">
                           <a  href="" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="flag-icon flag-icon-us"></i>
                           </a>
                           <ul class="dropdown-menu languages-dropdown shadow-2">
                              <li>
                                 <a href="" data-lang="en"><i class="flag-icon flag-icon-us mr-2"></i><span>English-US</span></a>
                              </li>
                              <li>
                                 <a href="" data-lang="es"><i class="flag-icon flag-icon-es mr-2"></i><span>Spanish</span></a>
                              </li>
                              <li>
                                 <a href="" data-lang="fr"><i class="flag-icon flag-icon-fr mr-2"></i><span>French</span></a>
                              </li>
                              <li>
                                 <a href="" data-lang="gr"><i class="flag-icon flag-icon-de mr-2"></i><span>German</span></a>
                              </li>
                              <li>
                                 <a href="" data-lang="ru"><i class="flag-icon flag-icon-ru mr-2"></i><span>Russian</span></a>
                              </li>
                              <li>
                                 <a href="" data-lang="ru"><i class="flag-icon flag-icon-gb mr-2"></i><span>English-UK</span></a>
                              </li>
                           </ul>
                        </li>
                        <!--/ Languages Dropdown End -->
                        <!--================================-->
                        <!-- Notifications Dropdown Start -->
                        <!--================================-->
                        <li class="list-inline-item dropdown hidden-xs">
                           <a class="notification-icon" href="" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="icon-bell tx-16"></i>
                           <span class="notification-count wave in"></span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-right shadow-2">
                              <!-- Top Notifications Area -->
                              <div class="top-notifications-area">
                                 <!-- Heading -->
                                 <div class="notifications-heading">
                                    <div class="heading-title">
                                       <h6>Notifications</h6>
                                    </div>
                                    <span>5+ New Notifications</span>
                                 </div>
                                 <div class="notifications-box" id="notificationsBox">
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="wd-45 ht-38 mg-r-15 d-flex align-items-center justify-content-center rounded-circle card-icon-success">
                                             <i class="fa fa-smile-o tx-success tx-16"></i>
                                          </div>
                                          <div>
                                             <span>Your order is placed</span>
                                             <span class="small tx-gray-600 ft-right">Jun 10</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry.</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="wd-45 ht-38 mg-r-15 d-flex align-items-center justify-content-center rounded-circle card-icon-warning">
                                             <i class="fa fa-bell tx-warning tx-16"></i>
                                          </div>
                                          <div>
                                             <span>Your item is shipped</span>
                                             <span class="small tx-gray-600 ft-right">Jun 05</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry.</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="wd-45 ht-38 mg-r-15 d-flex align-items-center justify-content-center rounded-circle card-icon-success">
                                             <i class="fa fa-check tx-success tx-16"></i>
                                          </div>
                                          <div>
                                             <span>New Message received</span>
                                             <span class="small tx-gray-600 ft-right">Jun 02</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry.</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="wd-45 ht-38 mg-r-15 d-flex align-items-center justify-content-center rounded-circle card-icon-danger">
                                             <i class="fa fa-heartbeat tx-danger tx-16"></i>
                                          </div>
                                          <div>
                                             <span>Payment failed!</span>
                                             <span class="small tx-gray-600 ft-right">May 29</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry.</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="wd-45 ht-38 mg-r-15 d-flex align-items-center justify-content-center rounded-circle card-icon-primary">
                                             <i class="fa fa-info tx-info tx-16"></i>
                                          </div>
                                          <div>
                                             <span>New document available</span>
                                             <span class="small tx-gray-600 ft-right">May 25</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry.</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="wd-45 ht-38 mg-r-15 d-flex align-items-center justify-content-center rounded-circle card-icon-primary">
                                             <i class="fa fa-info tx-info tx-16"></i>
                                          </div>
                                          <div>
                                             <span>New document available</span>
                                             <span class="small tx-gray-600 ft-right">May 08</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry.</div>
                                          </div>
                                       </div>
                                    </a>
                                 </div>
                                 <div class="notifications-footer">
                                    <a href="">View all Notifications</a>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <!--/ Notifications Dropdown End -->
                        <!--================================-->
                        <!-- Messages Dropdown Start -->
                        <!--================================-->
                        <li class="list-inline-item dropdown hidden-xs">
                           <a class="message-icon" href="" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i class="icon-envelope tx-16"></i>
                           <span class="messages-count wave in"></span>
                           </a>
                           <div class="dropdown-menu dropdown-menu-right shadow-2">
                              <div class="top-message-area">
                                 <div class="top-message-heading">
                                    <div class="heading-title">
                                       <h6>Messages</h6>
                                    </div>
                                    <span>5+ New Messages</span>
                                 </div>
                                 <div class="message-box" id="messageBox">
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="pd-r-15">
                                             <span class="avatar avatar-online">
                                             <img src="https://via.placeholder.com/100x100" class="img-fluid" alt="">
                                             <i></i>
                                             </span>
                                          </div>
                                          <div>
                                             <span>Mary Adams</span>
                                             <span class="small tx-gray-600 ft-right">30 minutes ago</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry...</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="pd-r-15">
                                             <span class="avatar avatar-online">
                                             <img src="https://via.placeholder.com/100x100" class="img-fluid" alt="">
                                             <i></i>
                                             </span>
                                          </div>
                                          <div>
                                             <span>Richards Caleb</span>
                                             <span class="small tx-gray-600 ft-right">12 hours ago</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry...</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="pd-r-15">
                                             <span class="avatar avatar-busy">
                                             <img src="https://via.placeholder.com/100x100" class="img-fluid" alt="">
                                             <i></i>
                                             </span>
                                          </div>
                                          <div>
                                             <span>Lane Richards</span>
                                             <span class="small tx-gray-600 ft-right">2 days ago</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry...</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="pd-r-15">
                                             <span class="avatar avatar-busy">
                                             <img src="https://via.placeholder.com/100x100" class="img-fluid" alt="">
                                             <i></i>
                                             </span>
                                          </div>
                                          <div>
                                             <span>Edward Lane</span>
                                             <span class="small tx-gray-600 ft-right">3 days ago</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry...</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="pd-r-15">
                                             <span class="avatar avatar-offline">
                                             <img src="https://via.placeholder.com/100x100" class="img-fluid" alt="">
                                             <i></i>
                                             </span>
                                          </div>
                                          <div>
                                             <span>Lane Richards</span>
                                             <span class="small tx-gray-600 ft-right">2 days ago</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry...</div>
                                          </div>
                                       </div>
                                    </a>
                                    <a class="dropdown-item list-group-item" href="javascript:void(0)">
                                       <div class="d-flex justify-content-between">
                                          <div class="pd-r-15">
                                             <span class="avatar avatar-offline">
                                             <img src="https://via.placeholder.com/100x100" class="img-fluid" alt="">
                                             <i></i>
                                             </span>
                                          </div>
                                          <div>
                                             <span>Edward Lane</span>
                                             <span class="small tx-gray-600 ft-right">3 days ago</span>
                                             <div class="tx-gray-600 tx-11">Dummy text of the printing and type setting industry...</div>
                                          </div>
                                       </div>
                                    </a>
                                 </div>
                                 <div class="top-message-footer">
                                    <a href="">View all Messages</a>
                                 </div>
                              </div>
                           </div>
                        </li>
                        <!--/ Messages Dropdown End -->
                        <!--================================-->
                        <!-- Profile Dropdown Start -->
                        <!--================================-->
                        <li class="list-inline-item dropdown">
                           <a  href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="select-profile">Hi, John!</span><img src="assets/images/avatar-placeholder.png"" class="img-fluid wd-35 ht-35 rounded-circle" alt=""></a>
                           <div class="dropdown-menu dropdown-menu-right dropdown-profile shadow-2">
                              <div class="user-profile-area">
                                 <div class="user-profile-heading">
                                    <div class="profile-thumbnail">
                                       <img src="https://via.placeholder.com/100x100" class="img-fluid wd-35 ht-35 rounded-circle" alt="">
                                    </div>
                                    <div class="profile-text">
                                       <h6>John Deo</h6>
                                       <span>email@example.com</span>
                                    </div>
                                 </div>
                                 <a href="" class="dropdown-item"><i class="icon-user" aria-hidden="true"></i> My profile</a>
                                 <a href="" class="dropdown-item"><i class="icon-envelope" aria-hidden="true"></i> Messages <span class="badge badge-success ft-right mg-t-3">10+</span></a>
                                 <a href="" class="dropdown-item"><i class="icon-settings" aria-hidden="true"></i> settings</a>
                                 <a href="" class="dropdown-item"><i class="icon-share" aria-hidden="true"></i> My Activity <span class="badge badge-warning ft-right mg-t-3">5+</span></a>
                                 <a href="" class="dropdown-item"><i class="icon-cloud-download" aria-hidden="true"></i> My Download <span class="badge badge-success ft-right mg-t-3">10+</span></a>
                                 <a href="" class="dropdown-item"><i class="icon-heart" aria-hidden="true"></i> Support</a>
                                 <a href="page-singin.html" class="dropdown-item"><i class="icon-power" aria-hidden="true"></i> Sign-out</a>
                              </div>
                           </div>
                        </li>
                        <!-- Profile Dropdown End -->
                        <!--================================-->
                        <!-- Setting Sidebar Start -->
                        <!--================================-->
                        <li class="list-inline-item dropdown hidden-xs">
                           <a class="settings-icon" id="settingSidebarTrigger" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <!-- <i class="icon-settings tx-16"></i> -->
                           <i class="mdi mdi-server-security">::before</i>
                           </a>					   
                        </li>
                        <!--/ Setting Sidebar End -->
                     </ul>
                  </div>
                  <!--/ Header Right End -->
               </nav>
            </div>
            <!--/ Page Header End -->
            <!--================================-->
            <!-- Page Inner Start -->
            <!--================================-->
            <div class="page-inner">
               <!-- Main Wrapper -->
               <div id="main-wrapper">
                  <!--================================-->
                  <!-- Breadcrumb Start -->
                  <!--================================-->
                  <div class="pageheader pd-t-25 pd-b-35">
                     <div class="pd-t-5 pd-b-5">
                        <h1 class="pd-0 mg-0 tx-20">Server BlackBox Monitoring</h1>
                     </div>
                     <div class="breadcrumb pd-0 mg-0">
                        <a class="breadcrumb-item" href="index.html"><i class="icon ion-ios-home-outline"></i> Home</a>
                        <a class="breadcrumb-item" href="">Dashboard</a>
                        <span class="breadcrumb-item active">SBB Anomaly Monitoring</span>
                     </div>
                  </div>
                  <!--/ Breadcrumb End -->
                  <!--================================-->
                  <!-- Count Card Start -->
                  <!--================================-->
                  <div class="row row-xs clearfix">
                     <div class="col-sm-6 col-xl-3">
                        <div class="card mg-b-20">
                           <div class="card-body pd-y-0">
                              <div class="custom-fieldset mb-4">
                                 <div class="clearfix">
                                    <label>오늘의 Neurotron Total</label>
                                 </div>
                                 <div class="d-flex align-items-center text-dark">
                                    <div class="wd-40 wd-md-50 ht-40 ht-md-50 mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded card-icon-warning">
                                       <i class="icon-screen-desktop tx-warning tx-20"></i>
                                    </div>
                                    <div>
                                       <h2 class="tx-20 tx-sm-18 tx-md-24 mb-0 mt-2 mt-sm-0 tx-normal tx-rubik tx-dark"><span class="counter">5,300</span><small class="tx-15">detected</small></h2>
                                       <div class="d-flex align-items-center tx-gray-500"><span class="text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+451</span>avg</div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-sm-6 col-xl-3">
                        <div class="card mg-b-20">
                           <div class="card-body pd-y-0">
                              <div class="custom-fieldset mb-4">
                                 <div class="clearfix">
                                    <label class="tx-20">오늘의 Syslog Total</label>
                                 </div>
                                 <div class="d-flex align-items-center text-dark">
                                    <div class="wd-40 wd-md-50 ht-40 ht-md-50 mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded card-icon-success">
                                       <i class="icon-diamond tx-success tx-20"></i>
                                    </div>
                                    <div>
                                       <h2 class="tx-20 tx-sm-18 tx-md-24 mb-0 mt-2 mt-sm-0 tx-normal tx-rubik tx-dark"><span class="counter">1,500</span><small class="tx-15">Alarm</small></h2>
                                       <div class="d-flex align-items-center tx-gray-500"><span class="text-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>-310</span>avg</div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-sm-6 col-xl-3">
                        <div class="card mg-b-20">
                           <div class="card-body pd-y-0">
                              <div class="custom-fieldset mb-4">
                                 <div class="clearfix">
                                    <label>안읽음</label>
                                 </div>
                                 <div class="d-flex align-items-center text-dark">
                                    <div class="wd-40 wd-md-50 ht-40 ht-md-50 mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded card-icon-primary">
                                       <i class="icon-handbag tx-primary tx-20"></i>
                                    </div>
                                    <div>
                                       <h2 class="tx-20 tx-sm-18 tx-md-24 mb-0 mt-2 mt-sm-0 tx-normal tx-rubik tx-dark"><span class="counter">4,900</span><small class="tx-15"></small></h2>
                                       <div class="d-flex align-items-center tx-gray-500"><span class="text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+350</span>avg</div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-sm-6 col-xl-3">
                        <div class="card mg-b-20">
                           <div class="card-body pd-y-0">
                              <div class="custom-fieldset mb-4">
                                 <div class="clearfix">
                                    <label>보류</label>
                                 </div>
                                 <div class="d-flex align-items-center text-dark">
                                    <div class="wd-40 wd-md-50 ht-40 ht-md-50 mg-r-10 mg-md-r-10 d-flex align-items-center justify-content-center rounded card-icon-danger">
                                       <i class="icon-speedometer tx-danger tx-20"></i>
                                    </div>
                                    <div>
                                       <h2 class="tx-20 tx-sm-18 tx-md-24 mb-0 mt-2 mt-sm-0 tx-normal tx-rubik tx-dark"><span class="counter">9,900</span><small class="tx-15"></small></h2>
                                       <div class="d-flex align-items-center tx-gray-500"><span class="text-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>+130</span>avg</div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!--/ Count Card End -->
                  <div class="row row-xs clearfix">
                     <!--================================-->
                     <!-- Support Tickets Metrics Start -->
                     <!--================================-->              
                     <div class="col-xl-12">
                        <div class="card mg-b-20">
                           <div class="card-header">
                              <h4 class="card-header-title">
                                 알람내역 현황
                              </h4>
                              <div class="card-header-btn">
                                 <a href="" data-toggle="collapse" class="btn card-collapse" data-target="#supportTicketsMetrics" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                                 <a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
                                 <a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                                 <a href="" data-toggle="remove" class="btn card-remove" data-original-title="" title="" data-init="true"><i class="ion-android-close"></i></a>
                              </div>
                           </div>
                           <div class="card-body collapse show" id="supportTicketsMetrics">
                              <div class="row">
                                 <div class="col-xl-9">
                                    <div id="supportTicketchart"></div>
                                 </div>
                                 <div class="col-xl-3">
                                    <div class="row">
                                       <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40 mg-xl-t-0">
                                          <div class="d-flex justify-content-between">
                                             <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Neurotron Detected</h6>
                                             <span class="tx-10 tx-gray-500">1,465</span>
                                          </div>
                                          <div class="d-flex align-items-end justify-content-between mg-b-5">
                                             <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">1,860</span></h5>
                                             <div class="d-flex align-items-center tx-gray-600"><span class="small text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+351</span></div>
                                          </div>
                                          <div class="progress ht-3 mg-b-0 op-5">
                                             <div class="progress-bar bg-teal wd-70p" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                          </div>
                                       </div>
                                       <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40">
                                          <div class="d-flex justify-content-between">
                                             <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Solved Alarms</h6>
                                             <span class="tx-10 tx-gray-500">6,225</span>
                                          </div>
                                          <div class="d-flex align-items-end justify-content-between mg-b-5">
                                             <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">2,530</span></h5>
                                             <div class="d-flex align-items-center tx-gray-600"><span class="small text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+425</span></div>
                                          </div>
                                          <div class="progress ht-3 mg-b-0 op-5">
                                             <div class="progress-bar bg-success wd-80p" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                          </div>
                                       </div>
                                       <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40">
                                          <div class="d-flex justify-content-between">
                                             <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Opened Alarms</h6>
                                             <span class="tx-10 tx-gray-500">9,465</span>
                                          </div>
                                          <div class="d-flex align-items-end justify-content-between mg-b-5">
                                             <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">2,148</span></h5>
                                             <div class="d-flex align-items-center tx-gray-600"><span class="small text-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>-211</span></div>
                                          </div>
                                          <div class="progress ht-3 mg-b-0 op-5">
                                             <div class="progress-bar bg-danger wd-70p" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                          </div>
                                       </div>
                                       <div class="col-sm-12 col-md-6 col-xl-12 mg-t-40">
                                          <div class="d-flex justify-content-between">
                                             <h6 class="tx-uppercase tx-10 mg-b-0 tx-gray-500">Unresolved Alarms</h6>
                                             <span class="tx-10 tx-gray-500">1,265</span>
                                          </div>
                                          <div class="d-flex align-items-end justify-content-between mg-b-5">
                                             <h5 class="mg-b-0 tx-dark tx-rubik tx-normal"><span class="counter">1,290</span></h5>
                                             <div class="d-flex align-items-center tx-gray-600"><span class="small text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+151</span></div>
                                          </div>
                                          <div class="progress ht-3 mg-b-0 op-5">
                                             <div class="progress-bar bg-primary wd-65p" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--/ Support Tickets Metrics End -->
                     <!--================================-->
                     <!--  Annual Report Start-->
                     <!--================================-->
                     <div class="col-lg-12 col-xl-8 col-12">
                        <div class="card mg-b-20">
                           <div class="card-header">
                              <h4 class="card-header-title">
                                 Annual Reports
                              </h4>
                              <div class="card-header-btn">
                                 <a  href="#" data-toggle="collapse" class="btn card-collapse" data-target="#annualReports" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                                 <a href="#" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
                                 <a href="#" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                                 <a href="#" data-toggle="remove" class="btn card-remove"><i class="ion-ios-trash-outline"></i></a>
                              </div>
                           </div>
                           <div class="collapse show" id="annualReports">
                              <div class="card-body pd-t-0 pd-b-20">
                                 <div class="row clearfix">
                                    <div class="col-lg-4 col-md-4 col-sm-12 mg-y-20">
                                       <span class="tx-uppercase tx-10 mg-b-10">Sales Report</span>
                                       <h3 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark">$<span class="counter">580,350</span><small class="tx-15">.50</small></h3>
                                       <div class="tx-11 d-flex tx-gray-500"><span class="text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+535%</span>avg. sales per year</div>
                                       <p class="mg-t-10 mg-b-0 tx-12 tx-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. <a href="">Learn More</a></p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 mg-y-20">
                                       <span class="tx-uppercase tx-10 mg-b-10">Annual Revenue</span>
                                       <h3 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark">$<span class="counter">980,830</span><small class="tx-15">.50</small></h3>
                                       <div class="tx-11 d-flex tx-gray-500"><span class="text-success mr-2 d-flex align-items-center"><i class="ion-android-arrow-up mr-1"></i>+230%</span>avg. sales per year</div>
                                       <p class="mg-t-10 mg-b-0 tx-12 tx-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. <a href="">Learn More</a></p>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12 mg-y-20">
                                       <span class="tx-uppercase tx-10 mg-b-10">Total Profit</span>
                                       <h3 class="tx-20 tx-sm-18 tx-md-24 mg-b-0 tx-normal tx-rubik tx-dark">$<span class="counter">730,360</span><small class="tx-15">.50</small></h3>
                                       <div class="tx-11 d-flex tx-gray-500"><span class="text-danger mr-2 d-flex align-items-center"><i class="ion-android-arrow-down mr-1"></i>-135%</span>avg. sales per year</div>
                                       <p class="mg-t-10 mg-b-0 tx-12 tx-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore. <a href="">Learn More</a></p>
                                    </div>
                                 </div>
                                 <div class="d-block clearfix">
                                    <canvas id="annualReport"></canvas>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- / Annual Report End -->
                     <!--================================-->
                     <!-- Sales+Order+Revenue  Start -->
                     <!--================================-->
                     <div class="col-lg-12 col-xl-4">
                        <div class="row">
                           <div class="col-lg-6 col-xl-12">
                              <div class="card mg-b-20">
                                 <div class="card-body">
                                    <div id="sales_slider" class="carousel slide" data-ride="carousel" data-interval="4000">
                                       <div class="d-flex justify-content-between align-items-center mb-3">
                                          <span class="tx-10 tx-uppercase tx-gray-500">
                                          Sales
                                          </span>
                                          <div class="btn-group border-0">
                                             <div class="sw-carousel-slider-control">
                                                <a class="tx-dark carousel-control-prev" href="#sales_slider" data-slide="prev">
                                                <i class="fa fa-angle-left"></i>
                                                </a>
                                                <a class="tx-dark carousel-control-next" href="#sales_slider" data-slide="next">
                                                <i class="fa fa-angle-right"></i>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="carousel-inner">
                                          <div class="carousel-item active">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Sales Report</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+110</span>) higher than previous day</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$2,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="salesSpark1"></div>
                                             </div>
                                          </div>
                                          <div class="carousel-item ">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Annual Revenue</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+150</span>) higher than previous week</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$4,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="salesSpark2"></div>
                                             </div>
                                          </div>
                                          <div class="carousel-item">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Total Profit</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+170</span>) higher than previous month</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$5,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="salesSpark3"></div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-6 col-xl-12">
                              <div class="card mg-b-20">
                                 <div class="card-body">
                                    <div id="order_slider" class="carousel slide" data-ride="carousel" data-interval="5000">
                                       <div class="d-flex justify-content-between align-items-center mb-3">
                                          <span class="tx-10 tx-uppercase tx-gray-500">
                                          Order
                                          </span>
                                          <div class="btn-group border-0">
                                             <div class="sw-carousel-slider-control">
                                                <a class="tx-dark carousel-control-prev" href="#order_slider" data-slide="prev">
                                                <i class="fa fa-angle-left"></i>
                                                </a>
                                                <a class="tx-dark carousel-control-next" href="#order_slider" data-slide="next">
                                                <i class="fa fa-angle-right"></i>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="carousel-inner">
                                          <div class="carousel-item active">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Sales Report</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+180</span>) higher than previous day</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$6,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="orderSpark1"></div>
                                             </div>
                                          </div>
                                          <div class="carousel-item ">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Annual Revenue</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+140</span>) higher than previous week</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$7,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="orderSpark2"></div>
                                             </div>
                                          </div>
                                          <div class="carousel-item">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Total Profit</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+120</span>) higher than previous month</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$8,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="orderSpark3"></div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-6 col-xl-12 hidden-md">
                              <div class="card mg-b-20">
                                 <div class="card-body">
                                    <div id="revenue_slider" class="carousel slide" data-ride="carousel" data-interval="6000">
                                       <div class="d-flex justify-content-between align-items-center mb-3">
                                          <span class="tx-10 tx-uppercase tx-gray-500">
                                          Revenue
                                          </span>
                                          <div class="btn-group border-0">
                                             <div class="sw-carousel-slider-control">
                                                <a class="tx-dark carousel-control-prev" href="#revenue_slider" data-slide="prev">
                                                <i class="fa fa-angle-left"></i>
                                                </a>
                                                <a class="tx-dark carousel-control-next" href="#revenue_slider" data-slide="next">
                                                <i class="fa fa-angle-right"></i>
                                                </a>
                                             </div>
                                          </div>
                                       </div>
                                       <div class="carousel-inner">
                                          <div class="carousel-item active">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Sales Report</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+110</span>) higher than previous day</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$9,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="revenueSpark1"></div>
                                             </div>
                                          </div>
                                          <div class="carousel-item">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Annual Revenue</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+120</span>) higher than previous week</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase mg-b-0">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$7,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="revenueSpark2"></div>
                                             </div>
                                          </div>
                                          <div class="carousel-item">
                                             <div class="d-flex pd-b-20">
                                                <div class="mg-t-15">
                                                   <h3 class="tx-uppercase tx-11 tx-spacing-1 tx-semibold mg-b-0 tx-dark">Total Profit</h3>
                                                   <p class="tx-10 tx-normal mb-0 tx-gray-500">(<span class="text-success tx-10"><i class="ion-android-arrow-up mr-1"></i>+150</span>) higher than previous month</p>
                                                </div>
                                                <div class="mg-l-auto tx-right">
                                                   <span class="tx-10 tx-uppercase tx-spacing-1 tx-medium">Earning</span>
                                                   <h5 class="tx-dark tx-16 mg-b-0 tx-normal tx-rubik">$5,562</h5>
                                                </div>
                                             </div>
                                             <div class="clearfix">
                                                <div id="revenueSpark3"></div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- / Sales+Order+Revenue  End -->
               
            
                  
               </div>
               <!--/ Main Wrapper End -->
            </div>
            <!--/ Page Inner End -->
            <!--================================-->
            <!-- Page Footer Start -->	
            <!--================================-->
            <footer class="page-footer">
               <div class="pd-t-4 pd-b-0 pd-x-20">
                  <div class="tx-10 tx-uppercase">
                     <p class="pd-y-10 mb-0">Copyright&copy; 2019 | All rights reserved. | Created By <a href="http://themeforest.net/user/colorlibcode" target="_blank">ColorlibCode</a></p>
                  </div>
               </div>
            </footer>
            <!--/ Page Footer End -->		
         </div>
         <!--/ Page Content End -->
      </div>
      <!--/ Page Container End -->
      <!--================================-->
      <!-- Scroll To Top Start-->
      <!--================================-->	
      <a href="" data-click="scroll-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
      <!--/ Scroll To Top End -->
      <!--================================-->
      <!-- Setting Sidebar Start -->
      <!--================================-->	  
      <div class="setting-sidebar"  id="settingSidebar">
         <div class="wrapper"   id="settingSidebarScroll">

            <ul class="nav nav-tabs nav-pills nav-fill">
               <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#nav-notifications">Notifications</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link active show" data-toggle="tab" href="#nav-activity">Activity</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#nav-setting">Setting</a>
               </li>
            </ul>
            <!-- Notification -->
         <!--    <div class="tab-content">
               <div class="tab-pane fade" id="nav-notifications">
                  <div class="card-activities mg-t-40-force">
                     <div class="media-list">
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-primary op-6">
                              <i class="icon ion-stats-bars"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Report has been updated</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-success op-6">
                              <i class="icon ion-trophy"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Achievement Unlocked</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-purple op-6">
                              <i class="icon ion-image"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Added new images</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-danger op-6">
                              <i class="icon ion-stats-bars"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Report has been updated</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-warning op-6">
                              <i class="icon ion-trophy"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Achievement Unlocked</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-purple op-6">
                              <i class="icon ion-image"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Added new images</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-danger op-6">
                              <i class="icon ion-stats-bars"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Report has been updated</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-warning op-6">
                              <i class="icon ion-trophy"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Achievement Unlocked</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                        <div class="media pd-b-30">
                           <div class="activity-icon bg-teal op-6">
                              <i class="icon ion-image"></i>
                           </div>
                           <div class="ml-3 align-items-center">
                              <h6 class="tx-13 tx-dark">Added new images</h6>
                              <p class="tx-12 mb-0">Aenean vulputate eleifend tellus ligula, porttitor.</p>
                              <span class="small">05:00 PM Sun, 02 Feb 2019</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div> -->
               <!-- Activity -->
               <div class="tab-pane fade active show" id="nav-activity">
                  <div class="activity mg-t-40-force">
                     <i class="icon-check bg-soft-primary"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Task finished</h6>
                              <span class="small">02 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-teal"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Video conference</h6>
                              <span class="small">04 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-warning"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Task Overdue</h6>
                              <span class="small">06 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-danger"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Added your friend list</h6>
                              <span class="small">07 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-success"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Task Overdue</h6>
                              <span class="small">09 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-primary"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Submit a blog</h6>
                              <span class="small">11 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-teal"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">New Request</h6>
                              <span class="small">12 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                     <i class="icon-check bg-soft-warning"></i>
                     <div class="time-item">
                        <div class="item-info ">
                           <div class="d-flex justify-content-between align-items-center">
                              <h6 class="tx-dark tx-13 mb-0">Task Overdue</h6>
                              <span class="small">19 Feb 2019</span>
                           </div>
                           <p class="mt-2 tx-12 mg-b-5">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                           <div><span class="badge bg-soft-primary tx-uppercase">Design</span> <span class="badge bg-soft-danger  tx-uppercase">HTML</span> <span class="badge bg-soft-success  tx-uppercase">Css</span> <span class="badge bg-soft-teal  tx-uppercase">Dashboard</span></div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- Setting -->
               <div class="tab-pane fade" id="nav-setting">
                  <h5 class="tx-dark tx-13 tx-semibold mg-t-30">Notification Setting</h5>
                  <ul class="list-unstyled">
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Notify when receive email</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary">
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Receive calls in meeting</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Update on task completion</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>New user registration</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Files uploaded successfully</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                  </ul>
                  <h5 class="tx-dark tx-13 tx-semibold mg-t-50">File Sharing Setting</h5>
                  <ul class="list-unstyled">
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Notify when receive email</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Receive calls in meeting</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Update on task completion</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>New user registration</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Files uploaded successfully</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                  </ul>
                  <h5 class="tx-dark tx-13 tx-semibold mg-t-50">Reports Setting</h5>
                  <ul class="list-unstyled">
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Generate Reports</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Receive calls in meeting</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Enable Report Export</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>New user registration</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Allow Data Collection</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                  </ul>
                  <h5 class="tx-dark tx-13 tx-semibold mg-t-50">System Setting</h5>
                  <ul class="list-unstyled">
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Automatic updates</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Receive calls in meeting</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>Current statistics</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>New user registration</span>
                        <input type="checkbox" checked data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                     <li class="d-flex justify-content-between mg-y-20">
                        <span>User suggestions</span>
                        <input type="checkbox" data-toggle="toggle" data-size="xs"  data-onstyle="primary" >
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <!--/ Setting Sidebar End  -->      
      <!--================================-->
      <!-- Demo Sidebar Start -->
      <!--================================-->	  
      <div class="setting-sidebar" id="demoSettingSidebar">
         <div class="wrapper" id="demoSettingSidebarScroll">
            <a class="demo-settings-icon" id="demoSettingSidebarTrigger" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           <!--  <i class="icon-settings tx-16"></i> -->
             <!-- <i class="mdi mdi-server-security tx-16"></i>  -->
            SBB LIST
            </a>	
      <!--       <ul class="nav nav-tabs nav-pills nav-fill">
               <li class="nav-item">
                  <a class="nav-link active show" data-toggle="tab" href="#nav-dashboard">Dashboard</a>
               </li>
               <li class="nav-item">
                  <a class="nav-link" data-toggle="tab" href="#nav-frontend">Frontend</a>
               </li>
            </ul> -->

            <!-- Host-SBB list -->
            <!--================================-->
                     <!-- Transactions History Start -->
                     <!--================================-->   
                     <div class="col-xl-4">
                        <div class="card mg-b-20">
                           <div class="card-header">
                              <h4 class="card-header-title">
                                 관리하는 SBB LIST
                              </h4>
                           <!--    <div class="card-header-btn">
                                 <a href="" data-toggle="collapse" class="btn card-collapse" data-target="#transactionsHistory" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                                 <a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
                                 <a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                                 <a href="" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a>
                              </div> -->
                           </div>
                           <div class="collapse show" id="transactionsHistory">
                              <div class="card-body pd-x-0 pd-y-0">
                                 <ul class="list-group list-group-flush">
                                    <li class="list-group-item d-flex pd-y-10 pd-sm-x-15">
                                       <div class="d-none d-sm-block"><span class="wd-45 ht-45 d-flex align-items-center justify-content-center rounded card-icon-warning"><i class="cf cf-btc tx-16 tx-warning"></i></span></div>
                                       <div class="pd-sm-l-10">
                                          <p class="tx-dark mg-b-0">SBB1</p>
                                          <span class="tx-12 mg-b-0 tx-gray-500">Host: 10.0.0.1</span>
                                       </div>
                                       <div class="mg-l-auto text-right">
                                          <p class="tx-dark mg-b-0">192.168.0.1</p>
                                          <span class="tx-success tx-12">disk usage%
                                          </span>
                                          <p class="tx-12"> detection n개</p>
                                       </div>

                                    </li>
                                    <li class="list-group-item d-flex pd-y-10 pd-sm-x-15">
                                       <div class="d-none d-sm-block"><span class="wd-45 ht-45 d-flex align-items-center justify-content-center rounded card-icon-primary"><i class="cf cf-eth tx-16 tx-primary"></i></span></div>
                                       <div class="pd-sm-l-10">
                                          <p class="tx-dark mg-b-0">Received ETH</p>
                                          <span class="tx-12 mg-b-0 tx-gray-500">Wallet: #a4ddfsasd5f5asdf8dsa4f</span>
                                       </div>
                                       <div class="mg-l-auto text-right">
                                          <p class="tx-dark mg-b-0">+20.022050 ETH</p>
                                          <span class="tx-success tx-12">+$80.00 USD</span>
                                       </div>
                                    </li>
                                    <li class="list-group-item d-flex pd-y-10 pd-sm-x-15">
                                       <div class="d-none d-sm-block"><span class="wd-45 ht-45 d-flex align-items-center justify-content-center rounded card-icon-warning"><i class="cf cf-btc tx-16 tx-warning"></i></span></div>
                                       <div class="pd-sm-l-10">
                                          <p class="tx-dark mg-b-0">Sent BTC</p>
                                          <span class="tx-12 mg-b-0 tx-gray-500">Wallet: #a4ddfsasd5f5asdf8dsa4f</span>
                                       </div>
                                       <div class="mg-l-auto text-right">
                                          <p class="tx-dark mg-b-0">-01.005000 BTC</p>
                                          <span class="tx-danger tx-12">-$35.00 USD</span>
                                       </div>
                                    </li>
                                    <li class="list-group-item d-flex pd-y-10 pd-sm-x-15">
                                       <div class="d-none d-sm-block"><span class="wd-45 ht-45 d-flex align-items-center justify-content-center rounded card-icon-success"><i class="cf cf-btc-alt tx-16 tx-success"></i></span></div>
                                       <div class="pd-sm-l-10">
                                          <p class="tx-dark mg-b-0">Received BTC Cash</p>
                                          <span class="tx-12 mg-b-0 tx-gray-500">Wallet: #a4ddfsasd5f5asdf8dsa4f</span>
                                       </div>
                                       <div class="mg-l-auto text-right">
                                          <p class="tx-dark mg-b-0">+01.006000 BTC</p>
                                          <span class="tx-success tx-12">+$50.00 USD</span>
                                       </div>
                                    </li>
                                    <li class="list-group-item d-flex pd-y-10 pd-sm-x-15">
                                       <div class="d-none d-sm-block"><span class="wd-45 ht-45 d-flex align-items-center justify-content-center rounded card-icon-primary"><i class="cf cf-eth tx-16 tx-primary"></i></span></div>
                                       <div class="pd-sm-l-10">
                                          <p class="tx-dark mg-b-0">Sent ETH</p>
                                          <span class="tx-12 mg-b-0 tx-gray-500">Wallet: #a4ddfsasd5f5asdf8dsa4f</span>
                                       </div>
                                       <div class="mg-l-auto text-right">
                                          <p class="tx-dark mg-b-0">-03.550050 ETH</p>
                                          <span class="tx-danger tx-12">-$30.00 USD</span>
                                       </div>
                                    </li>
                                    <li class="list-group-item d-flex pd-y-10 pd-sm-x-15">
                                       <div class="d-none d-sm-block"><span class="wd-45 ht-45 d-flex align-items-center justify-content-center rounded card-icon-success"><i class="cf cf-btc-alt tx-16 tx-success"></i></span></div>
                                       <div class="pd-sm-l-10">
                                          <p class="tx-dark mg-b-0">Sent BTC Cash</p>
                                          <span class="tx-12 mg-b-0 tx-gray-500">Wallet: #a4ddfsasd5f5asdf8dsa4f</span>
                                       </div>
                                       <div class="mg-l-auto text-right">
                                          <p class="tx-dark mg-b-0">-05.050050 BTC</p>
                                          <span class="tx-danger tx-12">-$25.00 USD</span>
                                       </div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--/ Transactions History End -->
                      <!--================================-->
                     <!-- Courses Details Start -->
                     <!--================================-->
                     <div class="col-lg-12 col-xl-6">
                        <div class="card mg-b-20">
                           <div class="card-header">
                              <h4 class="card-header-title">
                                 Courses Details
                              </h4>
                              <div class="card-header-btn">
                                 <a  href="" data-toggle="collapse" class="btn card-collapse" data-target="#coursesDetails" aria-expanded="true"><i class="ion-ios-arrow-down"></i></a>
                                 <a href="" data-toggle="refresh" class="btn card-refresh"><i class="ion-android-refresh"></i></a>
                                 <a href="" data-toggle="expand" class="btn card-expand"><i class="ion-android-expand"></i></a>
                                 <a href="" data-toggle="remove" class="btn card-remove"><i class="ion-android-close"></i></a>
                              </div>
                           </div>
                           <div class="card-body pd-0 collapse show" id="coursesDetails">
                              <div class="table-responsive">
                                 <table class="table table-hover text-nowrap">
                                    <thead class="tx-10 tx-uppercase">
                                       <tr>
                                          <th>Icon</th>
                                          <th>Details</th>
                                          <th class="tx-center">Student</th>
                                          <th class="tx-right">Action</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                       <tr>
                                          <td><span class="wd-40 ht-30 bg-warning d-flex align-items-center justify-content-center"><i class="fa fa-html5 tx-20 tx-white"></i></span></td>
                                          <td>
                                             <a href="" >HTML5 Fundamentals</a>
                                             <div class="clearfix"> 
                                                <span class="float-left tx-10 tx-gray-500">45% Increase</span> 
                                                <span class="float-right">
                                                <i class="ion-android-arrow-up mr-1 tx-success"></i><span class="tx-dark">92</span><span class="small mg-b-0">/100</span>
                                                </span>
                                             </div>
                                             <div class="progress ht-3 op-5">
                                                <div class="progress-bar bg-primary wd-90p" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                             </div>
                                          </td>
                                          <td>
                                             <ul class="list-unstyled mg-0 d-flex align-items-center justify-content-center">
                                                <li data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Tommy C">
                                                   <div class="avatar"><span class="bg-soft-success avatar-initial rounded-circle bg-primary">C</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Alison G">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">A</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Brad P">
                                                   <div class="avatar"><span class="bg-soft-warning avatar-initial rounded-circle bg-primary">B</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Saun K">
                                                   <div class="avatar"><span class="bg-soft-danger avatar-initial rounded-circle bg-primary">S</span></div>
                                                </li>
                                                <li class="mg-l--10" data-original-title="" title="">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">5+</span></div>
                                                </li>
                                             </ul>
                                          </td>
                                          <td class="tx-right">
                                             <div class="dropdown">
                                                <a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-options"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-close mr-2"></i>Remove</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-action-redo mr-2"></i>Send Email</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-cloud-download mr-2"></i>Export as PDF</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-drawer mr-2"></i>Save as Bookmark</a></li>
                                                </ul>
                                             </div>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td><span class="wd-40 ht-30 bg-danger d-flex align-items-center justify-content-center"><i class="fa fa-css3 tx-20 tx-white"></i></span></td>
                                          <td>
                                             <a href="" >CSS3 Fundamentals</a>
                                             <div class="clearfix"> 
                                                <span class="float-left tx-10 tx-gray-500">45% Increase</span> 
                                                <span class="float-right">
                                                <i class="ion-android-arrow-up mr-1 tx-success"></i><span class="tx-dark">87</span><span class="small mg-b-0">/100</span>
                                                </span>
                                             </div>
                                             <div class="progress ht-3 op-5">
                                                <div class="progress-bar bg-danger wd-85p" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                             </div>
                                          </td>
                                          <td>
                                             <ul class="list-unstyled mg-0 d-flex align-items-center justify-content-center">
                                                <li data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Tommy C">
                                                   <div class="avatar"><span class="bg-soft-success avatar-initial rounded-circle bg-primary">C</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Alison G">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">A</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Brad P">
                                                   <div class="avatar"><span class="bg-soft-warning avatar-initial rounded-circle bg-primary">B</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Saun K">
                                                   <div class="avatar"><span class="bg-soft-danger avatar-initial rounded-circle bg-primary">S</span></div>
                                                </li>
                                                <li class="mg-l--10" data-original-title="" title="">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">5+</span></div>
                                                </li>
                                             </ul>
                                          </td>
                                          <td class="tx-right">
                                             <div class="dropdown">
                                                <a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-options"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-close mr-2"></i>Remove</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-action-redo mr-2"></i>Send Email</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-cloud-download mr-2"></i>Export as PDF</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-drawer mr-2"></i>Save as Bookmark</a></li>
                                                </ul>
                                             </div>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td><span class="wd-40 ht-30 bg-teal d-flex align-items-center justify-content-center"><i class="fa fa-vimeo tx-20 tx-white"></i></span></td>
                                          <td>
                                             <a href="" >VueJS Fundamentals</a>
                                             <div class="clearfix"> 
                                                <span class="float-left tx-10 tx-gray-500">45% Increase</span> 
                                                <span class="float-right">
                                                <i class="ion-android-arrow-up mr-1 tx-success"></i><span class="tx-dark">80</span><span class="small mg-b-0">/100</span>
                                                </span>
                                             </div>
                                             <div class="progress ht-3 op-5">
                                                <div class="progress-bar bg-success wd-85p" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                             </div>
                                          </td>
                                          <td>
                                             <ul class="list-unstyled mg-0 d-flex align-items-center justify-content-center">
                                                <li data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Tommy C">
                                                   <div class="avatar"><span class="bg-soft-success avatar-initial rounded-circle bg-primary">C</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Alison G">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">A</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Brad P">
                                                   <div class="avatar"><span class="bg-soft-warning avatar-initial rounded-circle bg-primary">B</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Saun K">
                                                   <div class="avatar"><span class="bg-soft-danger avatar-initial rounded-circle bg-primary">S</span></div>
                                                </li>
                                                <li class="mg-l--10" data-original-title="" title="">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">5+</span></div>
                                                </li>
                                             </ul>
                                          </td>
                                          <td class="tx-right">
                                             <div class="dropdown">
                                                <a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-options"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-close mr-2"></i>Remove</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-action-redo mr-2"></i>Send Email</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-cloud-download mr-2"></i>Export as PDF</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-drawer mr-2"></i>Save as Bookmark</a></li>
                                                </ul>
                                             </div>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td><span class="wd-40 ht-30 bg-warning d-flex align-items-center justify-content-center"><i class="fa fa-coffee tx-20 tx-white"></i></span></td>
                                          <td>
                                             <a href="" >jQuery Fundamentals</a>
                                             <div class="clearfix"> 
                                                <span class="float-left tx-10 tx-gray-500">45% Increase</span> 
                                                <span class="float-right">
                                                <i class="ion-android-arrow-up mr-1 tx-success"></i><span class="tx-dark">85</span><span class="small mg-b-0">/100</span>
                                                </span>
                                             </div>
                                             <div class="progress ht-3 op-5">
                                                <div class="progress-bar bg-warning wd-90p" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                             </div>
                                          </td>
                                          <td>
                                             <ul class="list-unstyled mg-0 d-flex align-items-center justify-content-center">
                                                <li data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Tommy C">
                                                   <div class="avatar"><span class="bg-soft-success avatar-initial rounded-circle bg-primary">C</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Alison G">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">A</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Brad P">
                                                   <div class="avatar"><span class="bg-soft-warning avatar-initial rounded-circle bg-primary">B</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Saun K">
                                                   <div class="avatar"><span class="bg-soft-danger avatar-initial rounded-circle bg-primary">S</span></div>
                                                </li>
                                                <li class="mg-l--10" data-original-title="" title="">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">5+</span></div>
                                                </li>
                                             </ul>
                                          </td>
                                          <td class="tx-right">
                                             <div class="dropdown">
                                                <a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-options"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-close mr-2"></i>Remove</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-action-redo mr-2"></i>Send Email</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-cloud-download mr-2"></i>Export as PDF</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-drawer mr-2"></i>Save as Bookmark</a></li>
                                                </ul>
                                             </div>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td><span class="wd-40 ht-30 bg-indigo d-flex align-items-center justify-content-center"><i class="fa fa-bold tx-20 tx-white"></i></span></td>
                                          <td>
                                             <a href="" >Bootstrap Fundamentals</a>
                                             <div class="clearfix"> 
                                                <span class="float-left tx-10 tx-gray-500">45% Increase</span> 
                                                <span class="float-right">
                                                <i class="ion-android-arrow-up mr-1 tx-success"></i><span class="tx-dark">95</span><span class="small mg-b-0">/100</span>
                                                </span>
                                             </div>
                                             <div class="progress ht-3 op-5">
                                                <div class="progress-bar bg-indigo wd-90p" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                             </div>
                                          </td>
                                          <td>
                                             <ul class="list-unstyled mg-0 d-flex align-items-center justify-content-center">
                                                <li data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Tommy C">
                                                   <div class="avatar"><span class="bg-soft-success avatar-initial rounded-circle bg-primary">C</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Alison G">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">A</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Brad P">
                                                   <div class="avatar"><span class="bg-soft-warning avatar-initial rounded-circle bg-primary">B</span></div>
                                                </li>
                                                <li class="mg-l--10" data-toggle="tooltip" data-placement="top" data-skin-class="tooltip-base" data-html="true" title="" data-original-title="Saun K">
                                                   <div class="avatar"><span class="bg-soft-danger avatar-initial rounded-circle bg-primary">S</span></div>
                                                </li>
                                                <li class="mg-l--10" data-original-title="" title="">
                                                   <div class="avatar"><span class="bg-soft-primary avatar-initial rounded-circle bg-primary">5+</span></div>
                                                </li>
                                             </ul>
                                          </td>
                                          <td class="tx-right">
                                             <div class="dropdown">
                                                <a href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon-options"></i></a>
                                                <ul class="dropdown-menu dropdown-menu-right">
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-close mr-2"></i>Remove</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-action-redo mr-2"></i>Send Email</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-cloud-download mr-2"></i>Export as PDF</a></li>
                                                   <li class="dropdown-item"><a class="dropdown-link tx-13 tx-gray-500" href=""><i class="icon-drawer mr-2"></i>Save as Bookmark</a></li>
                                                </ul>
                                             </div>
                                          </td>
                                       </tr>
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--/ Courses Details End -->


            <!-- Backend Dashboard -->
            <!-- <div class="tab-content">
               <div class="tab-pane fade active show" id="nav-dashboard">
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Default Version</h5>
                     <img src="assets/images/demo/dashboard/index1.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/light/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Semi-Dark Version</h5>
                     <img src="assets/images/demo/dashboard/dark-index1.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/semi-dark/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Dark Version</h5>
                     <img src="assets/images/demo/dashboard/full-dark-index1.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/dark/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Boxed Version</h5>
                     <img src="assets/images/demo/dashboard/boxed-index1.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/boxed/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30">						
                     <a href="http://themeforest.net/item/metrical-multipurpose-bootstrap4-admin-dashboard-template/24250418" target="_blank" class="btn btn-lg btn-primary btn-block">Download Now</a>
                  </div>
               </div> -->
               <!-- Frontend Templates -->
               <!-- <div class="tab-pane fade" id="nav-frontend">
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Ecommerce</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/ecommerce/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Cryptocurrency</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/cryptocurrency/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Helpdesk Center</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/helpdesk/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Project Management</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/project/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Server Management</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/server/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Education</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/education/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Event Management</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/event/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30 tx-center bd">
                     <h5 class="tx-dark tx-13 pd-y-10 bd-b mb-0">Social Activity</h5>
                     <img src="assets/images/demo/frontend/coming-soon.png" alt="" class="img-fluid d-block m-auto">
                     <span class="d-block pd-10 bd-t">						
                     <a href="http://colorlib.net/metrical/templates/social/index.html" target="_blank" class="btn btn-sm btn-primary">Live Preview</a>
                     </span>
                  </div>
                  <div class="mg-y-30">						
                     <a href="http://themeforest.net/item/metrical-multipurpose-bootstrap4-admin-dashboard-template/24250418" target="_blank" class="btn btn-lg btn-primary btn-block">Download Now</a>
                  </div>
               </div>
            </div> -->
         </div>
      </div>
      <!--/ Demo Sidebar End  -->
      <!--================================-->
      <!-- Footer Script -->
      <!--================================-->
      <script src="../../../resources/static/assets/plugins/X_jquery/jquery.min.js"></script>
      <script src="assets/plugins/jquery-ui/jquery-ui.js"></script>
      <script src="assets/plugins/popper/popper.js"></script>
      <script src="assets/plugins/feather-icon/feather.min.js"></script>
      <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
      <script src="assets/plugins/pace/pace.min.js"></script>
      <script src="assets/plugins/toastr/toastr.min.js"></script>
      <script src="assets/plugins/countup/counterup.min.js"></script>		
      <script src="assets/plugins/waypoints/waypoints.min.js"></script>
      <script src="assets/plugins/chartjs/chartjs.js"></script>
      <script src="assets/plugins/apex-chart/apexcharts.min.js"></script>
      <script src="assets/plugins/apex-chart/irregular-data-series.js"></script>
      <!--SBB 알람 확인 total data 넣는곳  -->
       <script src="assets/plugins/apex-chart/apex-sample.min.js"></script>
       <script src="assets/js/dashboard/helpdesk-dashboard-init.js"></script> 
      <!--Top10 SBB Detection 현황 넣는곳  -->
       <!-- <script src="assets/js/dashboard/education-dashboard-init.js"></script> -->

      <script src="assets/plugins/simpler-sidebar/jquery.simpler-sidebar.min.js"></script>	   
      <script src="assets/js/dashboard/sales-dashboard-init.js"></script>
      <script src="assets/js/jquery.slimscroll.min.js"></script>
      <script src="assets/js/highlight.min.js"></script>
      <script src="assets/js/app.js"></script>
      <script src="assets/js/custom.js"></script>
   </body>
</html>