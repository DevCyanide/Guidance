<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function index(){
        $title = "Guidance Integrated System";
        return view('Teacher.index',compact('title')) ;
    }
    public function about(){
        return view('pages.about');
    }
    public function edit(){
        return view('Teacher.admin_edit');
    }
    public function login(){
        return view('pages.login');
    }
    public function contact(){
        return view('pages.contact');
    }
    public function info(){
        return view('Teacher.admin_studInfo');
    }
    public function tardiness(){
        return view('Teacher.admin_tardiness');
    }
    public function absents(){
    return view('Teacher.admin_absents');
    }
    public function events(){
        return view('Teachers.admin_events');
    }
    public function eventInfo(){
        return view ('Teacher.admin_eventInfo');
    }
    

}
