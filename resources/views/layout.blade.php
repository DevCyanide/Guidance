@if(Session::has('adminLoggedIn'))
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Guidance Information System - @yield('pageTitle')</title>
	<link rel="icon" href="{{ asset('backend') }}/school_logo.png">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="{{ asset('backend') }}/css/main.css">
    <!-- Essential javascripts for application to work -->
    <script src="{{ asset('backend') }}/js/jquery-3.2.1.min.js"></script>
    <script src="{{ asset('backend') }}/js/popper.min.js"></script>
    <script src="{{ asset('backend') }}/js/bootstrap.min.js"></script>
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="{{ asset('backend') }}/font-awesome-4.7.0/css/font-awesome.min.css">
    {{-- Custom CSS --}}
    <link rel="stylesheet" type="text/css" href="{{ asset('backend') }}/css/custom.css" />
    
  </head>
  <body class="app sidebar-mini rtl">
  	
    <!-- Navbar-->
    <header class="app-header" style="background-color: #fff;">
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle bg-secondary" href="#" data-toggle="sidebar" aria-label="Hide Sidebar" style="margin: 5px; "></a>
      <img src="{{ asset('backend') }}/school_logo.png" style="width: 50px; height: 50px; margin: 5px;">
      <a style="margin-top: 14px; color: #4169e1; font-size: 23px;">ACSHS GUIDANCE INFORMATION SYSTEM</a>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay " data-toggle="sidebar"></div>
    <aside class="app-sidebar" style="background-color: #fff;">
      <div class="app-sidebar__user bg-light">
        
      </div>
      @include('left')
      <div>
          <a class="app-sidebar__user-designation btn btn-danger" href="{{ url('admin/logout') }}" style="margin-left: 14px; background-color: #f00; color: #fff; width: 160px; margin-bottom: 14px;" data-toggle="modal" data-target="#logoff">Logout</a>
        </div>
    </aside>
    <main class="app-content" style="background: url('{{ asset('backend') }}/bg2.png'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100%;">
      @yield('content')
        <script src="{{ asset('backend') }}/js/main.js"></script>
        <!-- The javascript plugin to display page loading on top-->
        <script src="{{ asset('backend') }}/js/plugins/pace.min.js"></script>
    </main>
    <section id="event-delete-modal">
        <!-- Modal -->
  
        
        <div class="modal fade" id="logoff" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Log Out Confirmation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
               {{-- <form action="{{ url('admin/logout') }}" method="post"> --}}
                {{-- {{method_field()}} --}}
                {{-- {{csrf_field()}} --}}
              <div class="modal-body">
                <p>Are you sure you want to Log Out?</p>
                {{-- <input type="hidden" name="counsel_id" id="tdd20" > --}}
              </div>
              <div class="buttons" style="float:right; margin-top: 20px; margin-right: 10px; margin-bottom: 10px;">
                    <a href="{{ url('admin/logout') }}" type="submit" class="btn btn-danger">Log Out</a>
                    <a type="button" class="btn btn-light" data-dismiss="modal">Cancel</a>
                  </div>
                  {{-- </form> --}}
              <div class="modal-footer">
                <div class="text-center">
                  <p class="text-muted">&copy; 2018-2019</p>
                </div>
              </div>
            
            </div>
          </div>
        </div>
      </section>
  </body>
</html>
@else
<script>
    window.location="{{ url('admin/login') }}";
</script>
@endif