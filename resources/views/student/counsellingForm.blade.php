@extends('layout')
@section('pageTitle','Counselling')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="app-menu__icon fa fa-briefcase"></i>Counselling Services<span class="badge badge-secondary"></span></h1>
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
<form method="post" action="{{ url('counsel/start/create/'.$students[0]->stu_id.'/'.$students[0]->counsel_id) }}" id="studentAddForm">
    {{ csrf_field() }}
    <section id="counsel-form">

        <div class="container" style="margin-top: 14px;">
       <form class="form-inline my-2 my-lg-0" style="margin-left: 0px;">

           <h3 style="margin-bottom: 14px; margin-top: 8px;"> Counseling Form</h3>
           <div class="line" style="margin-bottom: 14px"></div>

       </form>
         <div class="card">

             <div class="card-body" style="margin: 20px;">

               <div class="col-md-12 order-md-1">

                 <div class="row">
                   
                   
                     
                     <div class="container">
                       <div class="card">
                         <div class="card-body" style="background: #fff">
                         
                           <h5 style="color: #000">Personal Information</h3>

                             <!-- Place here the Student Number -->
                           <h6 class="text-muted">Student Number: {{$students[0]->student_no}}</h6> 

                             <!-- Place here the name -->
                             <h6 class="text-muted">Name: {{$students[0]->fname}} {{$students[0]->lname}}</h6> 

                             <h6 class="text-muted">Section: {{$students[0]->grade}}</h6> 
                             <!-- Place here the Grade -->
                             <h6 class="text-muted">Section: {{$students[0]->class}}</h6> 

                             <!-- Place here the Contact Number -->
                             <h6 class="text-muted">Contacts: {{$students[0]->mobile_no}}</h6> 

                             <!-- Place here the Address -->
                             <h6 class="text-muted">Address: {{$students[0]->address}}</h6> 

                         </div>
                       </div>
                     </div>  

                   </div>

                   <div class="col-md-5 mb-3">
                     
                    
                 </div>
                 
               </div>
               

             </div>
         </div>
     </div>

     <div class="container">
       <div class="card">
         <div class="card-body">

           <div class="col-md-12 mb-3">

 
               <h4>I. Problem Presented</h4>

             

               <!-- PROBLEM DESCRIPTION -->
               <!-- DATA TO SHOW: CONCERN/PROBLEM -->

               <textarea class="form-control" id="counselBackground" rows="5" name="problem" readonly>{{$students[0]->Concern}}</textarea>


           
             
                           
               <h4>II. Summary of data obtained</h4><br>


               <!-- SUMMARY OBTAINED DESCRIPTION -->
               <!-- DATA TO SHOW: WHAT DO YOU WANT? -->

               <textarea class="form-control" id="counselBackground" rows="5" name="sumofdata" readonly>{{$students[0]->Want}}</textarea>

           
                           
               <h4>III. Interventions Done</h4>
               <textarea class="form-control" id="counselBackground" rows="5" name='intervention'></textarea>

                           
               <h4>IV. Recommendations</h4>
               <textarea class="form-control" id="counselBackground" rows="5" name='reccomendation'></textarea>

           </div>
           <button type="Submit" style="width: 100%; background-color: #4169e1; height: 40px; color: #fff; border: 2px; border-color: #fff;" >Save</button>
        </div>
    </div>
</form>
           


 

     
     
   </section>
   @endsection
 