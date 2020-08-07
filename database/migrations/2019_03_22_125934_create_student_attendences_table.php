<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentAttendencesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_attendences', function (Blueprint $table) {
            $table->increments('attend_id');
            $table->integer('stu_id');
            $table->string('attend_status')->comment('1=present,0=absent,2=half_time')->default('0');
            $table->string('attend_date');
            $table->string('attended_by')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('student_attendences');
    }
}
