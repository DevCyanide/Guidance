<?php

use Faker\Generator as Faker;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
*/

$factory->define(App\User::class, function (Faker $faker){
    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', // secret
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\Student::class, function (Faker $faker){
    return [
        'fname' => $faker->firstName,
        'lname' => $faker->lastName,
        'father_name' => $faker->name($gender='male'),
        'mother_name' => $faker->name($gender='female'),
        'gender' => $faker->randomElement(['male', 'female']),
        'photo' => $faker->image(public_path('/imgs/stu_imgs'),300,300,'cats',false),
        'adhaar_no' => $faker->numberBetween($min = 1111, $max = 9999),
        'adhaar_img' => $faker->image(public_path('/imgs/adhaar_imgs'),300,300,'sports',false),
        'blood_group' => $faker->randomElement(['O', 'B','B+','AB','AB-']),
        'blood_group_img' => $faker->image(public_path('/imgs/bg_imgs'),300,300,'business',false),
        'mobile_no' => $faker->phoneNumber,
        'alternate_mobile_no' => $faker->phoneNumber,
        'email_id' => $faker->email,
        'class' => $faker->randomElement(['nur', 'lkg','ukg','1','2','3','4','5','6','7','8','9','10','11','12']),
        'roll_no' => $faker->numberBetween($min = 99, $max = 999),
        'reg_date' => $faker->date($format = 'd/m/Y', $max = 'now'),
        'reg_no' => $faker->numberBetween($min = 999, $max = 9999),
        'address' => $faker->address,
        'extra_note' => $faker->realText($maxNbChars = 50, $indexSize = 2)
    ];
});

// Student Attendence
$factory->define(App\StudentAttendence::class, function (Faker $faker){
    return [
        'a_stu_id' => App\Student::all()->random()->stu_id,
        'attend_status' => $faker->randomElement(['0', '1']),
        'attend_date' => $faker->date($format = 'd/m/Y', $max = 'now')
    ];
});
