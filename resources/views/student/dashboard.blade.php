<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/school_logo.png">

    <title>Guidance Information System</title>

    <!-- Bootstrap core CSS -->
    <link href="{{ asset('dist/css/bootstrap.min.css') }}" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto">

    <link rel="stylesheet" href="css/fontawesome-free-5.6.1-web/css/all.css">

    <link href="css/admin_css.css" rel="stylesheet">
  </head>
<div class="wrapper">
    <nav id="sidebar">
        
        <ul class="list-unstyled components">
            <li>
                <a href="admin_dashboard.html"><i class="fa fa-tachometer-alt"></i><span class="d-none d-md-inline">Dashboard</span></a>
            </li>
            
            <li>
                <a href="admin_studInfo.html"><i class="fa fa-user"></i><span class="d-none d-md-inline">Student Information</span></a>
            </li>
            
            <li>
                <a href="#counselSubMenu" class="dropdown-toggle" aria-expanded="false" data-toggle="collapse"><i class="fa fa-briefcase"></i><span class="d-none d-md-inline">Counseling Services</span></a>
                    <ul class="collapse list-unstyled" id="counselSubMenu">
                        <li><a href="admin_counselComplete.html"><i class="fa fa-check-circle"></i>Complete Cases<span class="d-none d-md-inline"></a></li>

                        <li><a href="admin_counselPending.html"><i class="fa fa-exclamation-circle"></i>Pending Cases<span class="d-none d-md-inline"></a></li>
                    </ul>
            </li>

            <li>
                <a href="admin_visitLogs.html"><i class="fa fa-bookmark"></i><span class="d-none d-md-inline">Visit Logs</span></a>
            </li>

            <li>
                <a href="admin_studTard.html"><i class="fa fa-frown-open"></i><span class="d-none d-md-inline">Student Tardiness</span></a>
            </li>
            <li>
                <a href="admin_guidanceEvents.html"><i class="fa fa-bullhorn"></i><span class="d-none d-md-inline">Guidance Events</span></a>
            </li>
            <li>
                <a href="admin_exitInterview.html"><i class="fa fa-graduation-cap"></i><span class="d-none d-md-inline">Exit Interview</span></a>
            </li>
        </ul>
        
    </nav>

    <div class="content">
        <div class="col-md-12 order-md-1">
            <div class="row">
                
                <div class="container" style="margin-top: 14px;">
                    <form class="form-inline my-2 my-lg-0" style="margin-left: 0px;">

                        <h3 style="margin-bottom: 14px; margin-top: 8px; color: #fff"> Dashboard</h3>
                        <div class="line" style="margin-bottom: 14px"></div>

                    </form>
                    <div class="card">

                        <div class="card-body">
                            
                            <div class="col-md-12 order-md-1">

                                <div class="row" style="margin-right: 14px;">
                                    <div class="col-md-4 mb-3">
                                        <div class="container">
                                            <div class="card">
                                                <div class="card-body">

                                                    <div class="col">
                                                        <div class="row">
                                                            <img class="rounded-circle " src="{{ asset('imgs/briefcase.png/') }}" alt="Generic placeholder image" width="80" height="80">
                                                            
                                                                <div class="col" style="margin-top: 14px;">
                                                                    <h4>number</h4>
                                                                    <p style="font-size: 15px;">Counseling Cases</p>
                                                                </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 mb-3">
                                        <div class="container">
                                            <div class="card">
                                                <div class="card-body">

                                                    <div class="col">
                                                        <div class="row">
                                                            <img class="rounded-circle " src="{{ asset('imgs/student.png/') }}" alt="Generic placeholder image" width="80" height="80">

                                                                <div class="col" style="margin-top: 14px;">
                                                                    <h4>number</h4>
                                                                    <p style="font-size: 15px;">Student Records</p>
                                                                </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4 mb-3">
                                        <div class="container">
                                            <div class="card">
                                                <div class="card-body">

                                                    <div class="col">
                                                        <div class="row">
                                                            <img class="rounded-circle " src="{{ asset('imgs/bookmark.png/') }}" alt="Generic placeholder image" width="80" height="80">

                                                                <div class="col" style="margin-top: 14px;">
                                                                    <h4>number</h4>
                                                                    <p style="font-size: 15px;">Number of Visits</p>
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

                        </div>
                    </div>

            </div>

            <div class="row">
                <div class="col-md-8 mb-3">
                
                    <div class="container" style="margin-top: 14px;">
                        <form class="form-inline my-2 my-lg-0" style="margin-left: 0px;">

                            <h3 style="margin-bottom: 14px; margin-top: 8px; color: #fff"> Event Information</h3>
                            <div class="line" style="margin-bottom: 14px"></div>

                        </form>
                        <div class="card">

                            <div class="card-body">
                                
                                <div class="col-md-12 order-md-1">

                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                <div class="col-md-4 mb-3">
                
                    <div class="container" style="margin-top: 14px;">
                        <form class="form-inline my-2 my-lg-0" style="margin-left: 0px;">

                            <h3 style="margin-bottom: 14px; margin-top: 8px; color: #fff"> Account Logs</h3>
                            <div class="line" style="margin-bottom: 14px"></div>

                        </form>
                        <div class="card">

                            <div class="card-body">
                                
                                <div class="col-md-12 order-md-1">

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

        
    

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../assets/js/vendor/popper.min.js"></script>
<script src="../dist/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../assets/js/vendor/holder.min.js"></script>

<script>
    $(document).ready(function(){
        $('#sidebarCollapse').on('click',function(){
            $('#sidebar').toggleClass('active');
        });
    });  
</script>

</body>
</html>
