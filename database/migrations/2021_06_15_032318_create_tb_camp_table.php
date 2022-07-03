<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbCampTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_camp', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tempat_id');
            $table->string('name');
            $table->string('jumlah_orang')->nullable();
            $table->string('deskripsi')->nullable();
            $table->string('image')->nullable();
            $table->string('harga')->nullable();
            $table->integer('status')->default(1);
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
        Schema::dropIfExists('tb_camp');
    }
}
