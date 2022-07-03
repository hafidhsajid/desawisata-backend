<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbEventTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_event', function (Blueprint $table) {
            $table->id();
            $table->string('kode_event');
            $table->string('nama');
            $table->string('deskripsi');
            $table->string('lokasi');
            $table->string('waktu_mulai');
            $table->string('waktu_selesai');
            $table->string('jam_buka');
            $table->string('jam_tutup');
            $table->string('harga');
            $table->string('foto');
            $table->integer('kapasitas_awal');
            $table->integer('kapasitas_akhir');
            $table->integer('status')->default(1);
            $table->foreignId('kategorievent_id');
            $table->foreignId('tempat_id');
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
        Schema::dropIfExists('tb_event');
    }
}
