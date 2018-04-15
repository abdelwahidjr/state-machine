<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use troojaan\SM\WorkflowHistory;

class Order extends Model
{
    protected $fillable = ['title', 'state'];

    protected $casts = [
      'state' => 'array'
    ];

    public function workflow_history()
    {
        return $this->morphMany(WorkflowHistory::class, 'model');
    }
}
