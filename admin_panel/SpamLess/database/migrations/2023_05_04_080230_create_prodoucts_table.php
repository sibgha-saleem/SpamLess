<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProdouctsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prodoucts', function (Blueprint $table) {
            $table->increments('id');
            $table->text('name');
            $table->integer('categor_id');
            $table->integer('no_of_reviews')->nullable();
            $table->text('overall_rating')->nullable();
            $table->text('picture')->nullable();
            $table->integer('created_by');

            $table->timestamps();
            $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('categor_id')->references('id')->on('categories')->onDelete('cascade');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('prodoucts');
    }
}
