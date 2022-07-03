<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbDetailbookingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_detailbooking', function (Blueprint $table) {
            $table->id();
            $table->string('kode_tiket')->nullable();
            $table->string('kode_booking')->nullable();
            $table->string('name');
            $table->string('user_id');
            $table->string('tempat_id');
            $table->string('tempat_name');
            $table->string('checkin');
            $table->string('checkinn')->nullable();
            $table->string('checkout');
            $table->string('checkoutt')->nullable();
            $table->string('jumlah_orang');
            $table->string('kamar_id');
            $table->string('jumlah_kamar');
            $table->string('durasi');
            $table->string('subtotal');
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
        Schema::dropIfExists('tb_detailbooking');
    }
}
