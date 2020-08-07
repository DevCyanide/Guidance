@extends('layout')
@section('pageTitle','Update Student')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Modify Student</h1>
    </div>
    <a class="side btn btn-success" href="{{ url('students') }}">
        Student List
    </a>
</div>
<form method="post" action="{{ url('student/update/'.$student->stu_id) }}" enctype="multipart/form-data" id="studentAddForm">
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
                        <td><input type="text" value="{{ $student->fname }}" placeholder="First Name" name="fname" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Last Name</th>
                        <td><input type="text" value="{{ $student->lname }}" placeholder="Last Name" name="lname" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Father Name</th>
                        <td><input type="text" value="{{ $student->father_name }}" placeholder="Father Name" name="father_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Mother Name</th>
                        <td><input type="text" value="{{ $student->mother_name }}" placeholder="Mother Name" name="mother_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>
                            <input type="radio" @if($student->gender=='male') checked @endif value="male" name="gender" /> Male &nbsp;&nbsp;
                            <input type="radio" @if($student->gender=='female') checked @endif value="female" name="gender" /> Female
                        </td>
                    </tr>
                    <tr>
                        <th>Image</th>
                        <td>
                            <input type="file" name="photo">
                            <input type="hidden" name="prev_photo" value="{{ $student->photo }}" />
                            <img src="{{ asset('imgs/stu_imgs/'.$student->photo) }}" width="150" class="mt-2" />
                        </td>
                    </tr>
                    <tr>
                        <th>Student Number</th>
                        <td><input type="text" value="{{ $student->student_no }}" placeholder="Adhaar Number" name="student_no" class="form-control"></td>
                    </tr>
                    {{-- <tr>
                        <th>Adhaar Photo</th>
                        <td>
                            <input type="file" name="adhaar_img">
                            <input type="hidden" name="prev_adhaar_img" value="{{ $student->adhaar_img }}" />
                            <img src="{{ asset('imgs/adhaar_imgs/'.$student->adhaar_img) }}" width="150" class="mt-2" />
                        </td>
                    </tr> --}}
                    {{-- <tr>
                        <th>Blood Group</th>
                        <td><input type="text" value="{{ $student->blood_group }}" placeholder="Blood Group" name="blood_group" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Blood Group Photo</th>
                        <td>
                            <input type="file" name="blood_group_img">
                            <input type="hidden" name="prev_blood_group_img" value="{{ $student->blood_group_img }}" />
                            <img src="{{ asset('imgs/bg_imgs/'.$student->blood_group_img) }}" width="150" class="mt-2" />
                        </td>
                    </tr> --}}
                    <tr>
                        <th>Mobile Number</th>
                        <td><input type="text" value="{{ $student->mobile_no }}" placeholder="Mobile Number" name="mobile_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Alternate Mobile Number <small>(if any)</small></th>
                        <td><input value="{{ $student->alternate_mobile_no }}" type="text" placeholder="Alternate Mobile Number" name="alternate_mobile_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Email <small>(if any)</small></th>
                        <td><input type="email" value="{{ $student->email_id}}" placeholder="Email Address" name="email_id" class="form-control"></td>
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
                                            <option value="{{$student->grade}}">{{$student->grade}}</option>
                                            <option value="Grade 11">Grade 11</option>
                                            <option value="Grade 12">Grade 12</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                    <tr>
                        <th>Class</th>
                        <td>
                            <select class="form-control" name="class">
                                    <option value="{{$student->class}}">{{$student->class}}</option>
                                    <option value="ABM 1204-03">ABM 1204-03</option>
                                    <option value="ABM 1101-03">ABM 1101-03</option>
                                    <option value="HUMS 1101-03">HUMS 1101-03</option>
                                    <option value="HUMS 1201-03">HUMS 1201-03</option>
                                    <option value="STEM 1101-02">STEM 1101-02</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Date Of Birth</th>
                        <td><input type="text" value="{{ $student->dob }}" id="dob" placeholder="Date Of Birth" name="dob" class="form-control"></td>
                    </tr>
                    {{-- <tr>
                        <th>Roll Number</th>
                        <td><input type="text" value="{{ $student->roll_no }}" placeholder="Roll Number" name="roll_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Reg Date</th>
                        <td><input type="text" value="{{ $student->reg_date }}" placeholder="Registration Date" name="reg_date" class="form-control" id="regDate"></td>
                    </tr>
                    <tr>
                        <th>Reg Number</th>
                        <td><input type="text" value="{{ $student->reg_no }}" placeholder="Registration Number" name="reg_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Monthly Fees</th>
                        <td><input type="number" value="{{ $student->monthly_fees }}" placeholder="Monthly Fees" name="monthly_fees" class="form-control"></td>
                    </tr> --}}
                    <tr>
                        <th>Address</th>
                        <td>
                            <textarea class="form-control" placeholder="Address" name="address" rows="8">{{ $student->address }}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Extra Note</th>
                        <td>
                            <textarea class="form-control" placeholder="Extra Note" name="extra_note" rows="8">{{ $student->extra_note }}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="Update" class="btn btn-primary btn-block" />
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
        // 
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