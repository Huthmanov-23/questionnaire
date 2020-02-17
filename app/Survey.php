<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Survey extends Model
{
   protected $guarded=[];


   public function questionnare(){
       return $this->belongsTo(Questionnaire::class);
   }
    public function responses(){
        return $this->hasMany(SurveyResponse::class);
    }
}
