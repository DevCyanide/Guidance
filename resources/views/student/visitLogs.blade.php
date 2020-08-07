@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i>Visit Logs<span class="badge badge-secondary"></span></h1>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="tile">
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
            <table class="table table-bordered" style="margin-top: 10px;" id="dataTables">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Section</th>
                    <th scope="col">Visit Purpose</th>
                    <th scope="col">Date</th>
                  </tr>
                </thead>
                <tbody>
                    @if(count($studentss)>0)
                    @foreach($studentss as $s)
                  <tr>
                    <td>{{$s->stu_id}}</td>
                    <td>{{$s->stu_name}}</td>
                    <td>{{$s->section}}</td>
                    <td>{{$s->visit_purpose}}</td>
                    <td>{{$s->created_at}}</td>
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

                <h5>Please type the student number of the student</h5>

                <div class="line" style="margin-top: 25px; margin-bottom: 25px;"></div>
                <form method="post" action="{{ url('counsel/pending/create') }}"  id="studentAddForm">
                  {{csrf_field()}}
                <label for="studNum">Student Number:</label>
                <input type="number" name="id" id="studNum" required>
                <div class="invalid-feedback">
                                    Valid student number is required.
                                  </div>

                <button type="Submit"  class="btn btn-primary">Proceed</button>
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
    <section id="counsel-view-modal">
        <!-- Modal -->
        <div class="modal fade" id="counselViews" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
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
                        <h6 class="text-muted">Student Number: <span class="d-none d-md-inline" id="StudentID"></span></h6> 
  
                        <!-- Place here the name -->
                        <h6 class="text-muted">Name: <span class="d-none d-md-inline" id="fname"></span> <span class="d-none d-md-inline" id="lname"></span></h6> 
  
                        <!-- Place here the Grade -->
                        <h6 class="text-muted">Grade: <span class="d-none d-md-inline" id="section"></h6> 
  
                        <!-- Place here the Contact Number -->
                        <h6 class="text-muted">Contact Number: <span class="d-none d-md-inline" id="contact"></h6> 
  
                        <!-- Place here the Address -->
                        <h6 class="text-muted">Address: <span class="d-none d-md-inline" id="address"></h6> 
  
                  <div class="line_dark"></div>
  
                  <h5>Date of Counseling</h5>
                  <h6 class="text-muted" id='dates'>date</h6>
  
                  <div class="line_dark"></div>
  
                  <div class="line" style="margin-top: 14px; margin-bottom: 14px;" ></div>
  
                  <h5>I. Problem Presented</h5>
                  <h6 class="text-muted" style="margin-bottom: 20px;" id='problems'>Description</h6>
  
                  <h5>II. Summary of Data obtained</h5>
                  <h6 class="text-muted" style="margin-bottom: 20px;" id='sums'>Description</h6>
  
                  <h5>III. Interventions</h5>
                  <h6 class="text-muted" style="margin-bottom: 20px;"id='interventions'>Description</h6>
  
                  <h5>IV. Recommenations</h5>
                  <h6 class="text-muted" style="margin-bottom: 20px;"id='reccomendations'>Description</h6>
  
  
  
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
<script type="text/javascript" src="{{ asset('backend') }}/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/buttons.print.min.js"></script>

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
    <!-- <script>
      $('#counselViews').on('show.bs.modal', function (event) {
      console.log('Modal Open');  
  var button = $(event.relatedTarget) // Button that triggered the modal
  // var lastname= button.data('lastname')
  var idz= button.data('id')
  var fnamez= button.data('fname')
  var lnamez = button.data('lname')
  var sectionz = button.data('section')
  var contactz = button.data('contact')
  var adressz = button.data('addresss')
  var datez = button.data('date')
  var problemz = button.data('problems')
  var sumz = button.data('sum')
  var interventionz = button.data('interventions')
  var reccomendationz = button.data('reccomendations')



  

  $(document).ready(function(){
    $("button").click(function(){
      $("#counsel").attr("href", "counsel/");
    });
  });


  
//   var comeback =button.data('comeback')
//   var contact = button.data('contact')

$('#StudentID').html(idz);
$('#fname').html(fnamez);
$('#lname').html(lnamez);
$('#section').html(sectionz);
$('#contact').html(contactz);
$('#address').html(adressz);
$('#dates').html(datez);
$('#problems').html(problemz);
$('#sums').html(sumz);
$('#interventions').html(interventionz);
$('#reccomendations').html(reccomendationz);


// var modal = $(this)
// modal.find('.modal-body #id').val(id);







})
  </script> -->
@endsection