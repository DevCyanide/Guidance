@extends('layout')
@section('pageTitle','All Students')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Subjects of  <span class="text-muted">"{{ $class }}"</span>
            </h1>
    </div>
    <div class="side">
        <a href="{{ url('student/classes') }}" class="btn btn-dark btn-sm">Class List</a>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="tile">
        @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
        @endif
@if($errors->any())
@foreach($errors->all() as $e)
<p class="alert alert-warning">{{ $e }}</p>
@endforeach
@endif
        <div class="tile-title">Add Subject <span class="badge badge-secondary"></span></div>
        <div class="tile-body">
            <form method="post" autocomplete="off" action="{{ url('student/subject/'.$class) }}">
                {{ csrf_field() }}
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <th>Enter Subject</th>
                        <td><input @if($subjectDetail!='') value ="{{ $subjectDetail[0]->subject_title }}" @endif  placeholder="Enter Subject" name="subject_title" class="form-control" /></td>
                    </tr>
                    <tr>
                        <th>Enter Total Marks</th>
                        <td><input @if($subjectDetail!='') value ="{{ $subjectDetail[0]->subject_marks }}" @endif  placeholder="Enter Total Marks" name="subject_marks" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" name="submit" class="btn btn-danger" value="Submit">
                        </td>
                    </tr>
                </tbody>
                <tfoot class="subject-marks-hidden"></tfoot>
                </table>
            </form>
        </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="tile">
        <div class="tile-title">Subjects List</div>
        <div class="tile-body">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Subject Title</th>
                        <th>Subject Marks</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($subjects)>0)
                        @foreach($subjects as $s)
                        <tr>
                            <td>{{ $s->subject_title }}</td>
                            <td>{{ $s->subject_marks }}</td>
                            <td>
                                <a class="badge badge-danger" href="{{ url('student/subject/'.$s->class.'/?delete='.$s->subject_id) }}"><i class="fa fa-times"></i></a>
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
@endsection