@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-briefcase"></i>Counselling<span class="badge badge-secondary"></span></h1>
    </div>
    {{-- <a class="side btn btn-success" href="{{ url('Exit/Form') }}">
      Add Student
  </a> --}}
</div>
<div class="row">
    <div class="col-md-12">
      
        <h5 id="exampleModalLongTitle">Consultation Information Sheet</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      
          

              <h3>Personal Information</h3>

              <!-- Place here the Student Number -->
      <h6>Student Number: <span class="d-none d-md-inline">{{$student[0]->student_no}}</span></h6> 

              <!-- Place here the name -->
              <h6>Name: <span class="d-none d-md-inline">{{$student[0]->fname}} {{$student[0]->lname}}</span></h6> 

              <!-- Place here the Grade -->
              <h6>Section: <span class="d-none d-md-inline">{{$student[0]->class}}</span></h6> 

              <!-- Place here the Contact Number -->
              <h6>Contact Number: <span class="d-none d-md-inline">{{$student[0]->mobile_no}}</span></h6> 

              <!-- Place here the Address -->
              <h6>Address: <span class="d-none d-md-inline">{{$student[0]->address}}	</span></h6> 

              <div class="line_dark"></div>
              <form method="post" action="{{ url('counsel/pending/create/create') }}"  id="studentAddForm">
                {{ csrf_field() }}
                <div class="form-input" >
                <input type="text" class="invisible" id="consultOthers" placeholder="" value="{{$student[0]->stu_id}}" name="id" invisible>
                  </div>
              <div class="col-md-12 mb-3">
                <label for="otherGuidanceHelp">Concerns/Problems:</label>
                <textarea class="form-control" id="otherGuidanceHelp" rows="3" name="Concern"></textarea>
              </div>

              <div class="col-md-12 mb-3">
                <label for="otherGuidanceHelp">What do you want?</label>
                <textarea class="form-control" id="otherGuidanceHelp" rows="3" name="Want"></textarea>
              </div>

              <div class="col-md-12 mb-3">
                <label for="whatWillYouDo">What will you do to get what you want?</label><br>
                <div class="form-check" >
                  <label class="form-check-label">

                    <input class="form-check-input" type="radio" name="whattodo" id="radio1" name="Intervention" value="True">Seek interventions/Counseling at the Guidance office.
                  </label>

                </div>

                <div class="form-check" >
                  <label class="form-check-label">

                    <input class="form-check-input" type="radio" name="whattodo" id="radio1" value="Helpteacher" name="Helpteacher">Seek help from the teachers/adviser/Principal.
                  </label>

                </div>

                <div class="form-check" >
                  <label class="form-check-label">

                    <input class="form-check-input" type="radio" name="whattodo" id="radio1" value="Helpguardian" name="Helpguardian">Seek help from parents/guardian.
                  </label>

                </div>

                <div class="form-input" >
                  <label for="otherConsult">Others:</label>
                    <input type="text" class="form-control" id="consultOthers" placeholder="" value="" name="Other">

                </div>

                <div class="form-date" >
                  <label for="whenDo">When will you do it?</label>
                  <input type="date" class="form-control" id="whenWillYouDo" placeholder="Date of Birth" value="" name="When" required>

                </div>

                <div class="form-input" >
                  <label for="effectivenessConsult">Will it be effective/will it work?</label>
                    <input type="text" class="form-control" id="consultEffect" placeholder="" value="" name="Will"required>

                </div>

                <div class="form-date" >
                  <label for="whenComeBack">I will come back to the guidance office on</label>
                  <input type="date" class="form-control" id="whenWillComeBack" placeholder="Date of Birth" value="" name="comeback" required>

                </div>

                <div class="line_dark"></div>

                <button type="Submit" style="width: 100%; background-color: #4169e1; height: 40px; color: #fff; border: 2px; border-color: #fff;" >Save</button>

              </div>

            </div>
          </div>
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
@endsection