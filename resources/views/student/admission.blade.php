@extends('layout')
@section('pageTitle','Pending')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-bell" style="margin-right: 14px;"></i>Student Admission<span class="badge badge-secondary"></span></h1>
    </div>
    {{-- <a class="btn" style="background-color: #4196e1; color: #fff;" data-toggle="modal" data-target="#counsel">Start Counseling</a> --}}
</div>

<div class="row">
       
    <div class="col-md-12">
        <div class="tile">
            @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
            @endif
            @if(Session::has('error'))
            <p class="alert alert-danger">{{ session('error') }}</p>
        @endif
        @if(Session::has('Success'))
        <p class="alert alert-success">{{ session('Success') }}</p>
        @if($errors->any())
@foreach($errors->all() as $e)
<p class="alert alert-warning">{{ $e }}</p>
@endforeach
@endif
    @endif
    
        <div class="tile-body">
            @include('student.inc.school')
            <a href="{{ url('admission') }}" class="btn btn-primary btn-sm">Admission</a>
            <table class="table table-bordered" style="margin-top: 10px;" id="dataTables">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Section</th>
                    <th scope="col">Admission Slip</th>

                  </tr>
                </thead>
                <tbody>
                    @if(count($studentss)>0)
                    @foreach($studentss as $s)
                  <tr>
                  <td>{{$s->student_no}}</td>
                    <td><strong>{{$s->lname}},{{$s->fname}}</td>
                    <td>
                        {{$s->class}}
                    </td>
                  
                    <td>

                        {{$s->admission}}
                    </td>
                   
                  </tr>
                 
                    @endforeach
                    @endif
                </tbody>
            </table>


    
        </div>
        </div>
    </div>
</div>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/jquery.dataTables.min.js"></script>
{{-- Print Media --}}

<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#dataTables').DataTable({
        order:[[0,'desc']],
        pageLength:'20',
        paging:false,
        dom: 'Bfrtip',
            buttons: [
                {
                    'extend':'print',
                    className:'btn btn-sm btn-info',
                    text:'Print',
                    header:false,
                    message:'<div class="text-center mb-4"><h1>Antipolo Senior HighSchool</h1><h4></h4></div>',
                    title:''
                }
            ]
    });
</script>
  
  
@endsection