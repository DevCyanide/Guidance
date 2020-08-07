<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class EventInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    function insert(Request $req){

        $this -> validate($req, [
            'event_name' => 'required',
            'event_location' => 'required',
            'event_date' => 'required|after:yesterday',
            'event_start' => 'required|date_format:H:i',
            'event_end' => 'required|date_format:H:i|after:event_start',
            'event_information' => 'required',  
        ],
        ['after:event_start' => 'Start Time must be earlier than End Time', 
          'after:yesterday' =>'Enter future date']);

        $event_name = $req->input('event_name');
        $event_location = $req->input('event_location');
        $event_date = $req->input('event_date');
        $event_start = $req->input('event_start');
        $event_end = $req->input('event_end');
        $event_information = $req->input('event_information');

        $data = array('event_name' => $event_name, 'event_location' => $event_location, 'event_date' => $event_date, 'event_start' => $event_start, 'event_end' => $event_end, 'event_information' => $event_information);

        DB::table('events')->insert($data);

        return redirect()->action('EventsController@index');
  
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
    public function destroy($id)
    {
        //
    }
}
