@extends('layout')
@section('pageTitle','Exit Interview')
@section('content')
<div class="app-title">
    <div>
        <h1><i class="fa fa-th-list"></i> Exit Interview</h1>
    </div>
    <a class="side btn btn-success" href="{{ url('Exit') }}">
        List
    </a>
</div>
<button class="btn btn-sm btn-info mb-3 hide-in-print" onclick="window.print();">Print</button>
<div class="tile-body">
    @include('student.inc.school')

@if(Session::has('success'))
<p class="alert alert-success">{{ session('success') }}</p>
@endif
@if($errors->any())
@foreach($errors->all() as $e)
<p class="alert alert-warning">{{ $e }}</p>
@endforeach
@endif  
    
        <div class="card">

            <div class="card-body">
              <form method="post" action="{{ url('Exit/Form/create/'.$student->stu_id) }}"  id="ExitForm">
                {{ csrf_field() }}
                <div class="col-md-12 order-md-1">
                                
                    <label for="question1">1. What did you like most being a student of Antipolo City Senior High School?</label>
                        <textarea class="form-control" id="question1" rows="3" value='' name='question1'></textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question2" style="margin-top: 14px;">2. What did you like least during your stay in school?</label>
                        <textarea class="form-control" id="question2" rows="3" value='' name='question2'></textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question3" style="margin-top: 14px;">3. Do you experience that the school administration</label>
                        <table class="table table-bordered" id="question3">
                            <thead class="thead-light">
                              <tr>
                                <th scope="col"><!-- NO DATA --></th>
                                <th scope="col">ALWAYS</th>
                                <th scope="col">USUALLY</th>
                                <th scope="col">SOMETIMES</th>
                                <th scope="col">NEVER</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Provided you with opportunities to enhance and develop you skill</td>
                                <td>
                                <input type="radio" value="Always" name="Oppurtunities" />
                               </td>
                               <td>
                                <input type="radio" value="Usually" name="Oppurtunities" />
                                </td>
                                <td>
                                <input type="radio" value="Sometimes" name="Oppurtunities" />
                                </td>
                                <td>
                                <input type="radio" value="Never" name="Oppurtunities" />
                                </td>
                              </tr>
                              

                              <tr>
                                <td>Demonstrated fair treatment</td>
                                <td>
                                        <input type="radio" value="Always" name="Treatment" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Treatment" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Treatment" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="Treatment" />
                                        </td>
                              </tr>

                              <tr>
                                <td>Gave recognition for a job well done</td>
                                <td>
                                        <input type="radio" value="Always" name="Recognition" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Recognition" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Recognition" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="Recognition" />
                                        </td>
                              </tr>

                              <tr>
                                <td>Resolved problems promptly</td>
                                <td>
                                        <input type="radio" value="Always" name="Problems" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Problems" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Problems" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="Problems" />
                                        </td>
                              </tr>

                              <tr>
                                <td>Gave adequate support and feedback about your performance</td>
                                <td>
                                        <input type="radio" value="Always" name="feedback" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="feedback" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="feedback" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="feedback" />
                                        </td>
                              </tr>

                              <tr>
                                <td>Presented sufficient assistance on your development as an individual</td>
                                <td>
                                        <input type="radio" value="Always" name="development" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="development" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="development" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="development" />
                                        </td>
                              </tr>

                            </tbody>
                        </table>

                    <label for="question4" style="margin-top: 14px;">4. Do you experience that</label>
                        <table class="table table-bordered" id="question4">
                            <thead class="thead-light">
                              <tr>
                                <th scope="col"><!-- NO DATA --></th>
                                <th scope="col">EXCELLENT</th>
                                <th scope="col">GOOD</th>
                                <th scope="col">FAIR</th>
                                <th scope="col">POOR</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td>Working conditions, restrooms, and physical facilities are</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Working" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Working" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Working" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Working" />
                                        </td>
                              </tr>

                              <tr>
                                <td>The level of concern for students here is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Concern" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Concern" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Concern" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Concern" />
                                        </td>
                              </tr>

                              <tr>
                                <td>The school's willingness to make corrections and changes is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Correction" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Correction" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Correction" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Correction" />
                                        </td>
                              </tr>

                              <tr>
                                <td>Activities and Training that I undergo are</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Activities" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Activities" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Activities" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Activities" />
                                        </td>
                              </tr>

                              <tr>
                                <td>My understanding of the duties and responsibilities of student is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Responsibilities" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Responsibilities" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Responsibilities" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Responsibilities" />
                                        </td>
                              </tr>

                              <tr>
                                <td>My understanding of what performance standards I am expected to meet is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Performance" />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Performance" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Performance" />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Performance" />
                                        </td>
                              </tr>

                            </tbody>
                        </table>

                    <label for="question5" style="margin-top: 14px;">5. In what ways the school helped you in achieving your goals?</label>
                        <textarea class="form-control" id="question5" rows="3" name='question5'></textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question6" style="margin-top: 14px;">6. The exit after senior high school which I decided to enter through the help of the career guidance program at school is(please check and fill the blank spaces)</label>
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6" value="True" name="Higher Education">
                                    <label class="form-check-label" for="value6.1">Higher Education</label>
                                </div>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="targetSchool" placeholder="Target school" value="" name="Target School" disabled>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="course" placeholder="Course" value="" name="Course">
                            </div>

                          </div>

                          <div class="row">

                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.2" value="True" name="Entrepreneurship">
                                    <label class="form-check-label" for="value6.2">Entrepreneurship</label>
                                </div>
                            </div>

                            <div class="col-md-8 mb-3">
                              <input type="text" class="form-control" id="business" placeholder="Business industry" value="" name='Business'>
                            </div>

                          </div>

                          <div class="row">

                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.3" value="True" name="Employment">
                                    <label class="form-check-label" for="value6.3">Employment</label>
                                </div>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="nature" placeholder="Nature/Kind of work" value="" name='Nature'>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="workplace" placeholder="Workplace" value="" name='Workplace'>
                            </div>

                          </div>

                          <div class="row">

                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.3" value="True" name="Middleskill">
                                    <label class="form-check-label" for="value6.4">Middle level skill</label>
                                </div>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="skilled" placeholder="Specific skilled course" value="" name="skills">
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="institution" placeholder="Training Institution" value="" name="Training">
                            </div>

                          </div>

                    <label for="question7" style="margin-top: 14px;">7. What is the most challenging part of being a student here?</label>
                        <textarea class="form-control" id="question7" rows="3" name="challenge"></textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question8" style="margin-top: 14px;">8. Would you recommend the school to other people?</label>
                        <textarea class="form-control" id="question8" rows="3" name="Recommend"></textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question9" style="margin-top: 14px;">9. What are your suggestion for improving this institution?</label>
                        <textarea class="form-control" id="question9" rows="3" name="Suggestion"></textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>
                        <button type="Submit" style="width: 100%; background-color: #4169e1; height: 40px; color: #fff; border: 2px; border-color: #fff;" >Submit</button>
                        
                      </a>

                </div>

            </div>

            </div>
        </div>




    </div>
 
</div>
</form>
<!-- Page specific javascripts -->
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="{{ asset('backend') }}/js/plugins/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function(){
        $('#regDate').datepicker({
            format: "dd/mm/yyyy",
            autoclose: true,
            todayHighlight: true
        });
        $('#dob').datepicker({
            format: "dd/mm/yyyy",
            autoclose: true,
            todayHighlight: true
        });
    });
</script>
{{-- Jquery Validate --}}
<script src="{{ asset('backend/jquery-validation-1.19.0/dist/jquery.validate.min.js') }}"></script>
<script>
    $(document).ready(function(){
        $("#studentAddForm").validate({
            errorClass: "text-danger",
            rules:{
                'fname':{
                    required:true
                },
                'lname':{
                    required:true
                },
                'father_name':{
                    required:true
                },
                'mother_name':{
                    required:true
                },
                'gender':{
                    required:true
                },
                'photo':{
                    required:true
                },
                'mobile_no':{
                    required:true
                },
                'class':{
                    required:true
                },
                'dob':{
                    required:true
                },
                'reg_date':{
                    required:true
                },
                'reg_no':{
                    required:true
                }
            }
        });
    });
</script>
<script>


  document.getElementbyId("value6").addEventListener('click',function){
    var textarea = document.getElementbyId('targetSchool')
    textarea.disabled =!textarea.disabled
  });
  }
</script>
@endsection