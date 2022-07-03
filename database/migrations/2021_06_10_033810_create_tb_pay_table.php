<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTbPayTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_pay', function (Blueprint $table) {
            $table->string('id');
            $table->string('status_message');
            $table->string('order_id');
            $table->string('payment_type');
            $table->string('transaction_time');
            $table->string('transaction_status');
            $table->string('va_number');
            $table->string('va_bank');
            $table->string('kodeku');

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
        Schema::dropIfExists('tb_pay');
    }
}
