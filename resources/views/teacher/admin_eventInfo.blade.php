@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-calendar" style="margin-right: 14px;"></i>Add Event<span class="badge badge-secondary"></span></h1>
    </div>
</div>

        
    <div class="container" style="margin-top: 10px;">
        <div class="card">
          <div class="card-body">
        <form class="needs-validation" novalidate action="insert" method="post">
          @if(count($errors)>0)
            @foreach($errors->all() as $error)
              <div class ="alert alert-danger">
                {{$error}}
              </div> 
            @endforeach
          @endif

          @if(session('success'))
            <div class="alert alert-success">  
              {{session('success')}}
            </div>
          @endif


          {{csrf_field()}}

                      <div class="row">
                        <div class="col-md-6 mb-3">
                          <label for="eventName">Event Name</label>
                          <input type="text" class="form-control" name="event_name" placeholder="Name of Program" value="{{old('event_name')}}">
                        </div>
            <div class="col-md-6 mb-3">
                          <label for="eventName">Event Location</label>
                          <input type="text" class="form-control" name="event_location" placeholder="Event Venue" value="{{old('event_location')}}">

                        </div>
            </div>
            
            <div class="row">
             <div class="col-md-4 mb-3">
              <label for="eventDate">Event Date: </label>
              <input type="date" name="event_date" id="eventName" value="{{old('event_date')}}">

            </div>
            <div class="col-md-4 mb-3">
                          <label for="endTime">Start Time</label>
              <input type="Time" name="event_start" id="startTime" value=" {{old('event_start')}}">

            </div>
            <div class="col-md-4 mb-3">
                          <label for="endTime">End Time</label>
              <input type="Time" name="event_end" id="endTime" value="{{old('event_end')}}">

            </div>
          </div>
      
                      <div class="row">
                        <div class="col-md-12 mb-3">
                          <label for="eventInfo">Event Information</label>
                            <textarea style="resize:none" rows="6" placeholder="Enter Event Information" class="form-control" name="event_information">{{old('event_information')}}</textarea>
                        </div>
                      </div>
          <input type="submit" class="btn btn-primary" data-toggle="modal" data-target="" style="width: 20%; background-color: #4196e1; color: #fff; float: right;" value="Save"><a href="/events"></a></input>

        </form>

        </div>
      </div>
    </div>

@endsection