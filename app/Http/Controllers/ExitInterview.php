<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Student;
use App\StudentAttendence;
use App\Exits;


class ExitInterview extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $students=DB::table('students as s')
        ->get();
        return view('student.Exit',['students'=>$students]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $student=Student::find($id);
        return view('student.Exitform',['student'=>$student]);
    
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
        // return dd($request);

        $request->validate([
            'question1'=>'required',
            'question2'=>'required',
            'Oppurtunities'=>'required',
            'Treatment'=>'required',
            'Recognition'=>'required',
            'Problems'=>'required',
            'feedback'=>'required',
            'development'=>'required',
            'Working'=>'required',
            'Concern'=>'required',
            'Correction'=>'required',
            'Activities'=>'required',
            'Responsibilities'=>'required',
            'Performance'=>'required',
            'question5'=>'required',
            'challenge'=>'required',
            'Recommend'=>'required',
            'Suggestion'=>'required',
        ]);
       
        $Exit =new Exits;
        $Exit->question1=$request->question1;
        $Exit->question2=$request->question2;
        $Exit->Oppurtunities=$request->Oppurtunities;
        $Exit->Treatment=$request->Treatment;
        $Exit->Recognition=$request->Recognition;
        $Exit->Problems=$request->Problems;
        $Exit->Feedback=$request->feedback;
        $Exit->Development=$request->development;
        $Exit->Working=$request->Working;
        $Exit->Concern=$request->Concern;
        $Exit->Correction=$request->Correction;
        $Exit->Activities=$request->Activities;
        $Exit->Responsibilities=$request->Responsibilities;
        $Exit->Performance=$request->Performance;
        $Exit->question5=$request->question5;
        $Exit->Higher_Education=$request->Higher_Education;
        $Exit->Target_School=$request->Target_School;
        $Exit->Course=$request->Course;
        $Exit->Entreprenuership=$request->Entrepreneurship;
        $Exit->Business=$request->Business;
        $Exit->Employment=$request->Employment;
        $Exit->Nature=$request->Nature;
        $Exit->Workplace=$request->Workplace;
        $Exit->Middleskill=$request->Middleskill;
        $Exit->Skills=$request->skills;
        $Exit->Training=$request->Training;
        $Exit->Challenge=$request->challenge;
        $Exit->Recommend=$request->Recommend;
        $Exit->Suggestion=$request->Suggestion;
        $Exit->stu_id=$id;
        $Exit->save();

        $student=Student::find($id);
        $student->status="exited";
        $student->save();

        return redirect('Exit/Form/create/'.$id)->with('success','Student has been updated.');
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function Exitedit($id){
        $students = DB::table('students')
        ->join('exitinterview','exitinterview.stu_id','=','students.stu_id')
        ->where('students.stu_id', '=', $id)
        ->get();
        // return $students;

        return view('student.Exitedit',['students'=>$students]);
    }
}
