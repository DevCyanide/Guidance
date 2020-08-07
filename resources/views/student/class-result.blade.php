@extends('layout')
@section('pageTitle','All Students')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> All Students 
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
    <a class="side btn btn-success" href="{{ url('student/create') }}">
        Add Student
    </a>
    @endif
</div>
<div class="row">
    <div class="col-md-12">
        <div class="tile">
        @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
        @endif
        <div class="tile-body">
            <table class="table table-bordered" id="dataTable">
                <thead>
                    <tr class="bg-light">
                        <th>#</th>
                        <th>Photo</th>
                        <th>Full Name</th>
                        <th>Result</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($students)>0)
                        @foreach($students as $s)
                        <tr>
                            <td>{{ $s->stu_id }}</td>
                            <td>
                                <img width="100" src="{{ asset('imgs/stu_imgs/'.$s->photo) }}" class="img-fluid rounded" />
                            </td>
                            <td>
                                <strong>{{ $s->fname.' '.$s->lname }}</strong>
                            </td>
                            <td>
                                <table class="table table-condensed table-bordered">
@php
$resultterms=DB::table('result_card')
->where('stu_id',$s->stu_id)
->groupBy('term_month')
->get();


@endphp
@foreach($resultterms as $r)
<tr>
    <th>{{ $r->term_month }}</th>
</tr>
<tr>
    <td>
        @php

// Highest Marks
$highest_marks=DB::select(DB::raw('SELECT *,SUM(result_marks) 
as result_total FROM result_card WHERE term_month="'.$r->term_month.'" GROUP by stu_id ORDER by result_total DESC LIMIT 1'));
//echo '<pre>';
//print_r($highest_marks);

        $subjects=DB::table('subjects')->where('class',$s->class)->get();
        $results=DB::table('subjects')
        ->where('class',$s->class)
        ->get();
        // Total Marks Obtained
        $totalObtained=DB::table('result_card')
        ->where(['stu_id'=>$s->stu_id,'term_month'=>$r->term_month])
        ->sum('result_marks');
        // Total Marks of all subjects
        $totalMarks=DB::table('subjects')
        ->where('class',$s->class)
        ->sum('subject_marks');
        @endphp
        <table class="table table-bordered" id="dataTable">
                <thead>
                    <tr>
                        <th>Subject</th>
                        <th>Total</th>
                        <th>Obtained</th>
                    </tr>
                </thead>
                <tbody>
                    {{-- {{ $lastQuery }} --}}
                    @if(count($results)>0)
                        @foreach($results as $r)
                        @php
                        $resultMarksCount=DB::table('result_card')
                        ->where(['stu_id'=>$s->stu_id,'term_month'=>Request::get('result_month'),'subject_id'=>$r->subject_id])
                        ->count();
                        if($resultMarksCount>0){
                            $resultMarks=DB::table('result_card')
                            ->where(['stu_id'=>$s->stu_id,'term_month'=>Request::get('result_month'),'subject_id'=>$r->subject_id])
                            ->get();
                            $result_marks=$resultMarks[0]->result_marks;
                        }else{
                            $result_marks=0;
                        }
                        @endphp
                        <tr>
                            <td>{{ $r->subject_title }}</td>
                            <td>{{ $r->subject_marks }}</td>
                            <td>{{ $result_marks }}</td>
                        </tr>
                        @endforeach
                        <tr>
                            <th></th>
                            <th>{{ $totalMarks }}</th>
                            <th>{{ $totalObtained }}</th>
                        </tr>
                        <tr>
                            <td></td>
                            <th>Percentage</th>
                            <th>{{ number_format(($totalObtained*100)/$totalMarks,2) }} %</th>
                        </tr>
                    @endif
                </tbody>
        </table>
    </td>
</tr>
@endforeach
                                </table>
                            </td>
                            <td>
                                <a target="_blank" href="{{ url('student/detail/'.$s->stu_id) }}" class="btn btn-secondary btn-sm" title="Full Detail">View</a>
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
</script>
@endsection