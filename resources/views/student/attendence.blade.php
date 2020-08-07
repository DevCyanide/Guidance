@extends('layout')
@section('pageTitle','Attendence Sheet')
@section('content')
<meta name="csrf-token" content="{{ csrf_token() }}">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="{{ asset('backend') }}/js/fixedColumns.dataTables.min.css">
<div class="app-title">
    @if(Request::has('stu_id'))
    <table class="table table-striped table-bordered stripe row-border order-column">
        <thead>
            <tr>
                <th>Month</th>
                <th>Total Late</th>
            </tr>
        </thead>
        @php
            $studentId=Request::get('stu_id');
            $studentAttendenceByMonth=DB::select("SELECT count(*) as total, DATE_FORMAT(created_at, '%Y-%m-01') AS month FROM student_attendences WHERE a_stu_id=".$studentId." GROUP BY month");
            //echo '<pre>';
            //print_r($studentAttendenceByMonth);
            if(count($studentAttendenceByMonth)>0){
                foreach($studentAttendenceByMonth as $stu){
                    @endphp
                    <tr>
                        <td>{{ $stu->month }}</td>
                        <td>{{ $stu->total }}</td>
                    </tr>
                    @php
                }
            }
        @endphp
    </table>
    @else

    <div>
        <h1><i class="fa fa-th-list"></i> Late Sheet of class <span class="text-muted">"{{ strtoupper($className) }}"</span> <span class="badge badge-secondary">{{ App\Student::where('class',$className)->count() }}</span></h1>
    </div>
    <form action="" method="GET" autocomplete="off">
        @if(request()->has('monthyear'))
        <input class="form-control" value="{{ Request::get('monthyear') }}" id="selectDate" name="monthyear" type="text" placeholder="Select Month">
        @else
        <input class="form-control" id="selectDate" name="monthyear" type="text" placeholder="Select Month">
        @endif
        <p class="mt-1"></p>
        <input type="submit" value="Change" class="btn btn-danger btn-sm" />
        <a href="{{ url('student/attendence/'.$className) }}" class="btn btn-warning btn-sm">Reset</a>
    </form>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="tile">
        <div class="tile-body">
            @php
            if(request()->has('monthyear')){
                $monthYear=Request::get('monthyear');
                $monthyear=explode('-',$monthYear);
                $days=cal_days_in_month(CAL_GREGORIAN,$monthyear[0],$monthyear[1]);
            }else{
                $days=cal_days_in_month(CAL_GREGORIAN,date('m',time()),date('Y',time()));
            }
            @endphp
            <table class="table table-striped table-bordered stripe row-border order-column" id="dataTable">
                <thead>
                    <tr class="bg-light">
                        <th></th>
                        <th>Name</th>
                        @for($i=1;$i<=$days;$i++)
                            @if(Request::has('monthyear'))
                            <th>{{ $i.' '.substr(date("F", mktime(null, null, null, $monthyear[0])),0,3) }}</th>
                            @else
                            <th>{{ $i.' '.date('M',time()) }}</th>
                            @endif
                            
                        @endfor
                    </tr>
                </thead>
                <tbody>
                    @if(count($students)>0)
                        @foreach($students as $s)
                        @php
                        $attendenceArray=array();
                        $attendences=DB::table('student_attendences')->where('a_stu_id',$s->stu_id)->get();
                        foreach($attendences as $a){
                            $attendenceArray[]=$a->attend_date.'_'.$a->attend_status;
                        }
                        @endphp
                            <tr>
                                <td>{{ $s->roll_no }}</td>
                                <td>{{ $s->fname.' '.$s->lname }}</td>
                                @for($i=1;$i<=$days; $i++)
                                <td>
@php
    if(Request::has('monthyear')){
        $dateFormat=$i.'/'.$monthyear[0].'/'.$monthyear[1];
        $number=$i.$monthyear[0].$monthyear[1];
    }else{
        $dateFormat=$i.'/'.date('m/Y',time());
        $number=$i.date('mY',time());
    }
@endphp
@if(in_array($dateFormat.'_1',$attendenceArray))
    <div class="toggle sm">
        <label title="Today Attendence">
            <input title="Today Attendence" data-studate="{{ $s->stu_id.$number }}" data-adate="{{ $dateFormat }}" data-status="0" checked data-stu-id="{{ $s->stu_id }}" class="today_attendence stu{{ $s->stu_id.$number }}" type="checkbox">
            <span class="button-indecator"></span>
        </label>
    </div>
<p class="show-in-print">P</p>
@else
<div class="toggle sm">
        <label title="Today Attendence">
            <input title="Today Attendence" data-studate="{{ $s->stu_id.$number }}" data-adate="{{ $dateFormat }}" data-status="1" data-stu-id="{{ $s->stu_id }}" class="today_attendence stu{{ $s->stu_id.$number }}" type="checkbox">
            <span class="button-indecator"></span>
        </label>
    </div>
<p class="show-in-print">A</p>
@endif
                                </td>
                                @endfor
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        </div>
    </div>
    @endif
</div>

{{--  DataPicker  --}}
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>

<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/jquery.dataTables.min.js"></script>
{{-- Print Media --}}
<script type="text/javascript" src="{{ asset('backend') }}/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/buttons.print.min.js"></script>

<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/dataTables.fixedColumns.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $('#dataTable').DataTable({
            scrollY:        "700px",
            scrollX:        true,
            scrollCollapse: true,
            paging:         false,
            fixedColumns:   {
                leftColumns: 2
            },
            dom: 'Bfrtip',
            buttons: [
                {
                    'extend':'print',
                    className:'btn btn-sm btn-info',
                    text:'Print'
                }
            ]
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

    {{--  Attendence Via Ajax  --}}
    $(document).ready(function(){
        $(document).on('change','.today_attendence',function(){
            var _stu_id=$(this).data('stu-id');
            var _studate=$(this).data('studate');
            var _attend_status=$(this).data('status');
            var _attend_date=$(this).data('adate');
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url:"{{ url('api/attendence') }}",
                type:"POST",
                data:{
                    stu_id:_stu_id,
                    status:_attend_status,
                    attendence_date:_attend_date
                },
                dataType:"json",
                success:function(response){
                    if(response.status==true){
                        location.reload();
                    }
                }
            });
        });
    });

    });
</script>
<style>
.table.table-striped.table-bordered.stripe.row-border.order-column.dataTable.no-footer.DTFC_Cloned{
    margin-top: -0.5px !important;
}
    table.dataTable.table-striped.DTFC_Cloned tbody tr:nth-of-type(odd) {
        background: #F3F3F3;
}

table.dataTable.table-striped.DTFC_Cloned tbody tr:nth-of-type(even) {
        background: white;
}
</style>
@endsection