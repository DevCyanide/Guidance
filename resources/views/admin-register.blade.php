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
                        <h4 class="text-center">Create a new account?</h4>
                    </div>
                    <div class="card-body">
                            @if(Session::has('password'))
                            <p class="alert alert-warning">{{ session('password') }}</p>
                        @endif
                        @if($errors->any())
                            @foreach($errors->all() as $error)
                            <p class="alert alert-warning">{{ $error }}</p>
                            @endforeach
                        @endif
                        <form method="post" action="{{ url('admin/submit-register') }}">
                        {{ csrf_field() }}
                        <table class="table table-bordered">
                            <tr>
                                <th>First Name</th>
                                <td><input type="text" class="form-control" name="firstname" placeholder="Enter First Name" /></td>
                            </tr>
                            <tr>
                                <th>Last Name</th>
                                <td><input type="text" class="form-control" name="lastname" placeholder="Enter Last Name" /></td>
                            </tr>
                            <tr>
                                <th>Username</th>
                                <td><input type="text" class="form-control" name="admin" placeholder="Enter Username" /></td>
                            </tr>
                            <tr>
                                <th>Password</th>
                                <td><input type="password" name="pwd" class="form-control" placeholder="*****" /></td>
                            </tr>
                            <tr>
                                <th>Re-type Password</th>
                                <td><input type="password" name="pwdreset" class="form-control" placeholder="*****" /></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" value="Register" class="btn" style="background-color: #4169e1; color: #fff; width: 100%;" />
                                    <p style="margin-top: 14px;">Already have an account? <span><a href="{{ url('/') }}">Login</a></span></p>
                                   
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
                                          <a href="#">Register</a> - <a href="#">Forgot Password</a>
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