
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>cTrack-Managed Service Portal</title>
        <link href="/cTrack.MS.Test/favicon.ico" rel="shortcut icon" type="image/x-icon" />
        <meta name="viewport" content="width=device-width" />
        
       
        <script src="/cTrack.MS.Test/Scripts/jquery.js"></script>
        <script src="/cTrack.MS.Test/Scripts/jquery-ui-1.8.24.min.js"></script>
       
        
        <script src="/cTrack.MS.Test/Scripts/bootstrap.js"></script>
<script src="/cTrack.MS.Test/Scripts/jquery.dataTables.js"></script>
<script src="/cTrack.MS.Test/Scripts/bootstrap-datepicker.js"></script>
<script src="/cTrack.MS.Test/Scripts/moment.js"></script>
<script src="/cTrack.MS.Test/Scripts/bootstrap-multiselect.js"></script>

        <script src="/cTrack.MS.Test/Scripts/jquery.unobtrusive-ajax.js"></script>
<script src="/cTrack.MS.Test/Scripts/jquery.validate.js"></script>
<script src="/cTrack.MS.Test/Scripts/jquery.validate.unobtrusive.js"></script>

        <script src="/cTrack.MS.Test/Scripts/modernizr-2.6.2.js"></script>
      
        <link href="/cTrack.MS.Test/Content/themes/base/jquery-ui.css" rel="stylesheet" />   
        <link href="/cTrack.MS.Test/Content/site.css" rel="stylesheet"/>
<link href="/cTrack.MS.Test/Content/bootstrap.css" rel="stylesheet"/>
<link href="/cTrack.MS.Test/Content/jquery.dataTables.css" rel="stylesheet"/>
<link href="/cTrack.MS.Test/Content/datepicker.css" rel="stylesheet"/>

        <script type="text/javascript">
            $(document).ready(function () {



                $('#toggle-btn').on('click', function (e) {
                    e.preventDefault();
                    $(this).toggleClass('active');
                    $('.side-navbar').toggleClass('shrinked');
                });
                $('.list-unstyled li').click(function () {
                    $('.list-unstyled li').removeClass('active')
                    $(this).toggleClass('active');
                })

                $.get("/cTrack.MS.Test/Account/GetTitle", function (data)
                {
                    $("#Title").text(data);
                })

                $(".side-navbar").css("height", $(document).height() - $(document).height() / 8 + "px");

                $(".list-unstyled a").click(function ()
                {
                    $(this).closest('li').addClass('active');
                })
            });
 
            </script>
    </head>
<body>
    <div id="body">
        <div class="page home-page">
            <!-- Main Navbar-->
            <header class="header">
                <nav class="navbar" style="z-index:0;">
                    <!-- Search Box-->
                    <div class="search-box">
                        <button class="dismiss"><i class="icon-close"></i></button>
                        <form id="searchForm" action="#" role="search">
                            <input type="search" placeholder="What are you looking for..." class="form-control">
                        </form>
                    </div>
                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between">
                            <!-- Navbar Header-->
                            <div class="navbar-header">
                                <!-- Navbar Brand --><a href="index.html" class="navbar-brand">
                                    <div class="brand-text brand-big hidden-lg-down"><span><img src="/cTrack.MS.Test/Images/cTrack.gif" style="width: 32px;margin-bottom: 11px;padding-right:5px;" /></span><strong style="font-size: 33px;">Managed Services</strong></div>
                                    <div class="brand-text brand-small"><strong>MS</strong></div>
                                </a>
                                <!-- Toggle Button--><a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
                            </div>
                            <!-- Navbar Menu -->
                            
                        </div>
                    </div>
                </nav>
            </header>
            <div class="page-content d-flex align-items-stretch">
                <nav class="side-navbar" style="height: 540px;">
                    <!-- Sidebar Header-->
                    <div class="sidebar-header d-flex align-items-center">
                        <div class="avatar"/>
                        <img src="/cTrack.MS.Test/Account/ProfileImage" class="img-fluid rounded-circle" style="background-image:url(https://ctracknew.tajtech.com/cTrack.MS.Test/Images/DefaultAvatar.png);background-size: 75px 75px;background-repeat: no-repeat;text-indent: -9999px;" />
                        </div>
                        <div class="title">
                            <h1 class="h4">rajendra.k</h1>
                            <p id="Title"></p>
                        </div>
                    </div>
                    <!-- Sidebar Navidation Menus--><span class="heading">Actions</span>
                        <ul class="list-unstyled">
                                <li><a href="/cTrack.MS.Test/Roles/ClientRoles?ApplicationID=6084b074-b45d-4b3f-9a7f-585051977df1 "> Manage Roles</a></li>
                                                            <li><a href="/cTrack.MS.Test/User/Users?ApplicationID=6084b074-b45d-4b3f-9a7f-585051977df1 "> Manage Users</a></li>
                                                            <li><a href="/cTrack.MS.Test/Project/Projects?ApplicationID=6084b074-b45d-4b3f-9a7f-585051977df1 "> Manage Projects</a></li>
                                                                                        <li><a href="/cTrack.MS.Test/Assignment/MyAssignements ">My Status Reports</a></li>
                                                                <li><a href="/cTrack.MS.Test/Project/Tasks "> Manage Tasks</a></li>
                                                            <li><a href="/cTrack.MS.Test/Project/Consultants?ApplicationID=6084b074-b45d-4b3f-9a7f-585051977df1&amp;screenIndicator=True ">Assign Task</a></li>
                                                            <li><a href="/cTrack.MS.Test/Assignment/ProjectAssignments?ApplicationID=6084b074-b45d-4b3f-9a7f-585051977df1 ">Consultant Status Reports</a></li>
                            <li><a href="/cTrack.MS.Test/User/ManageAccount?ApplicationID=6084b074-b45d-4b3f-9a7f-585051977df1 ">My Account</a></li>
                            <li><a href="/cTrack.MS.Test/Account/LogOff">Logout</a></li>
                        </ul>
                </nav>

                <div class="content-inner">
                    <script src="/cTrack.MS.Test/Scripts/jquery.toaster.js"></script>
<header class="page-header">
    <div class="container-fluid">
        <table style="width:100%">
            <tr>
                <td>
                    <h2 class="no-margin-bottom">Create User</h2>
                </td>
            </tr>
        </table>
    </div>
</header>
<script src="/cTrack.MS.Test/Scripts/jquery-ui-1.8.24.min.js"></script>
<style>
        .loadinggif {
        background: url('https://ctracknew.tajtech.com/cTrack.MS.Test/images/Processing.Gif') no-repeat right center;
         background-size: 40px 40px;
    }
    .col-sm-2 {
        margin: 5px;
        border: 1px solid #888;
        width: 200px;
        height: 40px;
        background-color: #315B7E;
        color: white;
        padding: 9px;
           cursor:pointer;
    }

    #msform {
        width: 100%;
        margin: 50px auto;
        text-align: center;
        position: relative;
    }

        #msform fieldset {
            background: #f5f5f5;
            border: 0 none;
            border-radius: 3px;
            box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
            padding: 20px 30px;
            box-sizing: border-box;
            width: 80%;
            margin: 0 10%;
            /*stacking fieldsets above each other*/
            position: relative;
        }
            /*Hide all except first fieldset*/
            #msform fieldset:not(:first-of-type) {
                display: none;
            }
        /*inputs*/
        #msform input, #msform textarea {
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 10px;
            width: 100%;
            box-sizing: border-box;
            font-family: montserrat;
            color: #2C3E50;
            font-size: 13px;
        }
        /*buttons*/
        #msform .action-button {
            width: 100px;
            background: #315B7E;
            font-weight: bold;
            color: white;
            border: 0 none;
            border-radius: 1px;
            cursor: pointer;
            padding: 10px 5px;
            margin: 10px 5px;
        }

            #msform .action-button:hover, #msform .action-button:focus {
                box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
            }
    /*headings*/
    .fs-title {
        font-size: 15px;
        text-transform: uppercase;
        color: #2C3E50;
        margin-bottom: 10px;
    }

    .fs-subtitle {
        font-weight: normal;
        font-size: 13px;
        color: #666;
        margin-bottom: 20px;
    }
    /*progressbar*/
    #progressbar {
        margin-bottom: 30px;
        overflow: hidden;
        /*CSS counters to number the steps*/
        counter-reset: step;
     
    width: 100%;
    display: inline-flex;

    }

        #progressbar li {
            list-style-type: none;
            color: #315B7E;
            text-transform: uppercase;
            font-size: 9px;
            width: 33.33%;
            float: left;
            position: relative;
        }

            #progressbar li:before {
                content: counter(step);
                counter-increment: step;
                width: 20px;
                line-height: 20px;
                display: block;
                font-size: 10px;
                color: #333;
                background: white;
                border-radius: 3px;
                margin: 0 auto 5px auto;
            }
            /*progressbar connectors*/
            #progressbar li:after {
                content: '';
                width: 96%;
                height: 2px;
                background: white;
                position: absolute;
                left: -46%;
                top: 9px;
            }

            #progressbar li:first-child:after {
                /*connector not needed before the first step*/
                content: none;
            }
            /*marking active/completed steps green*/
            /*The number of the step and the connector before it = green*/
            #progressbar li.active:before, #progressbar li.active:after {
                background: #315B7E;
                color: white;
            }
</style>
<script type="text/javascript">
    $(document).ready(function () {

        $(".col-sm-2").each(function () {
            if ($(this).find(".Indicator").val() == "True") {

                $(this).css("background-color", "limegreen");
                $(this).css("color", "white");
            }
            else {
                $(this).css("background-color", "salmon");
                $(this).css("color", "black");
            }
        });

        $(".col-sm-2").click(function (e) {
            e.preventDefault();
            if ($(this).find(".Indicator").val() == "True") {
                $(this).find(".Indicator").val("false");
                $(this).css("background-color", "salmon");
                $(this).css("color", "black");
            }
            else {
                $(this).find(".Indicator").val("True");
                $(this).css("background-color", "limegreen");
                $(this).css("color", "white");

            }

        });

        var current_fs, next_fs, previous_fs; //fieldsets
        var left, opacity, scale; //fieldset properties which we will animate
        var animating; //flag to prevent quick multi-click glitches

        $(".next").click(function () {
            if ($("#UserName").val() == "") {
                $.toaster({
                    priority: 'danger', title: 'Warning', message: 'Please Enter the User Name.', settings: {
                        'toaster': {
                            'id': 'toaster',
                            'container': 'body',
                            'template': '<div></div>',
                            'class': 'toaster',
                            'css': {
                                'position': 'fixed',
                                'top': '10px',
                                'right': '10px',
                                'width': '550px'
                            }
                        },
                        'timeout': 3500
                    }
                });
                return false;
            }
            else {
                if (animating) return false;
                animating = true;

                current_fs = $(this).parent();
                next_fs = $(this).parent().next();

                //activate next step on progressbar using the index of next_fs
                $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

                //show the next fieldset
                next_fs.show();
                //hide the current fieldset with style
                current_fs.animate({ opacity: 0 }, {
                    step: function (now, mx) {
                        //as the opacity of current_fs reduces to 0 - stored in "now"
                        //1. scale current_fs down to 80%
                        scale = 1 - (1 - now) * 0.2;
                        //2. bring next_fs from the right(50%)
                        left = (now * 50) + "%";
                        //3. increase opacity of next_fs to 1 as it moves in
                        opacity = 1 - now;
                        current_fs.css({
                            'transform': 'scale(' + scale + ')',
                            'position': 'absolute'
                        });
                        next_fs.css({ 'left': left, 'opacity': opacity });
                    },
                    duration: 100,
                    complete: function () {
                        current_fs.hide();
                        animating = false;
                    },
                    //this comes from the custom easing plugin
                    easing: 'easeInOutBack'
                });
            }
        });

        $(".previous").click(function () {
            if (animating) return false;
            animating = true;

            current_fs = $(this).parent();
            previous_fs = $(this).parent().prev();

            //de-activate current step on progressbar
            $("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

            //show the previous fieldset
            previous_fs.show();
            //hide the current fieldset with style
            current_fs.animate({ opacity: 0 }, {
                step: function (now, mx) {
                    //as the opacity of current_fs reduces to 0 - stored in "now"
                    //1. scale previous_fs from 80% to 100%
                    scale = 0.8 + (1 - now) * 0.2;
                    //2. take current_fs to the right(50%) - from 0%
                    left = ((1 - now) * 50) + "%";
                    //3. increase opacity of previous_fs to 1 as it moves in
                    opacity = 1 - now;
                    current_fs.css({
                        'left': left
                    });
                    previous_fs.css({
                        'transform': 'scale(' + scale + ')', 'opacity': opacity,
                        'position': 'relative'
                    });
                },
                duration: 100,
                complete: function () {
                    current_fs.css({
                        'position': ''
                    });
                    current_fs.hide();
                    animating = false;
                },
                //this comes from the custom easing plugin
                easing: 'easeInOutBack'
            });
        });

        $("#UserName").change(function () {
            $(this).addClass('loadinggif');
            $.post('/cTrack.MS.Test/Account/CheckUserName' + '?userName=' + $(this).val(), function (data) {
                if (data == "Duplicate") {
                    $.toaster({
                        priority: 'danger', title: 'Duplicate', message: 'User Name Already Exists, Please choose different.', settings: {
                            'toaster': {
                                'id': 'toaster',
                                'container': 'body',
                                'template': '<div></div>',
                                'class': 'toaster',
                                'css': {
                                    'position': 'fixed',
                                    'top': '10px',
                                    'right': '10px',
                                    'width': '550px'
                                }
                            },
                            'timeout': 3500
                        }
                    });
                    $("#UserName").val("");
                    $("#UserName").removeClass('loadinggif');
                    return false;
                }
                else {
                    $("#CurrentUserName").val($("#UserName").val());
                }
                $("#UserName").removeClass('loadinggif');
            });
        });
    });
</script>
<div>
<form action="/cTrack.MS.Test/User/SaveUser" enctype="multipart/form-data" method="post">        <div id="msform">
            <ul id="progressbar">
                <li class="active">Account Details</li>
                <li>Personal Details</li>
                <li>User Roles</li>
            </ul>
            <!-- fieldsets -->
            <input data-val="true" data-val-required="The ApplicationID field is required." id="ApplicationID" name="ApplicationID" type="hidden" value="6084b074-b45d-4b3f-9a7f-585051977df1" />
            <fieldset>
                <h2 class="fs-title">Account Detail</h2>
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label>User Name</label>
                        <input id="CurrentUserName" name="UserName" type="hidden" value="" />
                        <input id="UserName" name="UserName" placeholder="User Name" type="text" value="" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label>User Title</label>
                        <input id="UserTitle" name="UserTitle" placeholder="User Title" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input id="Password" name="Password" placeholder="Password" type="password" />
                </div>	
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input id="ConfirmPassword" name="ConfirmPassword" placeholder="Confirm Password" type="password" />
                </div>	
                <input type="button" name="next" class="next action-button" value="Next" />
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Personal Details</h2>
                <div class="row">
                    <div class="col-sm-4 form-group">
                        <label>Legal First Name</label>
                        <input id="LegalFirstName" name="LegalFirstName" placeholder="Legal First Name" type="text" value="" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label>Legal Last Name</label>
                        <input id="LegalLastName" name="LegalLastName" placeholder="Legal Last Name" type="text" value="" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label>Legal Middle Name</label>
                        <input id="LegalMiddleName" name="LegalMiddleName" placeholder="Legal Middle Name" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <textarea cols="20" id="AddressLine1" name="AddressLine1" placeholder="Complete Address" rows="3">
</textarea>
                </div>
                <div class="row">
                    <div class="col-sm-4 form-group">
                        <label>City</label>
                        <input id="CityName" name="CityName" placeholder="City" type="text" value="" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label>State</label>
                        <input id="State" name="State" placeholder="State Name" type="text" value="" />
                    </div>
                    <div class="col-sm-4 form-group">
                        <label>Country</label>
                        <input id="Country" name="Country" placeholder="Country Name" type="text" value="" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <label>Phone Number</label>
                        <input id="PhoneNumber" name="PhoneNumber" placeholder="Phone Number" type="text" value="" />
                    </div>
                    <div class="col-sm-6 form-group">
                        <label>Email Address</label>
                        <input id="Email" name="Email" placeholder="Email Address" type="text" value="" />
                    </div>
                </div>	
                <div class="form-group">
                    <label>Profile Image</label>
                    <input type="file" id="files" name="FileUpload" value="Upload Profile Image" />
                </div>	
                <input type="button" name="previous" class="previous action-button" value="Previous" />
                <input type="button" name="next" class="next action-button" value="Next" />
            </fieldset>
            <fieldset>
                <h2 class="fs-title">User Roles</h2>
                <div class="container" style="padding:20px;">
                    <div class="row">
                            <div class="col-sm-2">
                                <h6>
                                    TAJ Manager
                                </h6>
                                <input class="Indicator" data-val="true" data-val-required="The RoleIndicator field is required." id="ApplicationRoles_0__RoleIndicator" name="ApplicationRoles[0].RoleIndicator" type="hidden" value="False" />
                                <input classs="RoleID" data-val="true" data-val-required="The RoleID field is required." id="ApplicationRoles_0__RoleID" name="ApplicationRoles[0].RoleID" type="hidden" value="9d696446-1c6c-4de0-b6a2-0aa0664eefc8" />
                            </div>
                            <div class="col-sm-2">
                                <h6>
                                    TAJ Consultant
                                </h6>
                                <input class="Indicator" data-val="true" data-val-required="The RoleIndicator field is required." id="ApplicationRoles_1__RoleIndicator" name="ApplicationRoles[1].RoleIndicator" type="hidden" value="False" />
                                <input classs="RoleID" data-val="true" data-val-required="The RoleID field is required." id="ApplicationRoles_1__RoleID" name="ApplicationRoles[1].RoleID" type="hidden" value="f7bc3eea-b8aa-4d33-8234-65c84b6356ac" />
                            </div>
                            <div class="col-sm-2">
                                <h6>
                                    Client Manager
                                </h6>
                                <input class="Indicator" data-val="true" data-val-required="The RoleIndicator field is required." id="ApplicationRoles_2__RoleIndicator" name="ApplicationRoles[2].RoleIndicator" type="hidden" value="False" />
                                <input classs="RoleID" data-val="true" data-val-required="The RoleID field is required." id="ApplicationRoles_2__RoleID" name="ApplicationRoles[2].RoleID" type="hidden" value="610664d6-757a-4107-96f2-994cdd3e16ea" />
                            </div>
                            <div class="col-sm-2">
                                <h6>
                                    ADMIN
                                </h6>
                                <input class="Indicator" data-val="true" data-val-required="The RoleIndicator field is required." id="ApplicationRoles_3__RoleIndicator" name="ApplicationRoles[3].RoleIndicator" type="hidden" value="False" />
                                <input classs="RoleID" data-val="true" data-val-required="The RoleID field is required." id="ApplicationRoles_3__RoleID" name="ApplicationRoles[3].RoleID" type="hidden" value="f94f77cb-c42f-4a86-bedb-ea2e3626eb42" />
                            </div>
                    </div>
                </div>
                <input type="button" name="previous" class="previous action-button" value="Previous" />
                <input type="submit" name="submit" class="submit action-button" value="Submit" />
            </fieldset>
        </div>
</form></div>
                </div>
            </div>
                <footer class="main-footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <p>TAJ Technologies &copy;2017</p>
                            </div>
                            <div class="col-sm-6 text-right">
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
</body>
</html>
