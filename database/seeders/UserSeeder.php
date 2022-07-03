<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('admin@gmail.com'),
            'role_id' => '1',
            'petugas_id' => 'D001',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('users')->insert([
            'name' => 'restauranta',
            'email' => 'restauranta@gmail.com',
            'password' => Hash::make('restauranta@gmail.com'),
            'role_id' => '3',
            'petugas_id' => 'D002',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('users')->insert([
            'name' => 'wisataa',
            'email' => 'wisataa@gmail.com',
            'password' => Hash::make('wisataa@gmail.com'),
            'role_id' => '2',
            'petugas_id' => 'D003',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('users')->insert([
            'name' => 'hotela',
            'email' => 'hotela@gmail.com',
            'password' => Hash::make('hotela@gmail.com'),
            'role_id' => '4',
            'petugas_id' => 'D004',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('users')->insert([
            'name' => 'customer',
            'email' => 'customer@gmail.com',
            'password' => Hash::make('customer@gmail.com'),
            'role_id' => '5',
            'petugas_id' => 'D005',
            'created_at' => \Carbon\Carbon::now(),
        ]);
    }
}
