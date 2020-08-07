<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Student;
use App\StudentAttendence;
use App\Mcounsel;
use App\Counselling;
class Counsel extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students = DB::table('students')
        ->join('counsel','counsel.stu_id','=','students.stu_id')
            ->get();;
            
            return view('student.counselPending',['students'=>$students]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {   
        $id=$request->id;
        $student = DB::table('students')
                ->where('student_no', '=', $id)
                ->get();
                
        if(count($student)==1)
        {
        return view('student.counselForm',['student'=>$student]);
        }
        else
        return redirect('/counsel/pending')->with('error','Student ID not Found.');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'Concern'=>'required',
            'Want'=>'required',
            'whattodo'=>'required',
            // 'Other'=>'required',
            'When'=>'required',
            'Will'=>'required',
            'comeback'=>'required',
        ]);
        $student=new Mcounsel;
        $student->stu_id=$request->id;
        $student->Concern=$request->Concern;
        $student->Want=$request->Want;
        $student->whattodo=$request->whattodo;
        $student->Other=$request->Other;
        $student->When=$request->When;
        $student->Will=$request->Will;
        $student->comeback=$request->comeback;
        $student->save();
    
        return redirect('/counsel/pending')->with('Success','Data has been added.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $student=Mcounsel::find($id);
        return view('student.counseldetail',['student'=>$student]);

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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
     
        $counsel = Mcounsel::findOrFail($request->counsel_id);
        $counsel->delete();
        return back()->with('success','Data has been deleted.');
        // Mcounsel::where('counsel_id',$id)->delete();
        // return redirect('counsel/pending')->with('success','Data has been deleted.');
    }
    public function start($id,$id2)
    {
        $students = DB::table('students')
        ->join('counsel','counsel.stu_id','=','students.stu_id')
        ->where('students.stu_id', '=', $id)
        ->get();
            return view('student.counsellingForm',['students'=>$students]);
    }
    public function createcounsel(Request $request,$id,$id2)
    {
        $students = DB::table('students')
        ->join('counsel','counsel.stu_id','=','students.stu_id')
        ->get();
   
        $request->validate([
            'problem'=>'required',
            'sumofdata'=>'required',
            'intervention'=>'required',
            'reccomendation'=>'required',
        ]);
        $student=new Counselling;
        $student->problem=$request->problem;
        $student->sumofdata=$request->sumofdata;
        $student->intervention=$request->intervention;
        $student->reccomendation=$request->reccomendation;
        $student->stu_id=$id;
        $student->save();
        Mcounsel::where('counsel_id',$id2)->delete();

        
        return redirect('counsel/pending')->with('Success','Data has been added.');
    }
    public function completeCounsel(){
        $students = DB::table('students')
        ->join('counselling','counselling.stu_id','=','students.stu_id')
            ->get();
            
            return view('student.counselComplete',['students'=>$students]);
    }

}
