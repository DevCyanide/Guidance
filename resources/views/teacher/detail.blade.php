@extends('layout')
@section('pageTitle','All Teachers')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Teacher Detail of  <span class="text-muted">"{{ $teacher->full_name }}"</span>
            </h1>
    </div>
    <p class="side">
        <a href="{{ url('students') }}" class="btn btn-primary btn-sm">All Teachers</a>
        <a target="_blank" href="{{ url('teacher/update/'.$teacher->id) }}" class="btn btn-info btn-sm">Update Detail</a>
        <a onclick="return confirm('Are you sure to delete this student?');" href="{{ url('teacher/delete/'.$teacher->id) }}" class="btn btn-danger btn-sm">Delete Detail</a>
        {{-- <a target="_blank" href="{{ url('teacher/salary-card/'.$teacher->id) }}" class="btn btn-dark btn-sm">Salary Detail</a> --}}
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
                    <th>Full Name</th>
                    <td>{{ $teacher->full_name }}</td>
                </tr>
                <tr>
                    <th>Father Name</th>
                    <td>{{ $teacher->father_name }}</td>
                </tr>
                <tr>
                    <th>Mother Name</th>
                    <td>{{ $teacher->mother_name }}</td>
                </tr>
                <tr>
                    <th>DOB</th>
                    <td>{{ $teacher->dob }}</td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td>{{ strtoupper($teacher->gender) }}</td>
                </tr>
                <tr>
                    <th>Photo</th>
                    <td><img width="150" src="{{ asset('imgs/stu_imgs/'.$teacher->photo) }}" /></td>
                </tr>
                <tr>
                    <th>Teacher Number</th>
                    <td>{{ $teacher->adhaar_no }}</td>
                </tr>
                <tr>
                    <th>Teacher Image</th>
                    <td><img width="150" src="{{ asset('imgs/adhaar_imgs/'.$teacher->adhaar_img) }}" /></td>
                </tr>
                {{-- <tr>
                    <th>Blood Group</th>
                    <td>{{ $teacher->blood_group }}</td>
                </tr>
                <tr>
                    <th>Blood Group Image</th>
                    <td><img width="150" src="{{ asset('imgs/bg_imgs/'.$teacher->blood_group_img) }}" /></td>
                </tr> --}}
                <tr>
                    <th>Mobile Number</th>
                    <td>{{ $teacher->mobile_no }}</td>
                </tr>
                <tr>
                    <th>Alternate Mobile Number</th>
                    <td>{{ $teacher->alternate_mobile_no }}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>{{ $teacher->email_id }}</td>
                </tr>
                <tr>
                    <th>Class</th>
                    <td>{{ $teacher->class }}</td>
                </tr>
                {{-- <tr>
                    <th>Roll Number</th>
                    <td>{{ $teacher->roll_no }}</td>
                </tr> --}}
                {{-- <tr>
                    <th>Registration Date</th>
                    <td>{{ $teacher->reg_date }}</td>
                </tr>
                <tr>
                    <th>Registration Number</th>
                    <td>{{ $teacher->reg_no }}</td>
                </tr> --}}
                <tr>
                    <th>Address</th>
                    <td>{{ $teacher->address }}</td>
                </tr>
                <tr>
                    <th>Extra Note</th>
                    <td>{{ $teacher->extra_note }}</td>
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