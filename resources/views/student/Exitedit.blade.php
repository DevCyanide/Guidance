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
              <form method="post" action="{{ url('Exit/Form/edit/'.$students[0]->stu_id) }}"  id="ExitForm">
                {{ csrf_field() }}
                <div class="col-md-12 order-md-1">
                                
                    <label for="question1">1. What did you like most being a student of Antipolo City Senior High School?</label>
                        <textarea class="form-control" id="question1" rows="3" value='' name='question1'>{{$students[0]->question1}}</textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question2" style="margin-top: 14px;">2. What did you like least during your stay in school?</label>
                        <textarea class="form-control" id="question2" rows="3" value='' name='question2'>{{$students[0]->question2}}</textarea>
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
                                <input type="radio" value="Always" name="Oppurtunities" {{ ($students[0]->Oppurtunities=="Always")? "checked" : "" }}/>
                               </td>
                               <td>
                                <input type="radio" value="Usually" name="Oppurtunities" {{ ($students[0]->Oppurtunities=="Usually")? "checked" : "" }}/>
                                </td>
                                <td>
                                <input type="radio" value="Sometimes" name="Oppurtunities" {{ ($students[0]->Oppurtunities=="Sometimes")? "checked" : "" }}/>
                                </td>
                                <td>
                                <input type="radio" value="Never" name="Oppurtunities" {{ ($students[0]->Oppurtunities=="Never")? "checked" : "" }}/>
                                </td>
                              </tr>
                              

                              <tr>
                                <td>Demonstrated fair treatment</td>
                                <td>
                                        <input type="radio" value="Always" name="Treatment" {{ ($students[0]->Treatment=="Always")? "checked" : "" }} />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Treatment" {{ ($students[0]->Treatment=="Usually")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Treatment" {{ ($students[0]->Treatment=="Sometimes")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="Treatment" {{ ($students[0]->Treatment=="Never")? "checked" : "" }} />
                                        </td>
                              </tr>

                              <tr>
                                <td>Gave recognition for a job well done</td>
                                <td>
                                        <input type="radio" value="Always" name="Recognition" {{ ($students[0]->Recognition=="Always")? "checked" : "" }} />
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Recognition" {{ ($students[0]->Recognition=="Usually")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Recognition" {{ ($students[0]->Recognition=="Sometimes")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="Recognition" {{ ($students[0]->Recognition=="Never")? "checked" : "" }} />
                                        </td>
                              </tr>

                              <tr>
                                <td>Resolved problems promptly</td>
                                <td>
                                        <input type="radio" value="Always" name="Problems" {{ ($students[0]->Problems=="Always")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Problems" {{ ($students[0]->Problems=="Usually")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Problems" {{ ($students[0]->Problems=="Sometimes")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="Problems" {{ ($students[0]->Problems=="Never")? "checked" : "" }}/>
                                        </td>
                              </tr>

                              <tr>
                                <td>Gave adequate support and feedback about your performance</td>
                                <td>
                                        <input type="radio" value="Always" name="feedback" {{ ($students[0]->Feedback=="Always")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="feedback" {{ ($students[0]->Feedback=="Usually")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="feedback" {{ ($students[0]->Feedback=="Sometimes")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="feedback" {{ ($students[0]->Feedback=="Never")? "checked" : "" }} />
                                        </td>
                              </tr>

                              <tr>
                                <td>Presented sufficient assistance on your development as an individual</td>
                                <td>
                                        <input type="radio" value="Always" name="development" {{ ($students[0]->Development=="Always")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="development" {{ ($students[0]->Development=="Usually")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="development" {{ ($students[0]->Development=="Sometimes")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Never" name="development" {{ ($students[0]->Development=="Never")? "checked" : "" }} />
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
                                        <input type="radio" value="Excellent" name="Working" {{ ($students[0]->Working=="Excellent")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Working" {{ ($students[0]->Working=="Good")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Working"{{ ($students[0]->Working=="Fair")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Working" {{ ($students[0]->Working=="Poor")? "checked" : "" }}/>
                                        </td>
                              </tr>

                              <tr>
                                <td>The level of concern for students here is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Concern" {{ ($students[0]->Concern=="Excellent")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Concern" {{ ($students[0]->Concern=="Good")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Concern" {{ ($students[0]->Concern=="Fair")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Concern" {{ ($students[0]->Concern=="Poor")? "checked" : "" }}/>
                                        </td>
                              </tr>

                              <tr>
                                <td>The school's willingness to make corrections and changes is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Correction" {{ ($students[0]->Correction=="Excellent")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Correction" {{ ($students[0]->Correction=="Good")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Correction"{{ ($students[0]->Correction=="Fair")? "checked" : "" }} />
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Correction" {{ ($students[0]->Correction=="Poor")? "checked" : "" }}/>
                                        </td>
                              </tr>

                              <tr>
                                <td>Activities and Training that I undergo are</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Activities" {{ ($students[0]->Activities=="Excellent")? "checked" : "" }} />
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Activities" {{ ($students[0]->Activities=="Good")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Activities" {{ ($students[0]->Activities=="Fair")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Activities"{{ ($students[0]->Activities=="Poor")? "checked" : "" }} />
                                        </td>
                              </tr>

                              <tr>
                                <td>My understanding of the duties and responsibilities of student is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Responsibilities" {{ ($students[0]->Responsibilities=="Excellent")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Good" name="Responsibilities" {{ ($students[0]->Responsibilities=="Good")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Fair" name="Responsibilities" {{ ($students[0]->Responsibilities=="Fair")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Responsibilities" {{ ($students[0]->Responsibilities=="Poor")? "checked" : "" }}/>
                                        </td>
                              </tr>

                              <tr>
                                <td>My understanding of what performance standards I am expected to meet is</td>
                                <td>
                                        <input type="radio" value="Excellent" name="Performance" {{ ($students[0]->Performance=="Excellent")? "checked" : "" }}/>
                                       </td>
                                       <td>
                                        <input type="radio" value="Usually" name="Performance" {{ ($students[0]->Performance=="Usually")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Sometimes" name="Performance" {{ ($students[0]->Performance=="Sometimes")? "checked" : "" }}/>
                                        </td>
                                        <td>
                                        <input type="radio" value="Poor" name="Performance" {{ ($students[0]->Performance=="Poor")? "checked" : "" }}/>
                                        </td>
                              </tr>

                            </tbody>
                        </table>

                    <label for="question5" style="margin-top: 14px;">5. In what ways the school helped you in achieving your goals?</label>
                        <textarea class="form-control" id="question5" rows="3" name='question5'>{{$students[0]->question5}}</textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question6" style="margin-top: 14px;">6. The exit after senior high school which I decided to enter through the help of the career guidance program at school is(please check and fill the blank spaces)</label>
                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.1" value="True" name="Higher Education" {{ ($students[0]->Higher_Education=="True")? "checked" : "" }} >
                                    <label class="form-check-label" for="value6.1">Higher Education</label>
                                </div>
                            </div>

                            <div class="col-md-4 mb-3">
                            <input type="text" class="form-control" id="targetSchool" placeholder="Target school" value="{{$students[0]->Target_School}}" name="Target School">
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="course" placeholder="Course" value="{{$students[0]->Course}}" name="Course">
                            </div>

                          </div>

                          <div class="row">

                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.2" value="True" name="Entrepreneurship" {{ ($students[0]->Entreprenuership=="True")? "checked" : "" }}>
                                    <label class="form-check-label" for="value6.2">Entrepreneurship</label>
                                </div>
                            </div>

                            <div class="col-md-8 mb-3">
                              <input type="text" class="form-control" id="business" placeholder="Business industry" value="{{$students[0]->Business}}" name='Business'>
                            </div>

                          </div>

                          <div class="row">

                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.3" value="True" name="Employment" {{ ($students[0]->Employment=="True")? "checked" : "" }}>
                                    <label class="form-check-label" for="value6.3">Employment</label>
                                </div>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="nature" placeholder="Nature/Kind of work" value="{{$students[0]->Nature}}" name='Nature'>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="workplace" placeholder="Workplace" value="{{$students[0]->Workplace}}" name='Workplace'>
                            </div>

                          </div>

                          <div class="row">

                            <div class="col-md-4 mb-3">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="value6.3" value="True" name="Middleskill" {{ ($students[0]->Middleskill=="True")? "checked" : "" }}>
                                    <label class="form-check-label" for="value6.4">Middle level skill</label>
                                </div>
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="skilled" placeholder="Specific skilled course" value="{{$students[0]->Skills}}" name="skills">
                            </div>

                            <div class="col-md-4 mb-3">
                              <input type="text" class="form-control" id="institution" placeholder="Training Institution" value="{{$students[0]->Training}}" name="Training">
                            </div>

                          </div>

                    <label for="question7" style="margin-top: 14px;">7. What is the most challenging part of being a student here?</label>
                        <textarea class="form-control" id="question7" rows="3" name="challenge">{{$students[0]->Challenge}}</textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question8" style="margin-top: 14px;">8. Would you recommend the school to other people?</label>
                        <textarea class="form-control" id="question8" rows="3" name="Recommend">{{$students[0]->Recommend}}</textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>

                    <label for="question9" style="margin-top: 14px;">9. What are your suggestion for improving this institution?</label>
                        <textarea class="form-control" id="question9" rows="3" name="Suggestion">{{$students[0]->Suggestion}}</textarea>
                        <div class="invalid-feedback">
                          Valid input is required.
                        </div>
                        {{-- <input type="submit" value="Submit" class="btn btn-primary btn-block" /> --}}
                        
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
@endsection