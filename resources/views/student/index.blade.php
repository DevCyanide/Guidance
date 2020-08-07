@extends('layout')
@section('pageTitle','All Students')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-user" style="margin-right: 14px;"></i> All Students 
            <span class="badge badge-secondary">
                @if(isset($className))
                    {{ App\Student::where('class',$className)->count() }}
                @else
                    {{ App\Student::count() }}
                @endif
            </span></h1>
    </div>
    @if(isset($class) && $class==true)
    <a class="side btn btn-success" href="{{ url('student/classes') }}">
        All Classes
    </a>
    @else
    <a class="side btn" style="background-color: #4169e1; color: #fff" href="{{ url('student/create') }}">
        Add Student
    </a>
    @endif
</div>
<br />
<div class="row">
    <div class="col-md-12">
        <div class="tile">
                <a href="{{ url('students') }}" class="btn btn-sm btn-outline-info mt-1">Enrolled</a>
                <a href="{{ url('students/graduate') }}" class="btn btn-sm btn-outline-info mt-1">Graduated</a>
        @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
        @endif
        <div class="tile-body">
            <table class="table table-bordered" id="dataTable">
                <thead>
                    <tr class="bg-light">
                        <th>ID</th>
                        <th>Photo</th>
                        <th>Full Name</th>
                        <th>Mobile</th>
                        <th>Student ID</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($students)>0)
                        @foreach($students as $s)
                        <tr>
                            <td>{{ $s->stu_id }}</td>
                            <td>
                                <img width="100" src="{{ asset('imgs/stu_imgs/'.$s->photo) }}" class="img-fluid rounded-circle" />
                                <p class="mt-2">
                                    <a href="{{ url('student/attendence/'.$s->class.'/?stu_id='.$s->stu_id) }}" class="btn btn-sm btn-outline-dark">Late Record</a><br />
                                    <a href="{{ url('student/counsel/'.$s->stu_id) }}" class="btn btn-sm btn-outline-info mt-1">Counselling</a><br />
                                    {{-- <a href="{{ url('student/result-card/'.$s->stu_id) }}" class="btn btn-sm btn-outline-danger mt-1">Result Card</a><br /> --}}
                                </p>
                            </td>
                            <td>
                                <strong>{{ $s->fname.' '.$s->lname }}</strong>
                                <table class="table table-bordered mt-2 table-condensed">
                                    <tr>
                                        <th>Father Name</th>
                                        <td>{{ $s->father_name }}</td>
                                    </tr>
                                    <tr>
                                        <th>Mother Name</th>
                                        <td>{{ $s->mother_name }}</td>
                                    </tr>
                                    <tr>
                                            <th>Grade</th>
                                            <td>{{ $s->grade }}</td>
                                        </tr>
                                    <tr>
                                        <th>Section</th>
                                        <td>{{ $s->class }}</td>
                                    </tr>
                                    {{-- <tr>
                                        <th>Roll No</th>
                                        <td>{{ $s->roll_no }}</td>
                                    </tr> --}}
                                </table>
                            </td>
                            <td>{{ $s->mobile_no }}</td>
                            <td>
                                <a target="_blank" href="{{ url('student/detail/'.$s->stu_id) }}" class="btn btn-secondary btn-sm" title="Full Detail">View</a>
                                <a href="{{ url('student/update/'.$s->stu_id) }}" class="btn btn-info btn-sm" title="Modify Detail">Edit</a>
                            <a href="" class="btn btn-outline-dark btn-sm" title="Delete Student" data-toggle="modal" data-target="#visitLogs{{$s->stu_id}}">Visit</a>


{{-- Student Adhaar Image --}}
<div class="modal fade" id="adhaarImg{{ $s->stu_id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">{{ $s->fname.' '.$s->lname }} Student Image</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <img class="img-fluid" src="{{ asset('imgs/stu_imgs/'.$s->photo) }}" />
            </div>
        </div>
    </div>
</div>
<section id="visit-modal">
    <!-- Modal -->
<div class="modal fade" id="visitLogs{{$s->stu_id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Visit Logs</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

              <h5>Please choose what is the purpose of visiting</h5>

              <div class="line" style="margin-top: 25px; margin-bottom: 25px;"></div>
              <form method="post" action="{{ url('visit/create/'.$s->stu_id) }}"  id="studentVisitLogs">
                {{csrf_field()}}

              <select class="custom-select d-block w-100" id="visitLog" name='visit' required>
                        <option value=""> </option>
                        <option>Consultation</option>
                        <option>Admission</option>
                        <option>Clearance</option>
                        
                      </select>
              <div class="invalid-feedback">
                                  Valid visit logs is required.
                                </div>

              <button type="Submit"  class="btn" style="background-color: #4196e1; color: #fff; width: 100%; margin-top: 8px;">Proceed</button>
                              </form>
              <!--THEN IT WILL AUTOMATICALLY RETRIEVE THE STUDENT INFORMATION AND GO TO ADMIN_COUNSELFORM-->

              


          </div>

          <div class="modal-footer">
            <div class="text-center">
              <p class="text-muted">&copy; 2018-2019</p>
            </div>
          </div>
        
        </div>
      </div>
    </div>
  </section>

                            </td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
                {{-- {{ $students->links() }} --}}
            </table>

        </div>
        </div>
    </div>
</div>

<section id="visit-modal">
      <!-- Modal -->
      <div class="modal fade" id="visitLogs" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Visit Logs</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

                <h5>Please choose what is the purpose of visiting</h5>

                <div class="line" style="margin-top: 25px; margin-bottom: 25px;"></div>
                <form method="post" action="{{ url('visit/create') }}"  id="studentVisitLogs">
                  {{csrf_field()}}

                <select class="custom-select d-block w-100" id="visitLog" required>
                          <option value=""> </option>
                          <option>Consultation</option>
                          <option>Addmision</option>
                          <option>Clearance</option>
                          
                        </select>
                <div class="invalid-feedback">
                                    Valid visit logs is required.
                                  </div>

                <button type="Submit"  class="btn" style="background-color: #4196e1; color: #fff; width: 100%; margin-top: 8px;">Proceed</button>
                                </form>
                <!--THEN IT WILL AUTOMATICALLY RETRIEVE THE STUDENT INFORMATION AND GO TO ADMIN_COUNSELFORM-->

                


            </div>

            <div class="modal-footer">
              <div class="text-center">
                <p class="text-muted">&copy; 2018-2019</p>
              </div>
            </div>
          
          </div>
        </div>
      </div>
    </section>

<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/jquery.dataTables.min.js"></script>


<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#dataTable').DataTable({
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

    // {{--  Attendence Via Ajax  --}}
    // $(document).ready(function(){
    //     $(".today_attendence").on('change',function(){
    //         var _stu_id=$(this).data('stu-id');
    //         var _attend_status=$(this).data('status');
    //         $.ajax({
    //             headers: {
    //                 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //             },
    //             url:"{{ url('api/attendence') }}",
    //             type:"POST",
    //             data:{
    //                 stu_id:_stu_id,
    //                 status:_attend_status
    //             },
    //             dataType:"json",
    //             success:function(response){
    //                 if(_attend_status==1){
    //                     $(this).attr('data-status',0);
    //                 }else if(_attend_status==0){
    //                     $(this).attr('data-status',1); 
    //                 }
    //             }
    //         });
    //     });
    // });

</script>
@endsection