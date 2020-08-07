@extends('layout')
@section('pageTitle','Update Teacher')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Modify Teacher</h1>
    </div>
    <a class="side btn btn-success" href="{{ url('teachers') }}">
        Teacher List
    </a>
</div>
<form method="post" action="{{ url('teacher/update/'.$teacher->id) }}" enctype="multipart/form-data" id="teacherAddForm">
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
                        <th>Full Name</th>
                        <td><input type="text" value="{{ $teacher->full_name }}" placeholder="Full Name" name="full_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Father Name</th>
                        <td><input type="text" value="{{ $teacher->father_name }}" placeholder="Father Name" name="father_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Mother Name</th>
                        <td><input type="text" value="{{ $teacher->mother_name }}" placeholder="Mother Name" name="mother_name" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>
                            <input type="radio" @if($teacher->gender=='male') checked @endif value="male" name="gender" /> Male &nbsp;&nbsp;
                            <input type="radio" @if($teacher->gender=='female') checked @endif value="female" name="gender" /> Female
                        </td>
                    </tr>
                    <tr>
                        <th>DOB</th>
                        <td><input type="text" value="{{ $teacher->dob }}" id="dob" placeholder="Joining Date" name="dob" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Image</th>
                        <td>
                            <input type="file" name="photo">
                            <input type="hidden" name="prev_photo" value="{{ $teacher->photo }}" />
                            <img src="{{ asset('imgs/teacher_imgs/'.$teacher->photo) }}" width="150" class="mt-2" />
                        </td>
                    </tr>
                    <tr>
                        <th>Adhaar Number</th>
                        <td><input type="text" value="{{ $teacher->adhaar_no }}" placeholder="Adhaar Number" name="adhaar_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Adhaar Photo</th>
                        <td>
                            <input type="file" name="adhaar_img">
                            <input type="hidden" name="prev_adhaar_img" value="{{ $teacher->adhaar_img }}" />
                            <img src="{{ asset('imgs/teacher_adhaar_imgs/'.$teacher->adhaar_img) }}" width="150" class="mt-2" />
                        </td>
                    </tr>
                    <tr>
                        <th>Mobile Number</th>
                        <td><input type="text" value="{{ $teacher->mobile }}" placeholder="Mobile Number" name="mobile_no" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Alternate Mobile Number <small>(if any)</small></th>
                        <td><input value="{{ $teacher->mobile_2 }}" type="text" placeholder="Alternate Mobile Number" name="alternate_mobile_no" class="form-control"></td>
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
                        <th>Salary</th>
                        <td><input value="{{ $teacher->salary }}" type="text" placeholder="Salary" name="salary" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Joining Date</th>
                        <td><input type="text" value="{{ $teacher->joining_date }}" id="joiningDate" placeholder="Joining Date" name="joining_date" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Designation</th>
                        <td>
                            <select class="form-control" name="designation">
                                <option value="">[ Select Designation ]</option>
                                <option @if($teacher->designation=='primary') selected @endif value="primary">Primary</option>
                                <option @if($teacher->designation=='secondary') selected @endif value="secondary">Secondary</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Qualification</th>
                        <td><input value="{{ $teacher->qualification }}" type="text" placeholder="Qualification" name="qualification" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Experience</th>
                        <td><input value="{{ $teacher->experience }}" type="text" placeholder="Experience" name="experience" class="form-control"></td>
                    </tr>
                    <tr>
                        <th>Address</th>
                        <td>
                            <textarea class="form-control" placeholder="Address" name="address" rows="8">{{ $teacher->address }}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Extra Note</th>
                        <td>
                            <textarea class="form-control" placeholder="Extra Note" name="extra_note" rows="8">{{ $teacher->extra_note }}</textarea>
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
        $('#joiningDate').datepicker({
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
        $("#teacherAddForm").validate({
            errorClass: "text-danger",
            rules:{
                'full_name':{
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
                'joining_date':{
                    required:true
                }
            }
        });
    });
</script>
@endsection