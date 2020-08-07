@extends('layout')
@section('pageTitle','All Students')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Result Card of  <span class="text-muted">"{{ $studentDetail->fname.' '.$studentDetail->lname }}"</span> class <span class="text-muted">"{{ $studentDetail->class }}"</span>
            </h1>
    </div>
    <div class="side">
        <a href="{{ url('students') }}" class="btn btn-dark btn-sm">Student List</a>
        <a href="{{ url('student/detail/'.$studentDetail->stu_id) }}" class="btn btn-primary btn-sm">Student Detail</a>
    </div>
</div>
<div class="row">
    <div class="col-md-6 hide-in-print">
        <div class="tile">
        @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
        @endif
        <div class="tile-title">Add Result <span class="badge badge-secondary"></span></div>
        <div class="tile-body">
            <form method="post" autocomplete="off" action="{{ url('student/result-card/'.$studentDetail->stu_id) }}">
                {{ csrf_field() }}
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <th>Select Month</th>
                        <td><input placeholder="Select Month" name="result_month" class="form-control" id="selectDate" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h5 class="border-bottom pb-1">Subjects</h5>
                            <table class="table table-bordered table-striped subjects-wrapper mt-3">
                                @if(count($subjects)>0)
                                    @foreach($subjects as $s)
                                        <tr>
                                            <td>{{ $s->subject_title }}</td>
                                            <td><input type="text" placeholder="{{ $s->subject_title }} Marks" class="form-control result-marks" name="result_marks[{{ $s->subject_id }}]">out of {{ $s->subject_marks }}</td>
                                        </tr>
                                    @endforeach
                                @endif
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" class="btn btn-danger" value="Submit">
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
        <div class="tile-title-w-btn">
<h4 class="title">Result Sheet @if(Request::has('result_month')) of <span class="text-muted">"{{ Request::get('result_month') }}"</span> @endif</h4>
            <form method="get" action="{{ url('student/result-card/'.$studentDetail->stu_id) }}">
                <select class="form-control" name="result_month">
                    <option value="">--- Select Month---</option>
                    @if(count($monthGroups)>0)
                        @foreach($monthGroups as $month)
                        <option value="{{ $month->term_month }}">{{ $month->term_month }}</option>
                        @endforeach
                    @endif
                </select>
                <input type="submit" class="btn btn-danger btn-sm">
            </form>
        </div>
        <div class="tile-body">
            <a href="javascript:window.print();" class="btn btn-info btn-sm hide-in-print mb-4">Print</a>
            <table class="table table-bordered table-striped" id="dataTable">
                <thead>
                    <tr>
                        <th>Subject</th>
                        <th>Total</th>
                        <th>Obtained</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    {{-- {{ $lastQuery }} --}}
                    @if(count($results)>0)
                        @foreach($results as $r)
                        @php
                        $resultMarksCount=DB::table('result_card')
                        ->where(['stu_id'=>$studentDetail->stu_id,'term_month'=>Request::get('result_month'),'subject_id'=>$r->subject_id])
                        ->count();
                        if($resultMarksCount>0){
                            $resultMarks=DB::table('result_card')
                            ->where(['stu_id'=>$studentDetail->stu_id,'term_month'=>Request::get('result_month'),'subject_id'=>$r->subject_id])
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
                            <td>
                                <a onclick="return confirm('Are you sure to delete this data?')" href="{{ url('student/result-card/'.$studentDetail->stu_id.'/?month='.Request::get('result_month').'&subject='.$r->subject_id.'&action=delete') }}" class="badge badge-danger"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        @endforeach
                        <tr>
                            <th></th>
                            <th>{{ $totalMarks }}</th>
                            <th>{{ $totalObtained }}</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td></td>
                            <th>Percentage</th>
                            <th>{{ number_format(($totalObtained*100)/$totalMarks,2) }} %</th>
                            <td></td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
        </div>
    </div>
</div>
{{--  DataPicker  --}}
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>
<!-- Page specific javascripts-->
<script type="text/javascript">
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