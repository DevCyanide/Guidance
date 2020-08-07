<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    {{--  Bootstrap 4  --}}
    <link rel="stylesheet" href="{{ asset('backend') }}/css/bootstrap.min.css" />
    <title>Guidance Information System</title>
    <link rel="icon" href="{{ asset('backend') }}/school_logo.png">

</head>
<body style="background: url('{{ asset('backend') }}/bg1.png'); background-repeat: no-repeat; background-attachment: fixed; background-size: 100%">

    <header class="app-header" style="background-color: #fff;">
      
      <img src="{{ asset('backend') }}/school_logo.png" style="width: 50px; height: 50px; margin: 5px;">
      <a style="margin-top: 14px; color: #4169e1; font-size: 23px;">ACSHS GUIDANCE INFORMATION SYSTEM</a>


    </header>

    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-6 offset-sm-3" style="margin-top:90px; margin-left: -100px; !important">
                <div class="card shadow-lg border-secondary">
                    <div class="card-header" style="background-color: #fff; color: #4169e1">
                        @if(Session::has('account'))
                        <p class="alert alert-success">{{ session('account') }}</p>
                    @endif
                        <h4 class="text-center">Login</h4>
                    </div>
                    <div class="card-body">
                        <!-- @if($errors->any())
                            @foreach($errors->all() as $error)
                            <p class="alert alert-warning">{{ $error }}</p>
                            @endforeach
                        @endif -->
                        @if(Session::has('missing'))
            <p class="alert alert-warning">{{ session('missing') }}</p>
                        @endif
                        @if(Session::has('invalid'))
            <p class="alert alert-danger">{{ session('invalid') }}</p>
                        @endif
                        <form method="post" action="{{ url('admin/submit-login') }}">
                        {{ csrf_field() }}
                        <table class="table table-bordered">
                            <tr>
                                <th>Username</th>
                                <td><input type="text" class="form-control" name="user" placeholder="Enter Username" /></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td><input type="password" name="pwd" class="form-control" placeholder="*********" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" value="Login" class="btn" style="background-color: #4169e1; color: #fff; width: 100%; margin-top: 14px;" />
                                    
                                    <p style="margin-top: 14px;">Do you wish to have a new account? <span><a href="{{ url('admin/register') }}">Register</a></span></p>
                                   
                                    {{-- <a href="#" data-toggle="modal" data-target="#adhaarImg{{ $s->stu_id }}" title="">{{ $s->adhaar_no }}</a> --}}
                                </td>
                            </tr>
                            <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog">
                                      <div class="loginmodal-container">
                                          <h1>Login to Your Account</h1><br>
                                        <form>
                                          <input type="text" name="user" placeholder="Username">
                                          <input type="password" name="pass" placeholder="Password">
                                          <input type="submit" name="login" class="login loginmodal-submit" value="Login">
                                        </form>
                                          
                                        <div class="login-help">
                                          <a href="#" action ='{{ url('admin/submit-login') }}'>Register</a> - <a href="#">Forgot Password</a>
                                        </div>
                                      </div>
                                  </div>
                                </div>
                        </table>

</div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>