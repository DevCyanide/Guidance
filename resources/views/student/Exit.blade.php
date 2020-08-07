@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i>Exit Interview<span class="badge badge-secondary"></span></h1>
    </div>
    {{-- <a class="side btn btn-success" href="{{ url('Exit/Form') }}">
      Add Student
  </a> --}}
</div>
<div class="row">
    <div class="col-md-12">
        <div class="tile">
        <div class="tile-body">
            @include('student.inc.school')
            <table class="table table-bordered" style="margin-top: 10px;" id="dataTables">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Section</th>
                    <th scope="col">Status</th>
                  </tr>
                </thead>
                <tbody>
                    @if(count($students)>0)
                    @foreach($students as $s)
                  <tr>
                    <td>{{ $s->student_no }}</td>
                    <td><strong>{{ $s->fname.' '.$s->lname }}</strong></td>
                    <td>{{ $s->class }}</td>
                    <td>
                      @if($s->Status=='exited')
                      <strong><a href="{{ url('Exit/Form/edit/'.$s->stu_id) }}">Ready to Leave</a></strong>
                      @else
                            <a class="side btn btn-success" href="{{ url('Exit/Form/create/'.$s->stu_id) }}">
                              Exit Interview
                      </a>   
                      
                      @endif
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
<script type="text/javascript" src="{{ asset('backend') }}/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/buttons.print.min.js"></script>

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