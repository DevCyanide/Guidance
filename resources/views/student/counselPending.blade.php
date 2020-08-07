@extends('layout')
@section('pageTitle','Pending')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-bell" style="margin-right: 14px;"></i>Pending Counsel Cases<span class="badge badge-secondary"></span></h1>
    </div>
    {{-- <a class="btn" style="background-color: #4196e1; color: #fff;" data-toggle="modal" data-target="#counsel">Start Counseling</a> --}}
</div>

<div class="row">
    <div class="col-md-12">
        <div class="tile">
            @if(Session::has('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
            @endif
            @if(Session::has('error'))
            <p class="alert alert-danger">{{ session('error') }}</p>
        @endif
        @if(Session::has('Success'))
        <p class="alert alert-success">{{ session('Success') }}</p>
        @if($errors->any())
@foreach($errors->all() as $e)
<p class="alert alert-warning">{{ $e }}</p>
@endforeach
@endif
    @endif
        <div class="tile-body">
            @include('student.inc.school')
            <table class="table table-bordered" style="margin-top: 10px;" id="dataTables">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Issued Date</th>
                    <th scope="col">Expired at</th>
                    <th scope="col">Actions</th>
                  </tr>
                </thead>
                <tbody>
                    @if(count($students)>0)
                    @foreach($students as $s)
                  <tr>
                  <td>{{$s->student_no}}</td>
                    <td><strong>{{$s->fname}}{{$s->lname}}</td>
                    <td>
                      {{$s->When}}
                    </td>
                    <td>
                      {{$s->comeback}}
                    </td>
                    <td>
                      <a href="#" data-toggle="modal" data-target="#counselView" class="btn btn-secondary btn-sm" data-id="{{$s->student_no}}" data-fname="{{$s->fname}}"data-lname="{{$s->lname}}" data-section="{{$s->class}}"
                        data-contact="{{$s->mobile_no}}" data-addresss="{{$s->address}}" data-addresss="{{$s->address}}" data-concerns="{{$s->Concern}}" data-wants="{{$s->Want}}" data-todos="{{$s->whattodo}}"  data-others="{{$s->Other}}"
                        data-whens="{{$s->When}}"data-wills="{{$s->Will}}" data-comebacks="{{$s->comeback}}">View</a>
                      {{-- <a href="{{ url('counsel/detail/'.$s->counsel_id) }}" class="btn btn-secondary btn-sm" title="Full Detail">View</a> --}}
                      {{-- <a href="{{ url('counsel/start/'.$s->stu_id.'/'.$s->counsel_id) }}" class="btn btn-info btn-sm">Edit<a href> --}}
                      <a href="{{ url('counsel/start/'.$s->stu_id.'/'.$s->counsel_id) }}" class="btn btn-info btn-sm">Counsel<a href>
                      {{-- <a href="{{ url('counsel/destroy/'.$s->counsel_id) }}" class="btn btn-outline-danger btn-sm">Delete<a href> --}}
                      <a href="#" class="btn btn-outline-danger btn-sm" data-toggle="modal"  data-coun="{{$s->counsel_id}}" data-target="#delete">Delete<a href>
                    </td>
                  </tr>
                 
                    @endforeach
                    @endif
                </tbody>
            </table>
            <section id="counsel-modal">
      <!-- Modal -->
      <div class="modal fade" id="counsel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle">Counseling Services</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">

                <h6>Please type the student number of the student</h6>

                <div class="line" style="margin-top: 25px; margin-bottom: 25px;"></div>
                <form method="post" action="{{ url('counsel/pending/create') }}"  id="studentAddForm">
                  {{csrf_field()}}
                <label for="studNum">Student Number:</label>
                <input type="number" name="id" id="studNum" required>
                <div class="invalid-feedback">
                                    Valid student number is required.
                                  </div>

                <button type="Submit"  class="btn" style="background-color: #4196e1; color: #fff;">Proceed</button>
                                </form>
                <!--THEN IT WILL AUTOMATICALLY RETRIEVE THE STUDENT INFORMATION AND GO TO ADMIN_COUNSELFORM-->

                


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
               <form action="{{ url('counsel/destroy') }}" method="post">
                {{-- {{method_field()}} --}}
                {{csrf_field()}}
              <div class="modal-body">
                <p>Are you sure you want to DELETE this event?</p>
                <input type="hidden" name="counsel_id" id="tdd20" >
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
    <section id="counsel-view-modal">
            <!-- Modal -->
            <div class="modal fade" id="counselView" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Counseling Information</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
      
                      <!--ALL INFORMATION ARE RETRIEVING AUTOMATICALLY-->
      
                      <h3>Personal Information</h3>
      
                          <!-- Place here the Student Number -->
                          <h6 class="text-muted">Student Number: <span class="d-none d-md-inline" id='StudentID'></span></h6> 
      
                          <!-- Place here the name -->
                          <h6 class="text-muted">Name: <span class="d-none d-md-inline" id="fname"></span> <span class="d-none d-md-inline" id="lname"></span></h6> 
      
                          <!-- Place here the Grade -->
                          <h6 class="text-muted" >Section: <span class="d-none d-md-inline" id='section'></span></h6> 
      
                          <!-- Place here the Contact Number -->
                          <h6 class="text-muted">Contacts: <span class="d-none d-md-inline" id='contact'></span></h6> 
      
                          <!-- Place here the Address -->
                          <h6 class="text-muted" >Address: <span class="d-none d-md-inline" id='address'></span></h6> 
      
                          <div class="line_dark"></div>
      
                      <h3>Consultation Informations</h3>
      
                      <div class="col-md-12 mb-3">
                        <label for="otherGuidanceHelp">Concerns/Problems:</label>
                        <h6 class="text-muted" style="margin-bottom: 20px;" id='concern'>Description</h6>
                      </div>
      
                      <div class="col-md-12 mb-3">
                        <label for="otherGuidanceHelp">What do you want?</label>
                        <h6 class="text-muted" style="margin-bottom: 20px;" id="want">Description</h6>
                      </div>
      
                      <div class="col-md-12 mb-3">
                        <label for="whatWillYouDo">What will you do to get what you want?</label><br>
                        <h6 class="text-muted" style="margin-bottom: 20px;" id='todo'>Description</h6>
      
                        <div class="form-input" >
                          <label for="otherConsult"><span class="d-none d-md-inline">Others:</label>
                            
      
                        </div>
      
                        <div class="form-date" >
                          <label for="whenDo">When will you do it?<span class="d-none d-md-inline"></label>
                              <h6 class="text-muted" id='when'>date description</h6>
      
                        </div>
      
                        <div class="form-input" >
                          <label for="effectivenessConsult">Will it be effective/will it work?</label>
                            <h6 class="text-muted"id='will'>description</h6>
      
                        </div>
      
                        <div class="form-date" >
                          <label for="whenComeBack">I will come back to the guidance office on</label>
                              <h6 class="text-muted" id='comeback'>date description</h6>
      
                        </div>
      
                        <div class="line_dark"></div>
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
        </div>
        </div>
    </div>
</div>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/jquery.dataTables.min.js"></script>
{{-- Print Media --}}

<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#dataTables').DataTable({
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
    <script>
      $('#counselView').on('show.bs.modal', function (event) {
      console.log('Modal Open');  
  var button = $(event.relatedTarget) // Button that triggered the modal
  // var lastname= button.data('lastname')
  var idz= button.data('id')
  var fnamez= button.data('fname')
  var lnamez = button.data('lname')
  var sectionz = button.data('section')
  var contactz = button.data('contact')
  var adressz = button.data('addresss')
  var concernz = button.data('concerns')
  var wantz = button.data('wants')
  var todoz = button.data('todos')
  var otherz = button.data('others')
  var whenz = button.data('whens')
  var willz =button.data('wills')
  var comebackz =button.data('comebacks')

  $(document).ready(function(){
    $("button").click(function(){
      $("#counsel").attr("href", "counsel/");
    });
  });


  if(todoz=='True'){
    todoz="Seek interventions/Counseling at the Guidance office";
  }
  else if(todoz=='Helpteacher'){
    todoz="Seek help from the teachers/adviser/Principal.";
  }else{
    todoz="Seek help from parents/guardian.";
  }
//   var comeback =button.data('comeback')
//   var contact = button.data('contact')

$('#StudentID').html(idz);
$('#fname').html(fnamez);
$('#lname').html(lnamez);
$('#section').html(sectionz);
$('#contact').html(contactz);
$('#address').html(adressz);
$('#concern').html(concernz);
$('#want').html(wantz);
$('#todo').html(todoz);
$('#other').html(otherz);
$('#when').html(whenz);
$('#will').html(willz);
$('#comeback').html(comebackz);

$('#delete').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
     
  var counsel= button.data('coun')

 
  var modal = $(this)

modal.find('.modal-body  #tdd20').val(counsel);

          });

         $(document).ready(function(){
            $('#sidebarCollapse').on('click',function(){
                $('#sidebar').toggleClass('active');
            });
        });  


// var modal = $(this)
// modal.find('.modal-body #id').val(id);







})
  </script>
  <script>
    $('#delete').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
     
  var counsel= button.data('coun')

 
  var modal = $(this)

modal.find('.modal-body  #tdd20').val(counsel);

          });

         $(document).ready(function(){
            $('#sidebarCollapse').on('click',function(){
                $('#sidebar').toggleClass('active');
            });
        });  
        </script>
@endsection