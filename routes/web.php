<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/Route::get('Exit','ExitInterview@index');
Route::get('Exit/Form/create/{id}','ExitInterview@edit');
Route::post('Exit/Form/create/{id}','ExitInterview@update');
Route::get('Exit/Form/edit/{id}','ExitInterview@Exitedit');
// Route::get('counsel/destroy/{id}','Counsel@destroy');
Route::get('student/logs','StudentController@logs');

Route::get('counsel/pending','Counsel@index');
Route::get('counsel/complete','Counsel@completeCounsel');

Route::post('counsel/pending/create','Counsel@create');
Route::post('counsel/pending/create/create','Counsel@store');
Route::get('counsel/detail/{id}','Counsel@show');
Route::get('counsel/start/{id}/{id2}','Counsel@start');
Route::post('counsel/start/create/{id}/{id2}','Counsel@createcounsel');
Route::get('dashboard', function () {
    return view('student.dashboardd');
});
Route::get('dashboard','dashboard@index');
Route::post('visit/create/{id}','StudentController@Visit');
Route::get('admission','StudentController@call');

Route::get('admission/history','StudentController@admissionhistory');
Route::post('admission/create/{id}','StudentController@Admission');


// Route::get('counsel/pending', function () {
//     return view('student.counselPending');
// });

Route::get('late', function () {
    return view('student.late');
});
Route::get('attendance', function () {
    return view('student.attendance');
});


Route::get('/','AdminController@login');
Route::get('admin/register','AdminController@Register');
Route::post('admin/submit-register','AdminController@submit_register');

// Login Routing
Route::get('admin/login','AdminController@login');
Route::get('admin/logout','AdminController@logout');
Route::post('admin/submit-login','AdminController@submit_login');

// Student Routing
Route::get('students','StudentController@index');
Route::get('students/graduate','StudentController@grad');
Route::get('student/create','StudentController@create');
Route::post('student/create','StudentController@store');
Route::get('student/update/{id}','StudentController@edit');
Route::post('student/update/{id}','StudentController@update');
Route::get('student/delete/{id}','StudentController@destroy');
Route::get('student/classes','StudentController@student_classes');
Route::get('student/class/{class}','StudentController@specific_class');
Route::get('student/detail/{id}','StudentController@show');
Route::get('student/fees-card/delete/{stuid}/{feesid}','StudentController@delete_fees');
Route::get('student/counsel/{stu_id}','StudentController@Counselling');
Route::get('student/classes/late/{section}','StudentController@lateindex');


// Attendence Sheet
Route::get('student/attendence/{class}','StudentController@attendence_sheet');
// Subject
Route::get('student/subject/{subject}','StudentController@class_subjects');
Route::post('student/subject/{subject}','StudentController@add_subject');
// Fees Card
Route::get('student/fees-card/{stu_id}','StudentController@fees_card');
Route::post('student/fees-card/{stu_id}','StudentController@add_fees');
// Result Card
Route::get('student/result-card/{stu_id}','StudentController@result_card');
Route::post('student/result-card/{stu_id}','StudentController@add_result');
// Class Result
Route::get('class/result/{class_id}','StudentController@class_result');
// Attendence
Route::post('api/attendence','StudentController@add_attendence');

// Teachers
Route::get('teachers','TeacherController@index');
Route::get('teacher/create','TeacherController@create');
Route::post('teacher/create','TeacherController@store');
Route::get('teacher/update/{id}','TeacherController@edit');
Route::post('teacher/update/{id}','TeacherController@update');
Route::get('teacher/delete/{id}','TeacherController@destroy');
Route::get('teacher/detail/{id}','TeacherController@show');
Route::get('teacher/salary-card/delete/{teachid}/{salaryid}','TeacherController@delete_salary');
// Attendence Sheet
Route::get('teacher/attendence','TeacherController@attendence_sheet');
// Attendence
Route::post('api/teacher/attendence','TeacherController@add_attendence');

// Fees Card
Route::get('teacher/salary-card/{teach_id}','TeacherController@salary_card');
Route::post('teacher/salary-card/{teach_id}','TeacherController@add_salary');

Route::get('/tardiness','PagesController@attendance');
Route::get('/absents','PagesController@absents');
Route::get('student/eventInformation', 'PagesController@eventInfo');

Route::get('getLate','AttendanceController@getLate')->name('get.late');
Route::get('getAbsent','AttendanceController@getAbsent')->name('get.absent');
Route::get('/attendance/pdf','AttendanceController@pdf');


Route::resource('posts','PostsController');
Route::resource('students','StudentController');
Route::resource('attendance', 'AttendanceController');
Route::post('counsel/destroy', 'Counsel@destroy');
Route::resource('student/events', 'EventsController');
Route::post('student/insert', 'EventInfoController@insert');
Route::post('/uploadFile', 'EventsController@uploadFile');