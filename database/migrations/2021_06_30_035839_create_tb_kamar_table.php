<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbKamarTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_kamar', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('tempat_id');
            $table->string('name');
            $table->string('image')->nullable();
            $table->string('harga')->nullable();
            $table->string('kapasitas')->nullable();
            $table->string('jumlah')->nullable();
            $table->string('type')->nullable();
            $table->string('deskripsi')->nullable();
            $table->string('deskripsi_harga')->nullable();
            $table->integer('status')->default(0);
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
        Schema::dropIfExists('tb_room');
    }
}
