<?php

namespace Database\Seeders;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class tb_RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tb_role')->insert([
            'id' => '1',
            'name' => 'Admin',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('tb_role')->insert([
            'id' => '2',
            'name' => 'wisata',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('tb_role')->insert([
            'id' => '3',
            'name' => 'restaurant',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('tb_role')->insert([
            'id' => '4',
            'name' => 'hotel',
            'created_at' => \Carbon\Carbon::now(),
        ]);
        DB::table('tb_role')->insert([
            'id' => '5',
            'name' => 'pelanggan',
            'created_at' => \Carbon\Carbon::now(),
        ]);
    }
}
