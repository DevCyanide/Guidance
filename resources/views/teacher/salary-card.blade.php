@extends('layout')
@section('pageTitle','Teacher Salary Card')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Salary Card of   <span class="text-muted">"{{ $teacherDetail->full_name }}"</span>
            </h1>
    </div>
    <div class="side">
        <a href="{{ url('teachers') }}" class="btn btn-dark btn-sm">Teacher List</a>
        <a href="{{ url('teacher/detail/'.$teacherDetail->id) }}" class="btn btn-primary btn-sm">Teacher Detail</a>
    </div>
</div>
<div class="row">
    <div class="col-md-5 hide-in-print">
        <div class="tile">
        @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
        @endif
        <div class="tile-title">Add Salary <span class="badge badge-secondary">{{ $teacherDetail->salary }}</span></div>
        <div class="tile-body">
            <form method="post" autocomplete="off" action="{{ url('teacher/salary-card/'.$teacherDetail->id) }}">
                {{ csrf_field() }}
                <table class="table table-bordered">
                    <tr>
                        <th>Select Month</th>
                        <td><input placeholder="Select Month" name="salary_month" class="form-control" id="selectDate" /></td>
                    </tr>
                    <tr>
                        <th>Amount</th>
                        <td><input name="salary_amount" placeholder="Enter Amount" type="number" class="form-control" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" class="btn btn-danger" value="Submit">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        </div>
    </div>
    <div class="col-md-7">
        <div class="tile">
        <div class="tile-title-w-btn">Salary Detail
            <a href="javascript:window.print();" class="btn btn-info btn-sm hide-in-print">Print</a>
        </div>
        <div class="tile-body">
            @include('student.inc.school')
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Month</th>
                        <th>Amount</th>
                        <th>Balance</th>
                        <th>By</th>
                        <th>Time</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @if(count($salaryDetail)>0)
                    @foreach($salaryDetail as $f)
                    <tr>
                        <td>{{ $f->deposite_month }}</td>
                        <td>
                            @php 
                                // if(date('m-Y',time())==$f->deposite_month){
                                //     echo  "$f->deposite_fees_amount";
                                // }else{
                                //     echo  "$teacherDetail->monthly_fees-$f->deposite_fees_amount";
                                // }
                                echo  "$f->deposite_salary_amount";
                            @endphp
                        </td>
                        <td>
                            @php

                            @endphp
                            @if($f->balance_salary<0)
                                +{{ abs($f->balance_salary) }}
                            @else
                                {{ $f->balance_salary }}
                            @endif
                        </td>
                        <td>{{ $f->deposite_by }}</td>
                        <td>{{ $f->deposite_time }}</td>
                        <td>
                            <a href="{{ url('teacher/salary-card/delete/'.$teacherDetail->id.'/'.$f->salary_id) }}" onclick="return confirm('Are you sure to delete this?');" class="badge badge-danger"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    <tr>
                        <td colspan="2" align="right"><strong>Balance<strong></td>
                        <td><strong>
                            @if($totalBalance[0]->balance_salary<0)
                                <span class="text-success">+{{ abs($totalBalance[0]->balance_salary) }}</span>
                            @else
                                <span class="text-danger">{{ abs($totalBalance[0]->balance_salary) }}</span>
                            @endif
                    </strong></td>
                        <td colspan="3"></td>
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