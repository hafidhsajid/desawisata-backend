<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbTempatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_tempat', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('user_id');
            $table->string('kategori');
            $table->string('name');
            $table->longText('deskripsi')->nullable();
            $table->string('alamat');
            $table->double('lat')->nullable();
            $table->double('lng')->nullable();
            $table->string('email')->nullable();
            $table->string('telp')->nullable();
            $table->string('sosmed', 500)->nullable();
            $table->longText('galeri')->nullable();
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
        Schema::dropIfExists('tb_tempat');
    }
}
