<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Admin;
use Session;
class AdminController extends Controller
{
    // Admin Login
    function login(){
        Session::forget('adminLoggedIn');
        return view('admin-login');
    }
    // Admin Logout
    function logout(){
        Session::forget('adminLoggedIn');
        return redirect('admin/login');
    }
    // Submit Login
    function submit_login(Request $request){

        if(empty($request->user) || empty($request->pwd)){
            return redirect('admin/login')->with('missing','Please fill all empty fields');
        }
        
     $request->validate([
            'user'=>'required',
            'pwd'=>'required'
        ]);
        $adminCount=Admin::where(['admin'=>$request->user,'pwd'=>$request->pwd])->count();
        if($adminCount>0){
            $adminData=DB::table('admins')->where(['admin'=>$request->user,'pwd'=>$request->pwd])->get();
            Session::put('adminLoggedIn',true);
            Session::put(['adminData'=>$adminData]);
            return redirect('dashboard');
        }else{
            return redirect('admin/login')->with('invalid','Invalid Username/Password!!');
        }
    }
    function Register(){
        return view('admin-register');
    }
    function submit_register(Request $request){
        $request->validate([
            'admin'=>'required',
            'pwd'=>'required',
            'firstname'=>'required',
            'lastname'=>'required',
            'pwdreset'=>'required'
        ]);
        if($request->pwd==$request->pwdreset){
        $admin=new Admin;
        $admin->pwd=$request->pwd;
        $admin->admin=$request->admin;
        $admin->f_name=$request->firstname;
        $admin->l_name=$request->lastname;
        $admin->role='admin';
        $admin->save();
        return redirect('admin/login')->with('account','Succefully Created Account!');
        }
        else{
            return redirect('admin/register')->with('password','Password does not match');
        }

    }
}