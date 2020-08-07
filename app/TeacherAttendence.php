<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TeacherAttendence extends Model
{
    //
    protected $primaryKey='attend_id';
    protected $fillable=['a_teach_id','attend_status','attend_date'];
}
