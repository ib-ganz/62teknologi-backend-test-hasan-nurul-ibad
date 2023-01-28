<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBusinessTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('business', function (Blueprint $table) {
            $table->string('id', 22)->primary();
            $table->string('alias', 128);
            $table->string('name', 128);
            $table->string('image_url', 256);
            $table->boolean('is_closed')->default(false);
            $table->text('url');
            $table->integer('review_count');
            $table->integer('rating');
            $table->double('latitude');
            $table->double('longitude');
            $table->float('price');
            $table->string('phone', 25);
            $table->string('display_phone', 25);
            $table->double('distance');
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
        Schema::dropIfExists('business');
    }
}
