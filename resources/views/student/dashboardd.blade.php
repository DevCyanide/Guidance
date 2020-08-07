@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-tachometer" style="margin-right: 14px;"></i>Dashboard<span class="badge badge-secondary"></span></h1>
    </div>
</div>

<div class="container">
	<div class="card">
		<div class="card-body">
			
			<div class="col-md-12 order-md-1">
				<div class="row">

					{{--Student Record Count--}}
					<div class="col-md-4 mb-3">
                        <div class="container">
                            <div class="card">
                                <div class="card-body">

                                	<div class="col">
                                        <div class="row">
                                        	<i class="app-menu__icon fa fa-user fa-4x" style="margin-right: 24px; margin-top: 14px; margin-left: 14px;"></i>
                                            
                                            <div class="col" style="margin-top: 14px;">
                                            <h4>{{$students}}</h4>
                                                <p style="font-size: 15px;">Student Records</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    {{--Pending Cases Count--}}
                    <div class="col-md-4 mb-3">
                        <div class="container">
                            <div class="card">
                                <div class="card-body">

                                	<div class="col">
                                        <div class="row">
                                        	<i class="app-menu__icon fa fa-bell fa-4x" style="margin-right: 24px; margin-top: 14px; margin-left: 4px;"></i>
                                            
                                            <div class="col" style="margin-top: 14px; margin-left: 14px;">
                                                <h4>{{$pending}}</h4>
                                                <p style="font-size: 15px;">Pending Cases</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    {{--Visit Logs Count--}}
                    <div class="col-md-4 mb-3">
                        <div class="container">
                            <div class="card">
                                <div class="card-body">

                                	<div class="col">
                                        <div class="row">
                                        	<i class="app-menu__icon fa fa-sign-in fa-4x" style="margin-right: 24px; margin-top: 14px; margin-left: 4px;"></i>
                                            
                                            <div class="col" style="margin-top: 14px; margin-left: 14px;">
                                            <h5>{{$visit}}</h5>
                                                <p style="font-size: 15px;">Visit Logs</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>

		</div>
	</div>
</div>

<div class="container" style="margin-top: 14px;">
	<div class="card">
		<div class="card-body">
			
			<div class="col-md-12 order-md-1">
				<div class="row">

					<h4>Pending Counselling Cases</h4>

					<table class="table table-bordered" style="margin-top: 10px;" id="dataTables">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Issued Date</th>
                    <th scope="col">Expired at</th>
                  </tr>
                </thead>
                <tbody>
                        @if(count($studentss)>0)
                        @foreach($studentss as $s)
                  <tr>
                  <td>{{$s->student_no}}</td>
                    <td>{{$s->fname}} {{$s->lname}}</td>
                    <td>{{$s->created_at}}</td>
                    <td>{{$s->comeback}}</td>
                  </tr>
                  @endforeach
                  @endif
                </tbody>
            </table>
					
				</div>
			</div>

		</div>
	</div>
</div>

<div class="container" style="margin-top: 14px;">
	<div class="card">
		<div class="card-body">
			
                      <div class="col-md-12 order-md-1">
                <div class="row">

                    <h4>Guidance Events</h4>
                                          <div class="col-md-12 order-md-1">
 <table id= "table1" class="table border" style="margin-top: 25px;  width:98%; ">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Event name </th>
                    <th scope="col">Location</th>
                    <th scope="col">Date</th>
                  </tr>
                {{-- </thead>
                @if(count($events) > 0)       
                @foreach ($events as $events) --}}
                <tr>
                    {{-- <td>{{$events -> event_name}}</td>
                    <td>{{$events -> event_location}}</td>
                    <td>{{$events -> event_date}}</td> --}}
                </tr>
                {{-- @endforeach
                @else
                <p>No Events Scheduled</p>
                @endif --}}
              </table>
              </div>
                    
		</div>
	</div>
</div>


@endsection