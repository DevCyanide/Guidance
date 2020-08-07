<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->increments('stu_id');
            $table->string('fname');
            $table->string('lname');
            $table->string('father_name');
            $table->string('mother_name');
            $table->string('gender');
            $table->string('photo');
            $table->string('adhaar_no');
            $table->string('adhaar_img');
            $table->string('blood_group');
            $table->string('blood_group_img');
            $table->string('mobile_no');
            $table->string('alternate_mobile_no');
            $table->string('email_id');
            $table->string('class');
            $table->string('roll_no');
            $table->string('reg_date');
            $table->string('reg_no');
            $table->string('address');
            $table->string('extra_note');
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
        Schema::dropIfExists('students');
    }
}
