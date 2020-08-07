@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-calendar" style="margin-right: 14px;"></i>Guidance Events<span class="badge badge-secondary"></span></h1>
    </div>
    <a class="btn" style="background-color: #4196e1; color: #fff;" href="eventInformation">Add Events</a>
</div>
            <div class="container" style="margin-top: 14px;">
            <form class="form-inline my-2 my-lg-0" style="margin-left: 0px;">

            </form>
            <div class="card">


                <div class="card-body">

        @foreach($events as $event)
            <div class="well" style="margin-top: 10px; border: 1px solid; width: auto; padding: 20px 20px 20px 20px;">
              <h3 style="color: #007bff">{{$event->event_name}}</h3>
              <h5> Date: {{ \Carbon\Carbon::parse($event->event_date)->format('m/d/Y')}}</h5>
              <div style="display: inline-block;">
             
              <button data-toggle="modal" data-target="#eventview" class="btn btn-secondary btn-sm"
              data-eventname="{{$event->event_name}}" 
              data-eventlocation="{{$event->event_location}}" 
              data-eventdate="{{ \Carbon\Carbon::parse($event->event_date)->format('m/d/Y')}}" 
              data-eventstart="{{\Carbon\Carbon::parse($event->event_start)->format('h:i A')}}" 
              data-eventend="{{\Carbon\Carbon::parse($event->event_end)->format('h:i A')}}" 
              data-eventinfo="{{$event->event_information}}">View</button>
              
              <button data-target="#edit" class="btn btn-info btn-sm my-2 my-sm-0"
              data-evid="{{$event->event_id}}"
              data-evname="{{$event->event_name}}" 
              data-evloc="{{$event->event_location}}" 
              data-evdate="{{$event->event_date}}" 
              data-evstart="{{$event->event_start}}" 
              data-evend="{{$event->event_end}}" 
              data-evinfo="{{$event->event_information}}" data-toggle="modal" >Edit</button>
              <BUTTON href="#" class="btn btn-outline-danger" data-toggle="modal"  data-evid="{{$event->event_id}}" data-target="#delete">Delete</BUTTON>
              </div>
            </div>
        @endforeach
        
              


      </div>
    </div>
  </div>

  <section id="event-view-modal">
      <!-- Modal -->

      
      <div class="modal fade" id="eventview" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Event Information</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

                <!--ALL INFORMATION ARE RETRIEVING AUTOMATICALLY-->

                <h4>Name of Event</h4>
                <h6 class="text-muted" id="td1">Name</h6>

                <div class="line" style="margin-top: 14px; margin-bottom: 14px;"></div>

                <h5>Location of Event</h5>
                <h6 class="text-muted" id="td2">Location</h6>

                <div class="line" style="margin-top: 14px; margin-bottom: 14px;"></div>

                <h5>Date of Event</h5>
                <p class="text-muted" style="margin-bottom: 20px;" id="td3"></p>

                <h5>Event Time</h5>
                <h6 class="text-muted" style="margin-bottom: 20px;" id="td4"></h6>

                <h5>Event Information</h5>
                <p class="text-muted" style="margin-bottom: 25px;" id="td5"></p>
                <form method='post' action='/uploadFile' enctype='multipart/form-data' >
       {{ csrf_field() }}
       <input type='file' name='file' >
       <input type='submit' name='submit' value='Import'>
     </form>


            </div>
            <div class="modal-footer">
              <div class="text-center">
                <p class="text-muted">&copy; 2018-2019</p>
              </div>
            </div>
          
          </div>
        </div>
      </div>
    </section>

  <section id="event-update-modal">
      <!-- Modal -->

      
      <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Edit Event</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
             <form action="{{route('events.update', 'test')}}" method="post">
              {{method_field('patch')}}
              {{csrf_field()}}
            <div class="modal-body">
                <!--ALL INFORMATION ARE RETRIEVING AUTOMATICALLY-->
                <input type="hidden" name="event_id" id="td0" value="">
                <h4>Name of Event</h4>
                <input type="text" class="form-control" name = "event_name" id="td1" style="width: 100%;">

                <div class="line" style="margin-top: 14px; margin-bottom: 14px; width: 100%;"></div>

                <h5>Location of Event</h5>
                <input type="text" class="form-control" name = "event_location" id="td2" style = " margin-bottom: 14px; width: 100%;">

                <h5>Date of Event</h5>
                <input type="date" class="form-control" name = "event_date" id="td3" style="margin-bottom: 20px; width: 50%;"></input>

                <h5>Event Start</h5>
                <input type="time" class="form-control" name = "event_start" id="td4" style="margin-bottom: 20px; width: 30%;"></input>

                <h5>Event End</h5>
                <input type="time" class="form-control" name = "event_end" id="td5" style="margin-bottom: 20px; width: 30%;"></input>

                <h5>Event Information</h5>
                 <textarea class="form-control" name = "event_information" id="td6" style="resize:none width:100%; height:20%;" rows="5">
                          </textarea>

                <div class="buttons" style="float: right; margin-top: 20px; margin-bottom: 10px;">
                  <button  class="btn btn-primary my-2 my-sm-0">Save Changes</button>
                </div>


            </div>
                </form>
            <div class="modal-footer">
              <div class="text-center">
                <p class="text-muted">&copy; 2018-2019</p>
              </div>
            </div>
          
          </div>
        </div>
      </div>
    </section>

      <section id="event-delete-modal">
      <!-- Modal -->

      
      <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Delete Confirmation</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
             <form action="{{route('events.destroy', 'test')}}" method="post">
              {{method_field('delete')}}
              {{csrf_field()}}
            <div class="modal-body">
              <p>Are you sure you want to DELETE this event?</p>
              <input type="hidden" name="event_id" id="td0" value="">
            </div>
            <div class="buttons" style="float:right; margin-top: 20px; margin-right: 10px; margin-bottom: 10px;">
                  <button type="submit" class="btn btn-danger">Delete</button>
                  <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                </div>
                </form>
            <div class="modal-footer">
              <div class="text-center">
                <p class="text-muted">&copy; 2018-2019</p>
              </div>
            </div>
          
          </div>
        </div>
      </div>
    </section>

    <script>
      $('#cmd').click(function () {   
        doc.fromHTML($('#table1').html(), 15, 15, {
        'width': 170,
            'elementHandlers': specialElementHandlers
      });
      doc.save('sample-file.pdf');
      });
    </script>

<script>

 $('#eventview').on('show.bs.modal', function (event) {
      console.log('Modal Open');  
  var button = $(event.relatedTarget) // Button that triggered the modal
 
  var eventName= button.data('eventname')
  var eventLoc= button.data('eventlocation')
  var eventDate= button.data('eventdate')
  var eventStart= button.data('eventstart')
  var eventEnd= button.data('eventend')
  var eventInfo= button.data('eventinfo')


$('#td1').html(eventName);
$('#td2').html(eventLoc);
$('#td3').html(eventDate);
$('#td4').html(eventStart+" to "+eventEnd);
$('#td5').html(eventInfo);



// $('#td3').html(famage1);
// $('#td4').html(attainment1);

// modal.find('.modal-body #td1').val(fname);

          })
 
    </script>
 

<script>

 $('#edit').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
     
  var eventID= button.data('evid')
  var eventName = button.data('evname')
  var eventLoc = button.data('evloc')
  var eventDate = button.data('evdate')
  var eventStart = button.data('evstart')
  var eventEnd = button.data('evend')
  var eventInfo = button.data('evinfo')
 
 
  var modal = $(this)

  modal.find('.modal-body  #td0').val(eventID);
  modal.find('.modal-body  #td1').val(eventName);
  modal.find('.modal-body  #td2').val(eventLoc);
  modal.find('.modal-body  #td3').val(eventDate);
  modal.find('.modal-body  #td4').val(eventStart);
  modal.find('.modal-body  #td5').val(eventEnd);
  modal.find('.modal-body  #td6').val(eventInfo);
  // $('#td3').html(famage1);
  // $('#td4').html(attainment1);

// modal.find('.modal-body #td1').val(fname);

          })
 
 $('#delete').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
     
  var eventID= button.data('evid')

 
  var modal = $(this)

modal.find('.modal-body  #td0').val(eventID);

          });

         $(document).ready(function(){
            $('#sidebarCollapse').on('click',function(){
                $('#sidebar').toggleClass('active');
            });
        });  


    </script>
@endsection