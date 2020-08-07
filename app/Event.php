<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $table = 'events';

    public $primaryKey = 'event_id';

    public $timestamps =false;

    protected $fillable = ['event_id', 'event_name','event_location','event_date','event_start','event_end','event_information'];

}
