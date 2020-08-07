<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="assets/school_logo.png">

    <title>Guidance Information System</title>

    <!-- Bootstrap core CSS -->
    <link href="../dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

    <!-- Custom styles for this template -->
    <link href="css/admin_css.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-expand-xl navbar-primary bg-primary">

        <button type="button" id="sidebarCollapse" class="btn btn-outline-light">
            <i class="fa fa-align-justify"></i>
        </button>

        <img src="assets/school_logo.png" style="width: 50px; margin-left: 14px;"> 
        <h3 style="margin-left: 14px; margin-top: 8px; color: #fff;">ANTIPOLO CITY SENIOR HIGH SCHOOL</h3>

      
    </nav>

    <div class="wrapper">
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>GUIDANCE INFORMATION SYSTEM</h3>
            </div>
            
            <ul class="list-unstyled components">
                <li>
                    <a href="admin_dashboard.html">Dashboard</a>
                </li>
                
                <li>
                    <a href="admin_studInfo.html" style="background-color: #fafafa; color: #007bff">Student Information</a>
                </li>
                
                <li>
                    <a href="admin_counsel.html">Counseling Services</a>
                </li>

                <li>
                    <a href="admin_visitLogs.html">Visit Logs</a>
                </li>
                <li>
                    <a href="admin_filesDoc.html">Files and Documents</a>
                </li>
                <li>
                    <a href="admin_reports.html">Reports</a>
                </li>
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#signIn">Log Out</button>
                </li>
            </ul>


    </nav>
      

        <div class="container" style="margin-top: 14px;">
          <div class="card">
            <div class="card-body" style="margin-left: 14px; margin-right: 14px; margin-bottom: 14px;">
        <h3 class="card-title" style="margin-top: 20px; margin-left: 10px; margin-bottom: 30px; width: 500px;">Event Information</h3>

      <h2>{{$events->event_name}}</h2>
      <p>{{$events->event_location}}</p>
      <p>{{$events->event_date}}</p>
      <p>{{$events->event_start}}</p> to <p>{{$events->event_end}}</p>
      <p>{{$events->event_information}}</p>
      </div>
       <form method='post' action='/uploadFile' enctype='multipart/form-data' >
       {{ csrf_field() }}
       <input type='file' name='file' >
       <input type='submit' name='submit' value='Import'>
     </form>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
 
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../dist/js/bootstrap.min.js"></script>
    <script src="../assets/js/vendor/holder.min.js"></script>

    <script>

$('#cmd').click(function () {   
    doc.fromHTML($('#table1').html(), 15, 15, {
        'width': 170,
            'elementHandlers': specialElementHandlers
    });
    doc.save('sample-file.pdf');
});
 
    </script>

  </body>
</html>
