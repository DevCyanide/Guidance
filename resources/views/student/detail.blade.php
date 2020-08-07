@extends('layout')
@section('pageTitle','All Students')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Student Detail of  <span class="text-muted">"{{ $student->fname.' '.$student->lname }}"</span>
            </h1>
    </div>
    <p class="side">
        <a href="{{ url('students') }}" class="btn btn-primary btn-sm">All Students</a>
        <a target="_blank" href="{{ url('student/update/'.$student->stu_id) }}" class="btn btn-info btn-sm">Update Detail</a>
        <a onclick="return confirm('Are you sure to delete this student?');" href="{{ url('student/delete/'.$student->stu_id) }}" class="btn btn-danger btn-sm">Delete Detail</a>
        <a target="_blank" href="{{ url('student/fees-card/'.$student->stu_id) }}" class="btn btn-dark btn-sm">Fees Detail</a>
        <a target="_blank" href="{{ url('student/attendence/'.$student->stu_id) }}" class="btn btn-success btn-sm">Attendence Detail</a>
        <a target="_blank" href="{{ url('student/result-card/'.$student->stu_id) }}" class="btn btn-warning btn-sm">Result Detail</a>
    </p>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="tile">
        <button class="btn btn-sm btn-info mb-3 hide-in-print" onclick="window.print();">Print</button>
        <div class="tile-body">
            @include('student.inc.school')
            <table class="table table-bordered">
                <tr>
                    <th>First Name</th>
                    <td>{{ $student->fname }}</td>
                </tr>
                <tr>
                    <th>Last Name</th>
                    <td>{{ $student->lname }}</td>
                </tr>
                <tr>
                    <th>Father's Name</th>
                    <td>{{ $student->father_name }}</td>
                </tr>
                <tr>
                    <th>Mother's Name</th>
                    <td>{{ $student->mother_name }}</td>
                </tr>
                <tr>
                    <th>Birthday</th>
                    <td>{{ $student->dob }}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>{{ strtoupper($student->gender) }}</td>
                </tr>
                <tr>
                    <th>Photo</th>
                    <td><img width="150" src="{{ asset('imgs/stu_imgs/'.$student->photo) }}" /></td>
                </tr>
                <tr>
                    <th>Student Number</th>
                    <td>{{ $student->student_no }}</td>
                </tr>
                {{-- <tr>
                    <th>Adhaar Image</th>
                    <td><img width="150" src="{{ asset('imgs/adhaar_imgs/'.$student->adhaar_img) }}" /></td>
                </tr>
                <tr>
                    <th>Blood Group</th>
                    <td>{{ $student->blood_group }}</td>
                </tr>
                <tr>
                    <th>Blood Group Image</th>
                    <td><img width="150" src="{{ asset('imgs/bg_imgs/'.$student->blood_group_img) }}" /></td>
                </tr> --}}
                <tr>
                    <th>Mobile Number</th>
                    <td>{{ $student->mobile_no }}</td>
                </tr>
                <tr>
                    <th>Alternate Mobile Number</th>
                    <td>{{ $student->alternate_mobile_no }}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>{{ $student->email_id }}</td>
                </tr>
                <tr>
                        <th>Grade</th>
                        <td>{{ $student->grade }}</td>
                    </tr>
                <tr>
                    <th>Class</th>
                    <td>{{ $student->class }}</td>
                </tr>
                {{-- <tr>
                    <th>Roll Number</th>
                    <td>{{ $student->roll_no }}</td>
                </tr> --}}
                {{-- <tr>
                    <th>Registration Date</th>
                    <td>{{ $student->reg_date }}</td>
                </tr>
                <tr>
                    <th>Registration Number</th>
                    <td>{{ $student->reg_no }}</td>
                </tr> --}}
                <tr>
                    <th>Address</th>
                    <td>{{ $student->address }}</td>
                </tr>
                <tr>
                    <th>Extra Note</th>
                    <td>{{ $student->extra_note }}</td>
                </tr>
            </table>
        </div>
        </div>
    </div>
</div>
{{--  DataPicker  --}}
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#dataTable').DataTable({
        order:[[0,'desc']]
    });
    {{--  DatePicker  --}}
    $('#selectDate').datepicker({
        format: "mm-yyyy",
        viewMode: "months", 
        minViewMode: "months",
        endDate: '+0m',
    }).on('changeMonth', function(e) {
        $(this).datepicker('hide');
    });
</script>
@endsection