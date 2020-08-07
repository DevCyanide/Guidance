<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Student;
use App\StudentAttendence;
use App\Mcounsel;
use App\visits;
class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($class=null)
    {
        $students=DB::table('students as s')->get();
        
        return view('student.index',['students'=>$students]);
    }
    public function grad($class=null)
    {
        $students=DB::table('grads as s')->get();
        
        return view('student.index',['students'=>$students]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('student.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation  'reg_date'=>'required',
         //   'reg_no'=>'required',
        $request->validate([
            'fname'=>'required',
            'lname'=>'required',
            'father_name'=>'required',
            'mother_name'=>'required',
            'gender'=>'required',
            'photo'=>'required',
            'mobile_no'=>'required|min:9|max:12',
            'address'=>'required',
            'grade'=>'required'
        ]);
        // Student Image
        $stu = $request->file('photo');
        $stuImage=$stu->getClientOriginalName();
        $stu->move(public_path('\imgs\stu_imgs'), $stuImage);
        // Student Adhaar Image
        // $stuA = $request->file('adhaar_img');
        // //  
        // $stuA->move(public_path('\imgs\adhaar_imgs'), $adhaar_img);
        // Student Blood Group Image
        // $stuB = $request->file('blood_group_img');
        // $blood_group_img=$stuB->getClientOriginalName();
        // $stuB->move(public_path('\imgs\bg_imgs'), $blood_group_img);
        // Save Data in Database
        $student=new Student;
        $student->fname=$request->fname;
        $student->lname=$request->lname;
        $student->father_name=$request->father_name;
        $student->mother_name=$request->mother_name;
        $student->gender=$request->gender;
        $student->photo=$stuImage;
        $student->grade=$request->grade;    
        $student->student_no=$request->student_no;
        // $student->adhaar_img=$adhaar_img;
        // $student->blood_group=$request->blood_group;
        // $student->blood_group_img=$blood_group_img;
        $student->mobile_no=$request->mobile_no;
        $student->alternate_mobile_no=$request->alternate_mobile_no;
        $student->email_id=$request->email_id;
        $student->class=$request->class;
        // $student->roll_no=$request->roll_no;
        $student->dob=$request->dob;
        // $student->reg_date=$request->reg_date;
        // $student->reg_no=$request->reg_no;
        // $student->monthly_fees=$request->monthly_fees;
        $student->address=$request->address;
        $student->extra_note=$request->extra_note;
        $student->save();
        return redirect('student/create')->with('success','Student has been added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $student=Student::find($id);
        return view('student.detail',['student'=>$student]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $student=Student::find($id);
        return view('student.update',['student'=>$student]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Validation  'reg_date'=>'required',
        //   'reg_no'=>'required',
        $request->validate([
            'fname'=>'required',
            'lname'=>'required',
            'father_name'=>'required',
            'mother_name'=>'required',
            'gender'=>'required',
            'mobile_no'=>'required|min:9|max:12',
            'address'=>'required',
            'grade'=>'required'
        ]);
        // Student Image
        if($request->hasFile('photo')){
            $stu = $request->file('photo');
            $stuImage=$stu->getClientOriginalName();
            $stu->move(public_path('\imgs\stu_imgs'), $stuImage);
        }else{
            $stuImage=$request->prev_photo;
        }
        // // Student Adhaar Image
        // if ($request->hasFile('adhaar_img')) {
        //     $stuA = $request->file('adhaar_img');
        //     $adhaar_img=$stuA->getClientOriginalName();
        //     $stuA->move(public_path('\imgs\adhaar_imgs'), $adhaar_img);
        // }else{
        //     $adhaar_img=$request->prev_adhaar_img;
        // }
        // // Student Blood Group Image
        // if ($request->hasFile('blood_group_img')) {
        //     $stuB = $request->file('blood_group_img');
        //     $blood_group_img=$stuB->getClientOriginalName();
        //     $stuB->move(public_path('\imgs\bg_imgs'), $blood_group_img);
        // }else{
        //     $blood_group_img=$request->prev_blood_group_img;
        // }
        // Save Data in Database
        $student=Student::find($id);
        $student->fname=$request->fname;
        $student->lname=$request->lname;
        $student->grade=$request->grade;
        $student->father_name=$request->father_name;
        $student->mother_name=$request->mother_name;
        $student->gender=$request->gender;
        $student->photo=$stuImage;
        $student->student_no=$request->student_no;
        // $student->adhaar_img=$adhaar_img;
        // $student->blood_group=$request->blood_group;
        // $student->blood_group_img=$blood_group_img;
        $student->mobile_no=$request->mobile_no;
        $student->alternate_mobile_no=$request->alternate_mobile_no;
        $student->email_id=$request->email_id;
        $student->class=$request->class;
        // $student->roll_no=$request->roll_no;
        $student->dob=$request->dob;
        // $student->reg_date=$request->reg_date;
        // $student->reg_no=$request->reg_no;
        // $student->monthly_fees=$request->monthly_fees;
        $student->address=$request->address;
        $student->extra_note=$request->extra_note;
        $student->save();
        return redirect('student/update/'.$id)->with('success','Student has been updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Student::where('stu_id',$id)->delete();
        return redirect('students')->with('success','Data has been deleted.');
    }

    // Show All CLasses
    function student_classes(){
        $users = DB::table('student_attendences')
            ->join('students', 'student_attendences.a_stu_id', '=', 'students.stu_id')
            ->select('student_attendences.a_stu_id')
            ->where('students.class','HUMS 1101-03') ->count();

         $users1 = DB::table('student_attendences')
            ->join('students', 'student_attendences.a_stu_id', '=', 'students.stu_id')
            ->select('student_attendences.a_stu_id')
            ->where('students.class','ABM 1204-03') ->count();

        $users2 = DB::table('student_attendences')
            ->join('students', 'student_attendences.a_stu_id', '=', 'students.stu_id')
            ->select('student_attendences.a_stu_id')
            ->where('students.class','HUMS 1201-03') ->count();
        $users3 = DB::table('student_attendences')
            ->join('students', 'student_attendences.a_stu_id', '=', 'students.stu_id')
            ->select('student_attendences.a_stu_id')
            ->where('students.class','STEM 1101-02') ->count();

            $absent = DB::table('student_late')
            ->join('students', 'student_late.a_stu_id', '=', 'students.stu_id')
            ->select('student_late.a_stu_id')
            ->where('students.class','HUMS 1101-03') ->count();

         $absent1 = DB::table('student_late')
            ->join('students', 'student_late.a_stu_id', '=', 'students.stu_id')
            ->select('student_late.a_stu_id')
            ->where('students.class','ABM 1204-03') ->count();

        $absent2 = DB::table('student_late')
            ->join('students', 'student_late.a_stu_id', '=', 'students.stu_id')
            ->select('student_late.a_stu_id')
            ->where('students.class','HUMS 1201-03') ->count();
        $absent3 = DB::table('student_late')
            ->join('students', 'student_late.a_stu_id', '=', 'students.stu_id')
            ->select('student_late.a_stu_id')
            ->where('students.class','STEM 1101-02') ->count();

       
        
         
           
        return view('student.classes',['users'=>$users,'users1'=>$users1,'users2'=>$users2,'users3'=>$users3
        ,'absent'=>$absent,'absent1'=>$absent1,'absent2'=>$absent2,'absent3'=>$absent3]);
    }

    // Show All CLasses
    function specific_class($class){
        $students=Student::where('class',$class)->paginate(25);
        return view('student.index',['students'=>$students,'class'=>true,'className'=>$class]);
    }

    // Student Attendence
    function add_attendence(Request $request){
        if($request->has('attendence_date')){
            $attendence_date=$request->attendence_date;
        }else{
            $attendence_date=date('d/m/Y',time());
        }
        $attendence=StudentAttendence::updateOrCreate(
            [
                'a_stu_id'=>$request->stu_id,
                'attend_date'=>$attendence_date
            ],
            [
                'attend_status'=>$request->status
            ]
        );
        return json_encode(['status'=>true]);
    }

    // Class Wise Attendence Sheet
    function attendence_sheet($class,$stu_id=null){
        $students = DB::table('students')
        ->select(DB::raw('count(student_attendences.a_stu_id) as countz'),'students.student_no','students.fname',
        'students.lname','students.learner_midname','students.grade','students.gender','students.address',
        'students.strand','students.dob','students.mother_tongue','students.religion','students.father_name',
        'students.mother_name','students.guardian_name','students.mobile_no','students.created_at','students.updated_at',
        'students.stu_id','students.class','students.Status','students.photo','students.alternate_mobile_no','students.student_no',
        'students.email_id','students.extra_note','students.roll_no','students.absent')
        ->join('student_attendences','student_attendences.a_stu_id','=','students.stu_id')
        ->where('students.class','=',$class)
        ->groupBy('student_attendences.a_stu_id')
        ->having(DB::raw('count(student_attendences.a_stu_id)' ), '>', 0)
        ->get();
         return view('student.attendance1',['students'=>$students,'className'=>$class]);
    }

    // Fees Card
    function fees_card($stu_id){
        $studentDetail=Student::find($stu_id);
        $feesDetail=DB::table('fees_card')
        ->where('stu_id',$stu_id)
        ->get();
        // Calculate Total Balance
        $totalBalance=DB::table('fees_card')
        ->where('stu_id',$stu_id)
        ->orderBy('fees_id','desc')
        ->get();
        return view('student.fees-card',['studentDetail'=>$studentDetail,'feesDetail'=>$feesDetail,'totalBalance'=>$totalBalance]);
    }

    // Add Fees
    function add_fees(Request $request,$id){
        $student=Student::find($id);
        $request->validate([
            'deposite_month'=>$request->fees_month,
            'deposite_fees_amount'=>$request->fees_amount
        ]);
        // Get Student Previous Balance
        $previousBalanceCount=DB::table('fees_card')
        ->where('stu_id',$id)
        ->count();
        if($previousBalanceCount>0){
            //Check Deposite Month
            $currentMonthCount=DB::table('fees_card')
            ->where(['stu_id'=>$id,'deposite_month'=>$request->fees_month])
            ->count();
        // Previous Balance
            $previousBalance=DB::table('fees_card')
            ->where('stu_id',$id)
            ->orderBy('fees_id','desc')
            ->take(1)
            ->get();
            $preBal=$previousBalance[0]->balance_fees;
        }else{
            $preBal=0;
            $currentMonthCount=0;
        }
        $prebalance=$preBal;
        if($currentMonthCount>0){
            $currentBalance=$preBal-($request->fees_amount);
        }else{
            $currentBalance=($student->monthly_fees+$preBal)-$request->fees_amount;
        }
        // Insert Student Data
        DB::table('fees_card')->insert([
            'stu_id'=>$id,
            'deposite_month'=>$request->fees_month,
            'deposite_fees_amount'=>$request->fees_amount,
            'deposite_by'=>0,
            'balance_fees'=>$currentBalance
        ]);
        return redirect('student/fees-card/'.$id)->with('success','Data has been updated.');
    }

    // Delete Fees from fees card
    function delete_fees($stu_id,$fees_id){
        DB::table('fees_card')->where('fees_id',$fees_id)->delete();
        return redirect('student/fees-card/'.$stu_id)->with('success','Data has been updated.');
    }

    // class wise subjects
    function class_subjects(Request $request,$class){
        $subjects=DB::table('subjects')->where('class',$class)->get();
        if($request->has('delete')){
            DB::table('subjects')->where('subject_id',$request->delete)->delete();
            return redirect('student/subject/'.$class)->with('success','Data has been deleted.');
        }else{
            $singleSubject='';
        }
        return view('student.class-subjects',['class'=>$class,'subjects'=>$subjects,'subjectDetail'=>$singleSubject]);
    }

    // class wise subjects
    function add_subject(Request $request,$class){
        $request->validate([
            'subject_title'=>'required',
            'subject_marks'=>'required'
        ]);
        DB::table('subjects')
        ->insert([
            'class'=>$class,
            'subject_title'=>$request->subject_title,
            'subject_marks'=>$request->subject_marks
        ]);
        return redirect('student/subject/'.$class)->with('success','Data has been added.');
    }


    // Result Card
    function result_card(Request $request,$stu_id){
        $studentDetail=Student::find($stu_id);
        $subjects=DB::table('subjects')->where('class',$studentDetail->class)->get();
        $monthGroups=DB::table('result_card')->where('stu_id',$stu_id)->groupBy('term_month')->get();
        // Delete Data
        if($request->has('action') && $request->get('action')=='delete'){
            $month=$request->get('month');
            $subject_id=$request->get('subject');
            DB::table('result_card')
            ->where(['stu_id'=>$stu_id,'subject_id'=>$subject_id,'term_month'=>$month])
            ->delete();
            return redirect('student/result-card/'.$stu_id.'/?result_month='.$month)->with('success','Data has been delete.');
        }
        // Month wise Result
        if($request->has('result_month')){
            $results=DB::table('subjects')
            ->where('class',$studentDetail->class)
            ->get();
            // Total Marks Obtained
            $totalObtained=DB::table('result_card')
            ->where(['stu_id'=>$stu_id,'term_month'=>$request->get('result_month')])
            ->sum('result_marks');
            // Total Marks of all subjects
            $totalMarks=DB::table('subjects')
            ->where('class',$studentDetail->class)
            ->sum('subject_marks');
        }else{
           $monthResult=''; 
           $totalObtained='';
           $totalMarks='';
           $results=[];
        }
        // Load View
        return view('student.result-card',[
            'studentDetail'=>$studentDetail,
            'monthGroups'=>$monthGroups,
            'subjects'=>$subjects,
            'results'=>$results,
            'totalObtained'=>$totalObtained,
            'totalMarks'=>$totalMarks
        ]);
    }

    // Result Card of class
    function class_result($class){
        $students=Student::where('class',$class)->get();
        return view('student.class-result',['students'=>$students,'class'=>true,'className'=>$class]);
    }

    // Add Result
    function add_result(Request $request,$stu_id){
        $resultData=array();
        foreach($request->result_marks as $subject_id=>$subject_val){
            $result['stu_id']=$stu_id;
            $result['subject_id']=$subject_id;
            $result['result_marks']=$subject_val;
            $result['term_month']=$request->result_month;
            $resultData[]=$result;
        }
        DB::table('result_card')->insert($resultData);
        return redirect('student/result-card/'.$stu_id)->with('success','Result has been added.');
    }
    function Counselling($stu_id){
        $student=Student::find($stu_id);

            // return $stu_id;
            return view('student.studentcounselForm',['student'=>$student]);
    }
    function logs(){
        $studentss = DB::table('visit')->get();
      return view('student.visitLogs',['studentss'=>$studentss]);
    }
    function Visit(Request $request,$stu_id){
        


        $student=Student::find($stu_id);
        $name = $student->fname.' '.$student->lname;
       
        DB::table('visit')->insert([
            'stu_id'=>$student->student_no,
            'stu_name'=>$name,
            'section'=>$student->class,
            'visit_purpose'=>$request->visit,
            'created_at'=>date('Y-m-d H:i:s')

        ]);
        $studentss = DB::table('visit')->get();
        return redirect('student/logs')->with('success','Result has been added.');
    }
    function Admission(Request $request,$stu_id){
        
        $student=Student::find($stu_id);
       
        DB::table('admission')->insert([
            'stu_id'=>$stu_id,
            'admission'=>$request->admission1,
            'created_at'=>date('Y-m-d H:i:s'),
            'updated_at'=>date('Y-m-d H:i:s')
        ]);

        DB::table('student_attendences')
        ->where('a_stu_id', $stu_id)
        ->update(['status' => "Approved"]);

        $studentss = DB::table('admission')
        ->join('students','students.stu_id','=','admission.stu_id')
        ->get();
        return redirect('admission/history')->with('success','Result has been added.')->with('studentss',$studentss);
    }
    public function  admissionhistory()
    {
        $studentss = DB::table('admission')
        ->join('students','students.stu_id','=','admission.stu_id')
        ->get();
        return view('student.admission')->with('studentss',$studentss);
    }
    public function  lateindex($section)
    {
        $students = DB::table('students')
        ->select(DB::raw('count(student_late.a_stu_id) as countz'),'students.student_no','students.fname',
        'students.lname','students.learner_midname','students.grade','students.gender','students.address',
        'students.strand','students.dob','students.mother_tongue','students.religion','students.father_name',
        'students.mother_name','students.guardian_name','students.mobile_no','students.created_at','students.updated_at',
        'students.stu_id','students.class','students.Status','students.photo','students.alternate_mobile_no','students.student_no',
        'students.email_id','students.extra_note','students.roll_no','students.absent')
        ->join('student_late','student_late.a_stu_id','=','students.stu_id')
        ->where('students.class','=',$section)
        ->groupBy('student_late.a_stu_id')
        ->having(DB::raw('count(student_late.a_stu_id)' ), '>', 0)
        ->get();
 
        
        return view('student.late')->with('students',$students);
    }
   
    function call(){
        $students = DB::table('students')
        ->select(DB::raw('count(student_attendences.a_stu_id) as count'),DB::raw('count(student_late.a_stu_id) as countz'),'students.student_no','students.fname',
        'students.lname','students.learner_midname','students.grade','students.gender','students.address',
        'students.strand','students.dob','students.mother_tongue','students.religion','students.father_name',
        'students.mother_name','students.guardian_name','students.mobile_no','students.created_at','students.updated_at',
        'students.stu_id','students.class','students.Status','students.photo','students.alternate_mobile_no','students.student_no',
        'students.email_id','students.extra_note','students.roll_no','students.absent')
        ->join('student_attendences','student_attendences.a_stu_id','=','students.stu_id')
        ->leftjoin('student_late','student_late.a_stu_id','=','students.stu_id')
        ->where('student_attendences.status','unapproved')
        ->groupBy('student_attendences.a_stu_id','student_late.a_stu_id')
        ->having(DB::raw('count(student_attendences.a_stu_id)'), '>', 2)
        ->orhaving(DB::raw('count(student_late.a_stu_id)' ), '>', 2)
        ->get();
        

        // $studentss = DB::table('students')
        // ->select(DB::raw('count(student_late.a_stu_id) as countz'),'students.student_no','students.fname',
        // 'students.lname','students.learner_midname','students.grade','students.gender','students.address',
        // 'students.strand','students.dob','students.mother_tongue','students.religion','students.father_name',
        // 'students.mother_name','students.guardian_name','students.mobile_no','students.created_at','students.updated_at',
        // 'students.stu_id','students.class','students.Status','students.photo','students.alternate_mobile_no','students.student_no',
        // 'students.email_id','students.extra_note','students.roll_no')
        // ->join('student_late','student_late.a_stu_id','=','students.stu_id')
        // ->groupBy('student_late.a_stu_id')
        // ->having(DB::raw('count(student_late.a_stu_id)'), '>', 2)
        // ->get();
        
        



            // return  dd($students);
            // $students = DB::table('students')
            // ->select(DB::raw('count(students.stu_id) as count'),'students.student_no','students.fname',
            // 'students.lname','students.learner_midname','students.grade','students.gender','students.address',
            // 'students.strand','students.dob','students.mother_tongue','students.religion','students.father_name',
            // 'students.mother_name','students.guardian_name','students.mobile_no','students.created_at','students.updated_at',
            // 'students.stu_id','students.class','students.Status','students.photo','students.alternate_mobile_no','students.student_no',
            // 'students.email_id','students.extra_note','students.roll_no')
            // ->join('student_late','student_late.a_stu_id','=','students.stu_id')
            // ->groupBy('students.stu_id')
            // ->having(DB::raw('count(students.stu_id)'), '>', 2)
            //     ->get();
        
        return view('student.studentTardiness',['students'=>$students]);
    }
}
