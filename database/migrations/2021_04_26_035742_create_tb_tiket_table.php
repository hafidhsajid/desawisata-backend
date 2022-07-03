<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbTiketTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_tiket', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('kode', 3);
            $table->string('kode_tiket');
            $table->integer('user_id');
            $table->integer('tempat_id');
            $table->integer('wisata_id');
            $table->integer('jml_orang');
            $table->date('tanggal');
            $table->string('name');
            $table->string('email')->nullable();
            $table->string('telp')->nullable();

            $table->integer('harga');
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
        Schema::dropIfExists('tb_tiket');
    }
}
