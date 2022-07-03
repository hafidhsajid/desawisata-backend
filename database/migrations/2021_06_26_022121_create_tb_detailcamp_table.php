<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbDetailcampTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_detailcamp', function (Blueprint $table) {
            $table->id();
            $table->string('kode_tiket')->nullable();
            $table->string('name');
            $table->string('user_id');
            $table->string('tempat_id');
            $table->string('tempat_name');
            $table->string('makan_durasi');
            $table->string('date');
            $table->string('jumlah_orang');
            $table->string('makan');
            $table->string('durasi');
            $table->string('jumlah_tenda')->nullable();
            $table->string('harga');
            $table->string('status');
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
        Schema::dropIfExists('tb_detailcamp');
    }
}
