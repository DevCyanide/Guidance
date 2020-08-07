
@extends('layout')
@section('pageTitle','All Students')
@section('content')
      <nav class="navbar navbar-expand navbar-dark">
          <img src="assets/school_logo.png" style="width: 40px;">
              <a class="navbar-brand" href="#" style="margin-left: 14px;">ANTIPOLO CITY SENIOR HIGH SCHOOL</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
              </button>

          <div class="collapse navbar-collapse" id="navbarsExample02">
              <ul class="navbar-nav ml-auto">

                <li class="nav-item active">
                      <a class="nav-link" href="index">Home <span class="sr-only">(current)</span></a>
                  </li>
                  
                  <li class="nav-item active">
                      <a class="nav-link" href="#">About <span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                      <a class="nav-link" href="#">Contact <span class="sr-only">(current)</span></a>
                  </li>

                <ul class="list-unstyled CTAs">
                <li>
                    <a href="#" class="logout">Logout</a>
                </li>
                
            </ul>
              </ul>
          </div>
      </nav>
    </header>
    <div class="wrapper">
      <nav id="sidebar">
        <div class="sidebar-header">
          <h3>GUIDANCE INFORMATION SYSTEM</h3>
        </div>
        
        <ul class="list-unstyled components">
          <li>
            <a href="Info">Student Information</a>
          </li>
          
          <li>
            <a href="Admin">Guidance Events</a>
          </li>

          <li style="background-color: #fafafa; color: #007bff">
            <a href="Call">Student Call</a>
          </li>

          <li>
            <a href="Counseling">Student Counseling</a>
          </li>
          
        </ul>
        <ul class="list-unstyled CTAss">
          <h5>Options</h5>
          <li>
            <a href="#" class="option">Add</a>
          </li>

          <li>
            <a href="#" class="option">Update</a>
          </li>

          <li>
            <a href="#" class="option">Delete</a>
          </li>

        </ul>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../assets/js/vendor/holder.min.js"></script>
      </nav>
    </div>
  </body>
</html>
