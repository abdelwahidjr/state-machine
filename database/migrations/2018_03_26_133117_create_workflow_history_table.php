<?php
    
    use Illuminate\Support\Facades\Schema;
    use Illuminate\Database\Schema\Blueprint;
    use Illuminate\Database\Migrations\Migration;
    
    class CreateWorkflowHistoryTable extends Migration
    {
        public function up()
        {
            Schema::create('workflow_history',function (Blueprint $table) {
                $table->increments('id');
                $table->morphs('model');
                $table->text('current_state');
                $table->string('workflow_name');
                $table->text('comment')->nullable();
                $table->unsignedinteger('user_id');
                $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
                $table->timestamps();
    
            });
        }
        
        public function down()
        {
            Schema::dropIfExists('workflow_history');
        }
    }
