<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Teacher;
use App\TeacherAttendence;

class TeacherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $teachers=DB::table('teachers')
        ->get();
        return view('teacher.index',['teachers'=>$teachers]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('teacher.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation
        $request->validate([
            'full_name'=>'required',
            'father_name'=>'required',
            'mother_name'=>'required',
            'gender'=>'required',
            'photo'=>'required',
            'mobile_no'=>'required|min:9|max:12'
        ]);
        // Student Image
        $stu = $request->file('photo');
        $stuImage=$stu->getClientOriginalName();
        $stu->move(public_path('\imgs\teacher_imgs'), $stuImage);
        // Student Adhaar Image
        // $stuA = $request->file('adhaar_img');
        // $adhaar_img=$stuA->getClientOriginalName();
        // $stuA->move(public_path('\imgs\teacher_adhaar_imgs'), $adhaar_img);
        // Save Data in Database
        $teacher=new Teacher;
        $teacher->full_name=$request->full_name;
        $teacher->father_name=$request->father_name;
        $teacher->mother_name=$request->mother_name;
        $teacher->gender=$request->gender;
        $teacher->dob=$request->dob;
        $teacher->photo=$stuImage;
        $teacher->student_no=$request->student_no;
        // $teacher->adhaar_img=$adhaar_img;
        $teacher->mobile=$request->mobile_no;
        $teacher->mobile_2=$request->alternate_mobile_no;
        // $teacher->salary=$request->salary;
        $teacher->joining_date=$request->joining_date;
        // $teacher->designation=$request->designation;
        $teacher->qualification=$request->qualification;
        $teacher->experience=$request->experience;
        $teacher->address=$request->address;
        $teacher->extra_note=$request->extra_note;
        $teacher->save();
        return redirect('teacher/create')->with('success','Teacher has been added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $teacher=Teacher::find($id);
        return view('teacher.detail',['teacher'=>$teacher]);
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
        $teacher=Teacher::find($id);
        return view('teacher.update',['teacher'=>$teacher]);
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
        // Validation
        $request->validate([
            'full_name'=>'required',
            'father_name'=>'required',
            'mother_name'=>'required',
            'gender'=>'required',
            'mobile_no'=>'required|min:9|max:12'
        ]);
        // Student Image
        if ($request->hasFile('photo')) {
            $stu = $request->file('photo');
            $stuImage=$stu->getClientOriginalName();
            $stu->move(public_path('\imgs\teacher_imgs'), $stuImage);
        }else{
            $stuImage=$request->prev_photo;
        }
        // Student Adhaar Image
        // if($request->hasFile('photo')){
        //     $stuA = $request->file('adhaar_img');
        //     $adhaar_img=$stuA->getClientOriginalName();
        //     $stuA->move(public_path('\imgs\teacher_adhaar_imgs'), $adhaar_img);
        // }else{
        //     $adhaar_img=$request->prev_adhaar_img;
        // }
        // Save Data in Database
        $teacher=Teacher::find($id);
        $teacher->full_name=$request->full_name;
        $teacher->father_name=$request->father_name;
        $teacher->mother_name=$request->mother_name;
        $teacher->gender=$request->gender;
        $teacher->dob=$request->dob;
        $teacher->photo=$stuImage;
        $teacher->student_no=$request->student_no;
        // $teacher->adhaar_img=$adhaar_img;
        $teacher->mobile=$request->mobile_no;
        $teacher->mobile_2=$request->alternate_mobile_no;
        // $teacher->salary=$request->salary;
        $teacher->joining_date=$request->joining_date;
        // $teacher->designation=$request->designation;
        $teacher->qualification=$request->qualification;
        $teacher->experience=$request->experience;
        $teacher->address=$request->address;
        $teacher->extra_note=$request->extra_note;
        $teacher->save();
        return redirect('teacher/update/'.$id)->with('success','Teacher has been updated.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Teacher::where('id',$id)->delete();
        return redirect('teachers')->with('success','Data has been deleted.');
    }

    // Teacher Attendence
    function add_attendence(Request $request){
        if($request->has('attendence_date')){
            $attendence_date=$request->attendence_date;
        }else{
            $attendence_date=date('d/m/Y',time());
        }
        $attendence=TeacherAttendence::updateOrCreate(
            [
                'a_teach_id'=>$request->teach_id,
                'attend_date'=>$attendence_date
            ],
            [
                'attend_status'=>$request->status
            ]
        );
        return json_encode(['status'=>true]);
    }

    // All Teacher Attendence Sheet
    function attendence_sheet(){
        $teachers=Teacher::all();
        return view('teacher.attendence',['teachers'=>$teachers]);
    }

    // Salary Card
    function salary_card($teach_id){
        $teacherDetail=Teacher::find($teach_id);
        $salaryDetail=DB::table('salary_card')
        ->where('teach_id',$teach_id)
        ->get();
        // Calculate Total Balance
        $totalBalance=DB::table('salary_card')
        ->where('teach_id',$teach_id)
        ->orderBy('salary_id','desc')
        ->get();
        return view('teacher.salary-card',['teacherDetail'=>$teacherDetail,'salaryDetail'=>$salaryDetail,'totalBalance'=>$totalBalance]);
    }

    // Add Salary
    function add_salary(Request $request,$id){
        $teacher=Teacher::find($id);
        $request->validate([
            'deposite_month'=>$request->salary_month,
            'deposite_salary_amount'=>$request->salary_amount
        ]);
        // Get Student Previous Balance
        $previousBalanceCount=DB::table('salary_card')
        ->where('teach_id',$id)
        ->count();
        if($previousBalanceCount>0){
            //Check Deposite Month
            $currentMonthCount=DB::table('salary_card')
            ->where(['teach_id'=>$id,'deposite_month'=>$request->salary_month])
            ->count();
        // Previous Balance
            $previousBalance=DB::table('salary_card')
            ->where('teach_id',$id)
            ->orderBy('salary_id','desc')
            ->take(1)
            ->get();
            $preBal=$previousBalance[0]->balance_salary;
        }else{
            $preBal=0;
            $currentMonthCount=0;
        }
        $prebalance=$preBal;
        if($currentMonthCount>0){
            $currentBalance=$preBal-($request->salary_amount);
        }else{
            $currentBalance=($teacher->salary+$preBal)-$request->salary_amount;
        }
        // Insert Student Data
        DB::table('salary_card')->insert([
            'teach_id'=>$id,
            'deposite_month'=>$request->salary_month,
            'deposite_salary_amount'=>$request->salary_amount,
            'deposite_by'=>0,
            'balance_salary'=>$currentBalance
        ]);
        return redirect('teacher/salary-card/'.$id)->with('success','Data has been updated.');
    }
    // Delete Salary from Salary card
    function delete_salary($teach_id,$salary_id){
        DB::table('salary_card')->where('salary_id',$salary_id)->delete();
        return redirect('teacher/salary-card/'.$teach_id)->with('success','Data has been updated.');
    }
}
