<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->increments('id');
            $table->string('full_name');
            $table->string('father_name');
            $table->string('mother_name');
            $table->string('address');
            $table->string('mobile');
            $table->string('mobile_2');
            $table->string('adhaar_img');
            $table->string('adhaar_no');
            $table->string('salary');
            $table->string('joining_data');
            $table->string('appointment_data');
            $table->string('designation');
            $table->string('qualification');
            $table->string('experience');
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
        Schema::dropIfExists('teachers');
    }
}
