<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateColumnsTolocationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('location', function (Blueprint $table) {
            $table->text('address1')->nullable()->change();
            $table->text('address2')->nullable()->change();
            $table->text('address3')->nullable()->change();
            $table->string('city', 100)->nullable()->change();
            $table->string('zip_code', 15)->nullable()->change();
            $table->string('country', 50)->nullable()->change();
            $table->string('state', 50)->nullable()->change();
            $table->json('display_address')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
