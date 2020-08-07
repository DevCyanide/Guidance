@extends('layout')
@section('pageTitle','All Students')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-puzzle-piece" style="margin-right: 14px;"></i> All Classes <span class="badge badge-secondary"></span></h1>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="tile">
        <div class="tile-body">
            @include('student.inc.school')
            <table class="table table-bordered" id="dataTable">
                <thead>
                    <tr class="bg-light">
                        <th>Class</th>
                        <th>Total Late</th>
                        <th>Total Absent</th>
                        <th>Total Students</th>
                        <th>Late</th>
                        <th>Absent</th>
                        {{-- <th>Subject</th> --}}
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <a class="btn btn-info btn-sm" title="Students of this class" href="{{ url('student/class/ABM 1204-03') }}">ABM 1204-03</a>
                        </td>
                        <td>
                           <p>{{$users1}}</p>
                        </td>
                        <td>
                            <p>{{$absent1}}</p>
                        </td>
                        <td>{{ App\Student::where('class','ABM 1204-03')->count() }}</td>
                        <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/attendence/ABM 1204-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                        <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/classes/late/ABM 1204-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                        <td>
                            {{-- <a class="btn btn-warning btn-sm" title="Subjects of this class" href="{{ url('student/subject/ABM 1101-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage Exam</a>
                            <a class="btn btn-danger btn-sm" title="Subjects of this class" href="{{ url('class/result/ABM 1101-03') }}"><i class="fa fa-list"></i>&nbsp;View Result</a> --}}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a class="btn btn-info btn-sm" title="Students of this class" href="{{ url('student/class/HUMS 1101-03') }}">HUMS 1101-03</a>
                        </td>
                        <td>
                            <p>{{$users}}</p>
                        </td>
                        <td>
                            <p>{{$absent}}</p>
                        </td>
                        <td>{{ App\Student::where('class','HUMS 1101-03')->count() }}</td>
                        <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/attendence/HUMS 1101-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                        <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/classes/late/HUMS 1101-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                        <td>
                            {{-- <a class="btn btn-warning btn-sm" title="Subjects of this class" href="{{ url('student/subject/HUMS 1101-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage Exam</a>
                            <a class="btn btn-danger btn-sm" title="Subjects of this class" href="{{ url('class/result/HUMS 1101-03') }}"><i class="fa fa-list"></i>&nbsp;View Result</a> --}}
                        </td>
                    </tr>
                    <tr>
                            <td>
                                <a class="btn btn-info btn-sm" title="Students of this class" href="{{ url('student/class/HUMS 1201-03') }}">HUMS 1201-03</a>
                            </td>
                            <td>
                                <p>{{$users2}}</p>
                            </td>
                            <td>
                                <p>{{$absent2}}</p>
                            </td>
                            <td>{{ App\Student::where('class','HUMS 1201-03')->count() }}</td>
                            <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/attendence/HUMS 1201-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                            <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/classes/late/HUMS 1201-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                            <td>
                                {{-- <a class="btn btn-warning btn-sm" title="Subjects of this class" href="{{ url('student/subject/HUMS 1201-03') }}"><i class="fa fa-cog"></i>&nbsp;Manage Exam</a>
                                <a class="btn btn-danger btn-sm" title="Subjects of this class" href="{{ url('class/result/HUMS 1201-03') }}"><i class="fa fa-list"></i>&nbsp;View Result</a> --}}
                            </td>
                        </tr>
                        <tr>
                                <td>
                                    <a class="btn btn-info btn-sm" title="Students of this class" href="{{ url('student/class/STEM 1101-02') }}">STEM 1101-02</a>
                                </td>
                                <td>
                                    <p>{{$users3}}</p>
                                </td>
                                
                                <td>
                                    <p>{{$absent3}}</p>
                                </td>
                                
                                <td>{{ App\Student::where('class','STEM 1101-02')->count() }}</td>
                                <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/attendence/STEM 1101-02') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                                <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/classes/late/STEM 1101-02') }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                                {{-- <td>
                                    <a class="btn btn-warning btn-sm" title="Subjects of this class" href="{{ url('student/subject/STEM 1101-02') }}"><i class="fa fa-cog"></i>&nbsp;Manage Exam</a>
                                    <a class="btn btn-danger btn-sm" title="Subjects of this class" href="{{ url('class/result/STEM 1101-02') }}"><i class="fa fa-list"></i>&nbsp;View Result</a>
                                </td> --}}
                            </tr>
                    {{-- @for($i=1;$i<=12;$i++)
                    <tr>
                        <td>
                            <a class="btn btn-info btn-sm" title="Students of this class" href="{{ url('student/class/'.$i) }}">{{ $i }}</a>
                        </td>
                        <td>{{ App\Student::where('class',$i)->count() }}</td>
                        <td><a class="btn btn-dark btn-sm" title="Attendence of this class" href="{{ url('student/attendence/'.$i) }}"><i class="fa fa-cog"></i>&nbsp;Manage</a></td>
                        <td>
                            <a class="btn btn-warning btn-sm" title="Subjects of this class" href="{{ url('student/subject/'.$i) }}"><i class="fa fa-cog"></i>&nbsp;Manage Subjects</a>
                            <a class="btn btn-danger btn-sm" title="Subjects of this class" href="{{ url('class/result/'.$i) }}"><i class="fa fa-list"></i>&nbsp;View Result</a>
                        </td>
                    </tr> --}}
                    {{-- @endfor --}}
                </tbody>
        
            </table>
        </div>
        </div>
    </div>
</div>
<!-- Page specific javascripts-->
@endsection