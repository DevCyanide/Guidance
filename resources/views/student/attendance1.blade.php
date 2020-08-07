@extends('layout')
@section('pageTitle','Pending')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-bell" style="margin-right: 14px;"></i>Student Tardiness<span class="badge badge-secondary"></span></h1>
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
            <a href="{{ url('admission/history') }}" class="btn btn-primary btn-sm">History</a>
            @include('student.inc.school')
            <table class="table table-bordered" style="margin-top: 10px;" id="dataTables">
                <thead class="thead-light">
                 
                  <tr>
                    <th scope="col">Student ID</th>
                    <th scope="col">Student Name</th>
                    <th scope="col">Section</th>
                    <th scope="col">Late</th>
                   
                  </tr>
                </thead>
                <tbody>
                    @if(count($students)>0)
                    @foreach($students as $s)
                  <tr>
                  <td>{{$s->student_no}}</td>
                    <td><strong>{{ $s->fname.' '.$s->lname }}</td>
                    <td>
                    {{ $s->class }}
                    </td>
                    <td>
                    {{ $s->countz }}  
                    </td>
                    
                   
 
                   
                    </td>
                  </tr>
                 
                    <!-- @endforeach
                    @endif -->

                </tbody>
            </table>

    <section id="tard-view-modal">
    <!-- Modal -->
    <div class="modal fade" id="tardView" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Student Tardiness Information</h5>
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

              <h3>Tardiness Information</h3>

                <div class="col-md-12 mb-3">
                  <label for="otherGuidanceHelp">Number of Lates: </label> <span class="d-none d-md-inline" id='count'></span></h6>
                  <h6 class="text-muted" style="margin-bottom: 20px;" id='concern'>Description</h6>
                </div>

                <div class="col-md-12 mb-3">
                  <label for="otherGuidanceHelp">Number of Absences: </label>
                  <h6 class="text-muted" style="margin-bottom: 20px;" id='concern'>Description</h6>
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
      $('#tardView').on('show.bs.modal', function (event) {
      console.log('Modal Open');  
  var button = $(event.relatedTarget) // Button that triggered the modal
  // var lastname= button.data('lastname')
  var idz= button.data('id')
  var fnamez= button.data('fname')
  var lnamez = button.data('lname')
  var sectionz = button.data('section')
  var contactz = button.data('contact')
  var adressz = button.data('addresss')
  var countz= button.data('counts')

//   var comeback =button.data('comeback')
//   var contact = button.data('contact')

$('#StudentID').html(idz);
$('#fname').html(fnamez);
$('#lname').html(lnamez);
$('#section').html(sectionz);
$('#contact').html(contactz);
$('#address').html(adressz);
$('#count').html(countz);




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
    $('#admissionView').on('show.bs.modal', function (event) {
      console.log('Modal Open');  
  var button = $(event.relatedTarget) // Button that triggered the modal
  // var lastname= button.data('lastname')
  var idzz= button.data('id')
  var fnamezz= button.data('fname')
  var lnamezz = button.data('lname')
  var sectionzz = button.data('section')
  var contactzz = button.data('contact')
  var adresszz = button.data('addresss')
  var countz= button.data('counts')

//   var comeback =button.data('comeback')
//   var contact = button.data('contact')



    })
</script>
@endsection