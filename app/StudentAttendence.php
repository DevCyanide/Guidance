<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentAttendence extends Model
{
    //
    protected $primaryKey='attend_id';
    protected $fillable=['a_stu_id','attend_status','attend_date'];
}
