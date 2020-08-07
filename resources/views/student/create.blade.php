@extends('layout')
@section('pageTitle','Add Student')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Add Student</h1>
    </div>
    <a class="side btn btn-success" href="{{ url('students') }}">
        Student List
    </a>
</div>
<form method="post" action="{{ url('student/create') }}" enctype="multipart/form-data" id="studentAddForm">
@if(Session::has('success'))
<p class="alert alert-success">{{ session('success') }}</p>
@endif
@if($errors->any())
@foreach($errors->all() as $e)
<p class="alert alert-warning">{{ $e }}</p>
@endforeach
@endif
<div class="row">
    <div class="col-md-6">
        <div class="tile">
        <div class="tile-body table-responsive">
                {{ csrf_field() }}
                <table class="table table-hover table-bordered">
                    <tr>
                        <th>First Name</th>
                        <td><input type="text" value="{{ old('fname') }}" placeholder="First Name" name="fname" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Last Name</th>
                        <td><input type="text" value="{{ old('lname') }}" placeholder="Last Name" name="lname" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Father Name</th>
                        <td><input type="text" value="{{ old('father_name') }}" placeholder="Father Name" name="father_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Mother Name</th>
                        <td><input type="text" value="{{ old('mother_name') }}" placeholder="Mother Name" name="mother_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>
                            <input type="radio" value="male" name="gender" /> Male &nbsp;&nbsp;
                            <input type="radio" value="female" name="gender" /> Female
                        </td>
                    </tr>
                    <tr>
                        <th>Photo</th>
                        <td><input type="file" name="photo"></td>
                    </tr>
                    <tr>
                        <th>Student Number</th>
                        <td><input type="text" value="{{ old('student_no') }}" placeholder="Student Number" name="student_no" class="form-control"></td>
                    </tr>
                    {{-- <tr>
                        <th>Student Photo</th>
                        <td><input type="file" name="adhaar_img"></td>
                    </tr> --}}
                    {{-- <tr>
                        <th>Blood Type</th>
                        <td><input type="text" value="{{ old('blood_group') }}" placeholder="Blood Group" name="blood_group" class="form-control"></td>
                    </tr> --}}
                    {{-- <tr>
                        <th>Blood Group Photo</th>
                        <td><input type="file" name="blood_group_img"></td>
                    </tr> --}}
                    <tr>
                        <th>Mobile Number</th>
                        <td><input type="text" value="{{ old('mobile_no') }}" placeholder="Mobile Number" name="mobile_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Alternate Mobile Number <small>(if any)</small></th>
                        <td><input value="{{ old('alternate_mobile_no') }}" type="text" placeholder="Alternate Mobile Number" name="alternate_mobile_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Email <small>(if any)</small></th>
                        <td><input type="email" value="{{ old('email_id') }}" placeholder="Email Address" name="email_id" class="form-control"></td>
                    </tr>
                </table>
        </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="tile">
        <div class="tile-body table-responsive">
                <table class="table table-hover table-bordered">
                        <tr>
                                <th>Grade</th>
                                <td>
                                    <select class="form-control" name="grade">
                                        <option value="">[ Select Grade ]</option>
                                        <option value="Grade 11">Grade 11</option>
                                        <option value="Grade 12">Grade 12</option>
                                        {{-- @for($i=1;$i<=12;$i++)
                                        <option value="{{ $i }}">{{ $i }}</option>
                                        @endfor --}}
                                    </select>
                                </td>
                            </tr>
                    <tr>
                        <th>Class</th>
                        <td>
                            <select class="form-control" name="class">
                                <option value="">[ Select Class ]</option>
                                <option value="ABM 1204-03">ABM 1204-03</option>
                                <option value="ABM 1101-03">ABM 1101-03</option>
                                <option value="HUMS 1101-03">HUMS 1101-03</option>
                                <option value="HUMS 1201-03">HUMS 1201-03</option>
                                <option value="STEM 1101-02">STEM 1101-02</option>
                                {{-- @for($i=1;$i<=12;$i++)
                                <option value="{{ $i }}">{{ $i }}</option>
                                @endfor --}}
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Birthday</th>
                        <td><input type="text" value="{{ old('dob') }}" id="dob" placeholder="Date Of Birth" name="dob" class="form-control"></td>
                    </tr>
                    {{-- <tr>
                        <th>Roll Number</th>
                        <td><input type="text" value="{{ old('roll_no') }}" placeholder="Roll Number" name="roll_no" class="form-control"></td>
                    </tr> --}}
                    {{-- <tr>
                        <th>Reg Date</th>
                        <td><input type="text" value="{{ old('reg_date') }}" placeholder="Registration Date" name="reg_date" class="form-control" id="regDate"></td>
                    </tr>
                    <tr>
                        <th>Registration Number</th>
                        <td><input type="text" value="{{ old('reg_no') }}" placeholder="Registration Number" name="reg_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Monthly Fees</th>
                        <td><input type="number" value="{{ old('monthly_fees') }}" placeholder="Monthly Fees" name="monthly_fees" class="form-control"></td>
                    </tr> --}}
                    <tr>
                        <th>Address</th>
                        <td>
                            <textarea class="form-control" placeholder="Address" name="address" rows="8">{{ old('address') }}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Extra Note</th>
                        <td>
                            <textarea class="form-control" placeholder="Extra Note" name="extra_note" rows="8">{{ old('extra_note') }}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Add" class="btn btn-primary btn-block" />
                        </td>
                    </tr>
                </table>
        </div>
        </div>
        </div>
    
</div>
</form>
<!-- Page specific javascripts -->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function(){
        $('#regDate').datepicker({
            format: "dd/mm/yyyy",
            autoclose: true,
            todayHighlight: true
        });
        $('#dob').datepicker({
            format: "dd/mm/yyyy",
            autoclose: true,
            todayHighlight: true
        });
    });
</script>
{{-- Jquery Validate --}}
<script src="{{ asset('backend/jquery-validation-1.19.0/dist/jquery.validate.min.js') }}"></script>
<script>
    $(document).ready(function(){
        $("#studentAddForm").validate({
            errorClass: "text-danger",
            rules:{
                'fname':{
                    required:true
                },
                'lname':{
                    required:true
                },
                'father_name':{
                    required:true
                },
                'mother_name':{
                    required:true
                },
                'gender':{
                    required:true
                },
                'photo':{
                    required:true
                },
                'mobile_no':{
                    required:true
                },
                'class':{
                    required:true
                },
                'dob':{
                    required:true
                },
                'reg_date':{
                    required:true
                },
                'reg_no':{
                    required:true
                }
            }
        });
    });
</script>
@endsection